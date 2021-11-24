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
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		SupplierDAO dao = new SupplierDAO();
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

		// 0. 사전작업
		List<Supplier> s = new ArrayList<>();

		Supplier sup = new Supplier();

		// 2. request 분석/가공

		// 3. business logic
		// sql injection 방지 : preparedstatement
		String sql = "SELECT SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country, phone "
				+ "FROM Suppliers";

		try (Connection con = ds.getConnection(); PreparedStatement stmt = con.prepareStatement(sql);) {
//			stmt.setInt(1, Integer.parseInt(id)); // parameter1 : ? 위치, parameter2 : 값

			try (ResultSet rs = stmt.executeQuery()) {
				dao.getAllSuppliers(con);

				while (rs.next()) {

					int i = 1;
					sup.setSupplierID(rs.getInt(i++));
					sup.setSupplierName(rs.getString(i++));
					sup.setContactName(rs.getString(i++));
					sup.setAddress(rs.getString(i++));
					sup.setCity(rs.getString(i++));
					sup.setPostalCode(rs.getString(i++));
					sup.setCountry(rs.getString(i++));
					sup.setPhone(rs.getString(i++));
					s.add(sup);
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 4. add attribute
		request.setAttribute("supplierList", s);
		

		// 3. business logic

		try (Connection con = ds.getConnection();) {
			s = dao.getAllSuppliers(con);

		} catch (Exception e) {
			e.printStackTrace();
		}

		// 4. add attribute
		request.setAttribute("supplierList", s);

		// 5. forward/redirect
		String path = "/WEB-INF/view/jdbc05/v22list.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

}
