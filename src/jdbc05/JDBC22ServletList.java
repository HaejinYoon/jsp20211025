package jdbc05;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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
 * Servlet implementation class JDBC22Servlet
 */
@WebServlet("/jdbc05/s22list")
public class JDBC22ServletList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC22ServletList() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		SupplierDAO dao = new SupplierDAO();
		List<Supplier> s = null;
		boolean ok = false;
//
//		// 2. request 분석가공
//		Supplier supp = new Supplier();
//		supp.setSupplierName("General");
//		supp.setContactName("AirForce");
//		supp.setAddress("Gyeryoung");
//		supp.setCity("Daejoen");
//		supp.setPostalCode("123456");
//		supp.setCountry("Korea");
//		supp.setPhone("+82422998384");
//		
//		// 3. business 로직
//		// dao.insert("kim ....."); XXXXX
//		try (Connection con = ds.getConnection()) {
//			dao.insert(con, supp);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		// 4. add Attribute
//
//		// 5. forward/redirect
		// 0. 사전작업


		// 2. request 분석/가공
//		String id = request.getParameter("customerID");

		// 3. business logic

		try (Connection con = ds.getConnection();) {
			s = dao.getAllSuppliers(con);

		} catch (Exception e) {
			e.printStackTrace();
		}

		// 4. add attribute
		request.setAttribute("supplierList", s);

		// 5. forward
		String path = "/WEB-INF/view/jdbc05/v22list.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String path = "/WEB-INF/view/jdbc05/v22list.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

}
