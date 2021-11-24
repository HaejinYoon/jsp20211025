package jdbc06;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Supplier;
import jdbc04.dao.SupplierDAO;

/**
 * Servlet implementation class JDBC26Servlet
 */
@WebServlet("/jdbc06/s26")
public class JDBC26Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC26Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		SupplierDAO dao = new SupplierDAO();
		boolean ok = false;
		Supplier supplier = new Supplier();
		List<String> list = null;
		
		int id = Integer.parseInt(request.getParameter("id"));
//		supplier.setSupplierName("Samsung");
//		supplier.setContactName("SamsungElec");
//		supplier.setAddress("Dongtan");
//		supplier.setCity("Suwon");
//		supplier.setPostalCode("239149");
//		supplier.setCountry("Korea");
//		supplier.setPhone("0312456352");
//		supplier.setSupplierID(108);
		
		try(Connection con = ds.getConnection()) {
			supplier = (Supplier) dao.getSupplierByID(con, id); 
			list=dao.getCountryList(con);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("supp", supplier);
		request.setAttribute("countryList", list);
		
		String path="/WEB-INF/view/jdbc06/v26.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		SupplierDAO dao = new SupplierDAO();
		boolean ok = false;
		
		Supplier supplier = new Supplier();
		
		supplier.setSupplierName(request.getParameter("supplierName"));
		supplier.setContactName(request.getParameter("contactName"));
		supplier.setAddress(request.getParameter("address"));
		supplier.setCity(request.getParameter("city"));
		supplier.setPostalCode(request.getParameter("postalCode"));
		supplier.setCountry(request.getParameter("country"));
		supplier.setPhone(request.getParameter("phone"));
		supplier.setSupplierID((Integer.parseInt(request.getParameter("index"))));
		
		try(Connection con = ds.getConnection()) {
			ok = dao.update(con, supplier); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String path="/WEB-INF/view/jdbc05/v22list.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

}
