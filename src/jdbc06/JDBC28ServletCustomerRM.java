package jdbc06;

import java.io.IOException;
import java.sql.Connection;
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
 * Servlet implementation class JDBC28ServletCustomerRM
 */
@WebServlet("/jdbc06/s28rcustomerm")
public class JDBC28ServletCustomerRM extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC28ServletCustomerRM() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		CustomerDAO dao = new CustomerDAO();
		List<Customer> s = new ArrayList<>();
		request.setCharacterEncoding("utf-8");
		boolean ok = false;
		
		// 2. 가공
		String idStr = request.getParameter("id");
		int customerID = Integer.parseInt(idStr);
		
		// 3. business logic
		try (Connection con = ds.getConnection()){
			ok = dao.deleteById(con, customerID);
			s = dao.getAllCustomer(con);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 4. add attribute
		request.setAttribute("customerList", s);
		
		// 5. forward
		String path="/WEB-INF/view/jdbc05/v22customerlist.jsp";
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
