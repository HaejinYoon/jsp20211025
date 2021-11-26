package jdbc08;

import java.io.IOException;
import java.sql.Connection;
import java.time.LocalDate;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc08.bean.Bean11;
import jdbc08.dao.MyTable11Dao;

/**
 * Servlet implementation class JDBC37Servlet
 */
@WebServlet("/jdbc08/s37")
public class JDBC37Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC37Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/view/jdbc08/v37.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		MyTable11Dao dao = new MyTable11Dao();
		boolean ok = false;
		
		String col1 = request.getParameter("name");
		String col2 = request.getParameter("age");
		String col3 = request.getParameter("birth");
//		String col4 = request.getParameter("col4");
//		String col5 = request.getParameter("col5");
//		String col6 = request.getParameter("col6");
//		String col7 = request.getParameter("col7");
		
		Bean11 bean = new Bean11();
		bean.setName(col1);
		bean.setAge(Integer.parseInt(col2));
		bean.setBirth(LocalDate.parse(col3));
//		bean.setCol4(col4);
//		bean.setCol5(col5);
//		bean.setCol6(LocalDate.parse(col6));
//		bean.setCol7(LocalDateTime.parse(col7));
		
		try (Connection con = ds.getConnection()) {
			dao.insert(con, bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String path = "/jdbc08/s38";
		request.getRequestDispatcher(path).forward(request, response);
	}

}
