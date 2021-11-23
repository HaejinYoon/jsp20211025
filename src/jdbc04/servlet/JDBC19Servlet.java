package jdbc04.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

import jdbc02.bean.Customer;
import jdbc04.dao.CustomerDAO;

/**
 * Servlet implementation class JDBC19Servlet
 */
@WebServlet("/jdbc04/s19")
public class JDBC19Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC19Servlet() {
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
		CustomerDAO dao = new CustomerDAO();
		List<Customer> list = new ArrayList<>();
		List<String> cusCountryList = new ArrayList<>();
		
		try(Connection con = ds.getConnection();){		
			
			// 2. request 분석/가공
			String country = request.getParameter("country");
	
			// 3. business logic
			// 3.1
			cusCountryList = dao.getCountryList(con);
			// 3.2
			list = dao.getCustomerListByCountry(con, country);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 4. add attribute
		request.setAttribute("customers", list);
		request.setAttribute("cusCountryList", cusCountryList);
		// 5. forward
		String path = "/WEB-INF/view/jdbc03/v18.jsp";
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
