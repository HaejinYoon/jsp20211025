package jdbc02.servlet1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Employee;
import jdbc02.bean.Supplier;

/**
 * Servlet implementation class JDBC10Servlet
 */
@WebServlet("/jdbc02/s10")
public class JDBC10Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC10Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		List<Supplier> list = new ArrayList<>();
		
		// 2. request 분석/가공

		// 3. business logic
		String sql = "SELECT\r\n" + 
				"	SupplierID, \r\n" + 
				"	SupplierName, \r\n" + 
				"	ContactName, \r\n" + 
				"	Address,\r\n" + 
				"	City,\r\n" + 
				"	PostalCode,\r\n" + 
				"	Country,\r\n" + 
				"	Phone\r\n " + 
				" FROM\r\n" + 
				"	Suppliers;";

		try (
			Connection con = ds.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
				){
			
			while (rs.next()) {
				Supplier supp = new Supplier();
				int i = 1;

				supp.setSupplierID(rs.getInt(i++));
				supp.setSupplierName(rs.getString(i++));
				supp.setContactName(rs.getString(i++));
				supp.setAddress(rs.getString(i++));
				supp.setCity(rs.getString(i++));
				supp.setPostalCode(rs.getString(i++));
				supp.setCountry(rs.getString(i++));
				supp.setPhone(rs.getString(i++));
				
				list.add(supp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		// 4. add attribute
		request.setAttribute("suppliers", list);

		// 5. forward / redirect
		String path = "/WEB-INF/view/jdbc02/v10.jsp";
		request.getRequestDispatcher(path).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
