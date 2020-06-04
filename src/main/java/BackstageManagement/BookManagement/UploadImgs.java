package BackstageManagement.BookManagement;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.FileItem;

@WebServlet("/UploadImgs")
public class UploadImgs extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UploadImgs() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//      ���ñ��뷽ʽ
      request.setCharacterEncoding("utf-8");
      response.setCharacterEncoding("gb2312");

//      �������
      PrintWriter outprint = response.getWriter();

//      �����ļ�Ŀ¼
      String webroot = this.getServletContext().getRealPath("/");
      File temppath = new File(webroot + "fileuploadtemp");
      String dir = webroot+ File.separator + "upload";
      File path = new File(webroot+ File.separator + "upload");
      if (!temppath.exists()) {
          temppath.mkdirs();
      }
      if (!path.exists()) {
          path.mkdirs();
      }

//    �����ļ�����(���ڿ������ļ�����)
      String[] type= new String[]{".jpg",".png",".jpeg",".gif"};

//    �����ļ����
      DiskFileItemFactory factory = new DiskFileItemFactory(1024 * 1024,
              temppath);
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setFileSizeMax(1024 * 1024 * 10);
      try {
          List<org.apache.commons.fileupload.FileItem> fileItems = upload.parseRequest(request);
          Iterator<org.apache.commons.fileupload.FileItem> it = fileItems.iterator();

//          ����request file
          while (it.hasNext()) {
              org.apache.commons.fileupload.FileItem fi = it.next();
//              �жϸñ�Ϊ��ͨ������
              if (fi.isFormField()) {
                  System.out.println("�ֶ�����" + fi.getFieldName());
                  System.out.println("�ֶ�ֵ��" + fi.getString());
              } else {
                  InputStream in = fi.getInputStream();
                  String name = fi.getName();//����ļ�ԭ��

//                  �õ��ļ���׺��
                  int index = name.lastIndexOf(".");
                  String endWith = name.substring(index);

//                  �ж��Ƿ��������
                  boolean TypeExists = Arrays.asList(type).contains(endWith);
                  if (!TypeExists) {
                      outprint.print("<script>\n" +
                              "alert(\"�ļ����ʹ���ֻ����jpg,png,jpeg,gif\");location=\"fileup.html\";\n" +
                              "</script>");
                      return;
                      }

                      String newFimeName = System.currentTimeMillis() + endWith;//���ļ���

//                  �����ϴ��ļ�
                      FileOutputStream out = new FileOutputStream(new File(
                              dir + "/" + newFimeName));

                      byte buffer[] = new byte[1024];
                      int len = 0;
                      while ((len = in.read(buffer)) > 0) {
                          out.write(buffer, 0, len);//д���С
                      }
                      in.close();
                      out.close();
                      fi.delete();
                      outprint.print("�ϴ��ɹ�");
                  }
              }
          } catch(FileUploadException e){
              response.getWriter().write(e.toString());
          }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
