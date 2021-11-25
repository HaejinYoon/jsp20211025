package jdbc05;

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

import jdbc02.bean.Customer;
import jdbc02.bean.Supplier;
import jdbc04.dao.CustomerDAO;
import jdbc04.dao.SupplierDAO;

/**
 * Servlet implementation class JDBC22ServletCustomerlist
 */
@WebServlet("/jdbc05/s22customerlist")
public class JDBC22ServletCustomerlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC22ServletCustomerlist() {
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
				List<Customer> s = null;
				boolean ok = false;

				// 0. 사전작업

				// 2. request 분석/가공

				// 3. business logic

				try (Connection con = ds.getConnection();) {
					s = dao.getAllCustomer(con);

				} catch (Exception e) {
					e.printStackTrace();
				}

				// 4. add attribute
				request.setAttribute("customerList", s);

				// 5. forward
				String path = "/WEB-INF/view/jdbc05/v22customerlist.jsp";
				request.getRequestDispatcher(path).forward(request, response);
			}

			/**
			 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
			 *      response)
			 */
			protected void doPost(HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {
				
				String path = "/WEB-INF/view/jdbc05/v22customerlist.jsp";
				request.getRequestDispatcher(path).forward(request, response);
	}

}
