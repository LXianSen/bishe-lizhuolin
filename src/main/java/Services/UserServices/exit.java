package Services.UserServices;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.RespectBindingFeature;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class exit
 */
@WebServlet("/exit")
public class exit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public exit() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		PrintWriter writer=response.getWriter();
		session.removeAttribute("user");
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("code", "200");
		writer.println(jsonObject);
				
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
