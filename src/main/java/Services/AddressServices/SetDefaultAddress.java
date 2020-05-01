package Services.AddressServices;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AddressDao;
import MODEL.address;


@WebServlet("/SetDefaultAddress")
public class SetDefaultAddress extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SetDefaultAddress() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			AddressDao addressDao=new AddressDao();
			address oldAddress=new address();
			address newAddress=new address();
			oldAddress.setAddressid(request.getParameter("addressid"));
			newAddress.setIsdefault(request.getParameter("isdefault"));
			addressDao.updates(newAddress, oldAddress);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
