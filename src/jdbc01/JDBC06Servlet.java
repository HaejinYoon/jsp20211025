package jdbc01;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class JDBC06Servlet
 */
@WebServlet("/jdbc01/s06")
public class JDBC06Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC06Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0. 사전작업
				ServletContext application = request.getServletContext();
				DataSource pool = (DataSource) application.getAttribute("dbpool");
				Connection con = null;
				Statement stmt = null;
				ResultSet rs = null;

				String lastName = "";
				String firstName = "";
				//2. request 분석 가공
				
				//3. business logic
				String sql = "SELECT LastName, FirstName FROM Employees WHERE EmployeeID = 1";
				
				try {
					// 3.1 커넥션 얻기
					con = pool.getConnection();
					// 3.2 statement 얻기
					stmt = con.createStatement();
					// 3.3 쿼리 실행 (resultSet 얻기)
					rs = stmt.executeQuery(sql);
					// 3.4 resultSet 처리
					while (rs.next()) {
						// System.out.println(i + " : " + rs.getString(1));
						lastName=rs.getString(1);
						firstName=rs.getString(2);
					}
					// System.out.println("ResultSet finished.");
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					// 3.5 자원 닫기 / exception 처리
					if (rs != null) {
						try {
							rs.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}

					if (stmt != null) {
						try {
							stmt.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}

					if (con != null) {
						try {
							con.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
				}
				//4. add attribute
				request.setAttribute("lastName", lastName);
				request.setAttribute("firstName", firstName);
				
				//5. forward / redirect
				String path = "/WEB-INF/view/jdbc01/v06.jsp";
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
