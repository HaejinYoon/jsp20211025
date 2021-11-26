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
 * Servlet implementation class JDBC38ServletModify
 */
@WebServlet("/jdbc08/s38modify")
public class JDBC38ServletModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC38ServletModify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		MyTable11Dao dao = new MyTable11Dao();
		Bean11 bean = new Bean11();
		boolean ok = false;
		
		int id = Integer.parseInt(request.getParameter("id"));
		try (Connection con = ds.getConnection()) {
			bean = dao.selectById(con, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("bean", bean);
		
		String path = "/WEB-INF/view/jdbc08/v38modify.jsp";
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
		request.setCharacterEncoding("utf-8");
		Bean11 bean = new Bean11();
		
		bean.setId(Integer.parseInt(request.getParameter("id")));
		bean.setName(request.getParameter("name"));
		bean.setAge(Integer.parseInt(request.getParameter("age")));
		bean.setBirth(LocalDate.parse(request.getParameter("birth")));
		
		try (Connection con = ds.getConnection()) {
			ok=dao.update(con, bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String path = "/jdbc08/s38";
		request.getRequestDispatcher(path).forward(request, response);
	}

}
