package jdbc05;

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
import jdbc02.bean.Supplier;
import jdbc04.dao.CustomerDAO;
import jdbc04.dao.SupplierDAO;

/**
 * Servlet implementation class JDBC22ServletCustomer
 */
@WebServlet("/jdbc05/s22customer")
public class JDBC22ServletCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC22ServletCustomer() {
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
				List<String> list = null;
				boolean ok = false;

				// 0. 사전작업
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
				String path = "/WEB-INF/view/jdbc05/v22customer.jsp";
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
				CustomerDAO dao = new CustomerDAO();
				request.setCharacterEncoding("utf-8");
				boolean ok = false;

				// 2. request 분석가공
				String customerName = request.getParameter("customerName");
				String contactName = request.getParameter("contactName");
				String address = request.getParameter("address");
				String city = request.getParameter("city");
				String postalCode = request.getParameter("postalCode");
				String country = request.getParameter("country");

				Customer cus = new Customer();

				cus.setCustomerName(customerName);
				cus.setContactName(contactName);
				cus.setAddress(address);
				cus.setCity(city);
				cus.setPostalCode(postalCode);
				cus.setCountry(country);

				// 3. business 로직
				// dao.insert("kim ....."); XXXXX
				try (Connection con = ds.getConnection()) {
					dao.insert(con, cus);
				} catch (Exception e) {
					e.printStackTrace();
				}
				// 4. add Attribute

				// 0. 사전작업
				List<Customer> s = new ArrayList<>();
				// 3. business logic
				try (Connection con = ds.getConnection();) {
					s = dao.getAllCustomer(con);
				} catch (Exception e) {
					e.printStackTrace();
				}

				// 4. add attribute
				request.setAttribute("customerList", s);

				// 5. forward/redirect
				String path = "/WEB-INF/view/jdbc05/v22customerlist.jsp";
				request.getRequestDispatcher(path).forward(request, response);
	}

}
