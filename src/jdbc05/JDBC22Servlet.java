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
@WebServlet("/jdbc05/s22")
public class JDBC22Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC22Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// get Country List from DB
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		SupplierDAO dao = new SupplierDAO();
		List<String> list = null;
		boolean ok = false;
		// 2. request 분석/가공
		// 3. business logic
		try (Connection con = ds.getConnection();) {
			list = dao.getCountryList(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 4. add attribute		
		request.setAttribute("countryList", list);
		// 5. forward
		String path = "/WEB-INF/view/jdbc05/v22.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Insert Supplier Information to DB
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		SupplierDAO dao = new SupplierDAO();
		request.setCharacterEncoding("utf-8");
		boolean ok = false;

		// 2. request 분석가공
		String supplierName = request.getParameter("supplierName");
		String contactName = request.getParameter("contactName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String postalCode = request.getParameter("postalCode");
		String country = request.getParameter("country");
		String phone = request.getParameter("phone");

		Supplier supp = new Supplier();

		supp.setSupplierName(supplierName);
		supp.setContactName(contactName);
		supp.setAddress(address);
		supp.setCity(city);
		supp.setPostalCode(postalCode);
		supp.setCountry(country);
		supp.setPhone(phone);

		// 3. business 로직
		// dao.insert("kim ....."); XXXXX
		try (Connection con = ds.getConnection()) {
			dao.insert(con, supp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 4. add Attribute
		// 5. forward/redirect
		String path = "/jdbc05/s22list";
		request.getRequestDispatcher(path).forward(request, response);
	}

}
