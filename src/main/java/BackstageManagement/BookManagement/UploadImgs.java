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
//      设置编码方式
      request.setCharacterEncoding("utf-8");
      response.setCharacterEncoding("gb2312");

//      设置输出
      PrintWriter outprint = response.getWriter();

//      设置文件目录
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

//    设置文件类型(后期可新增文件类型)
      String[] type= new String[]{".jpg",".png",".jpeg",".gif"};

//    创建文件项工厂
      DiskFileItemFactory factory = new DiskFileItemFactory(1024 * 1024,
              temppath);
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setFileSizeMax(1024 * 1024 * 10);
      try {
          List<org.apache.commons.fileupload.FileItem> fileItems = upload.parseRequest(request);
          Iterator<org.apache.commons.fileupload.FileItem> it = fileItems.iterator();

//          遍历request file
          while (it.hasNext()) {
              org.apache.commons.fileupload.FileItem fi = it.next();
//              判断该表单为普通表单类型
              if (fi.isFormField()) {
                  System.out.println("字段名：" + fi.getFieldName());
                  System.out.println("字段值：" + fi.getString());
              } else {
                  InputStream in = fi.getInputStream();
                  String name = fi.getName();//获得文件原名

//                  得到文件后缀名
                  int index = name.lastIndexOf(".");
                  String endWith = name.substring(index);

//                  判断是否符合类型
                  boolean TypeExists = Arrays.asList(type).contains(endWith);
                  if (!TypeExists) {
                      outprint.print("<script>\n" +
                              "alert(\"文件类型错误，只允许jpg,png,jpeg,gif\");location=\"fileup.html\";\n" +
                              "</script>");
                      return;
                      }

                      String newFimeName = System.currentTimeMillis() + endWith;//新文件名

//                  创建上传文件
                      FileOutputStream out = new FileOutputStream(new File(
                              dir + "/" + newFimeName));

                      byte buffer[] = new byte[1024];
                      int len = 0;
                      while ((len = in.read(buffer)) > 0) {
                          out.write(buffer, 0, len);//写入大小
                      }
                      in.close();
                      out.close();
                      fi.delete();
                      outprint.print("上传成功");
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
