package Services.AddressServices;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import DAO.AddressDao;
import MODEL.bs_area;
import MODEL.bs_city;
import MODEL.bs_province;
import MODEL.bs_street;

@WebServlet("/ChoosePCS")
public class ChoosePCS extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ChoosePCS() {
        super();
    }
    
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
		try {
			Gson gson=new Gson();
			PrintWriter out=response.getWriter();
			AddressDao addressDao=new AddressDao();
			bs_province province=new bs_province();
			bs_city city=new bs_city();
			bs_area area=new bs_area();
			bs_street street=new bs_street();
			if(request.getParameter("p")!=null&&!"".equals(request.getParameter("p"))) {
				city.setPROVINCE_CODE(request.getParameter("p"));
				List<bs_city> cityList=addressDao.selects(city);
				out.println(gson.toJson(cityList));
			}else if(request.getParameter("c")!=null&&!"".equals(request.getParameter("c"))) {
				area.setCITY_CODE(request.getParameter("c"));
				List<bs_area> areaList=addressDao.selects(area);
				out.println(gson.toJson(areaList));
			}else if(request.getParameter("a")!=null&&!"".equals(request.getParameter("a"))) {
				street.setAREA_CODE(request.getParameter("a"));
				List<bs_street> streetList=addressDao.selects(street);
				out.println(gson.toJson(streetList));
			}else {
				List<bs_province> provinceList=addressDao.selects(province);
				out.println(gson.toJson(provinceList));
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			
	}



	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
