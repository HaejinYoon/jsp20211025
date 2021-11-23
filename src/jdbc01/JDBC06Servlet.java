package jdbc01;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Employee;

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

				
				
				List<Employee> Employees = new ArrayList<>();
				//2. request 분석 가공
				
				//3. business logic
				String sql = "SELECT EmployeeID, LastName, FirstName, BirthDate, Photo, Notes FROM Employees";
				
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
						Employee emp = new Employee();
						
						emp.setEmployeeID(rs.getInt(1));
						emp.setFirstName(rs.getString(2));
						emp.setLastName(rs.getString(3));
						emp.setBirthDate(rs.getDate(4));
						emp.setPhoto(rs.getString(5));
						emp.setNotes(rs.getString(6));
						
						Employees.add(emp);	
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
				request.setAttribute("employees", Employees);
				
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
