package jdbc10.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jdbc10.bean.Employee;

public class EmployeeDao {

	public List<Employee> getListByNotesKeyword(Connection con, String keyword) {
		List<Employee> list = new ArrayList<Employee>();
		String sql = "SELECT employeeID, lastName, firstName, birthDate, notes "
				+ " FROM Employees "
				+ " WHERE notes LIKE ?"
				+ " OR lastName LIKE ? "
				+ " OR firstName LIKE ? "
				;
		
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, "%" + keyword + "%");
			pstmt.setString(2, "%" + keyword + "%");
			pstmt.setString(3, "%" + keyword + "%");
			
			try(ResultSet rs = pstmt.executeQuery()){
				
				while(rs.next()) {
					Employee emp = new Employee();
					emp.setEmployeeID(rs.getInt("employeeID"));
					emp.setFirstName(rs.getString("firstName"));
					emp.setLastName(rs.getString("lastName"));
					emp.setNotes(rs.getString("notes"));
					emp.setBirthDate(rs.getDate("birthDate").toLocalDate());
					list.add(emp);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Employee> getListByNotesKeywordAndYear(Connection con, String keyword, String year) {
		List<Employee> list = new ArrayList<Employee>();
//		String sql = "SELECT employeeID, lastName, firstName, birthDate, notes "
//				+ " FROM Employees "
//				+ " WHERE birthDate LIKE ? "
//				+ " OR notes LIKE ?"
//				+ " OR lastName LIKE ? "
//				+ " OR firstName LIKE ?"
//				;
		String sql = "SELECT employeeID, lastName, firstName, birthDate, notes "
				+ " FROM Employees "
				+ " WHERE (birthDate BETWEEN ? AND ?) "
				+ " AND ( notes LIKE ?"
				+ " OR lastName LIKE ? "
				+ " OR firstName LIKE ? )"
				;
		
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, year + "-01-01");
			pstmt.setString(2, year + "-12-31");
			pstmt.setString(3, "%" + keyword + "%");
			pstmt.setString(4, "%" + keyword + "%");
			pstmt.setString(5, "%" + keyword + "%");
			System.out.println(pstmt);
			
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {
					Employee emp = new Employee();
					emp.setEmployeeID(rs.getInt("employeeID"));
					emp.setFirstName(rs.getString("firstName"));
					emp.setLastName(rs.getString("lastName"));
					emp.setNotes(rs.getString("notes"));
					emp.setBirthDate(rs.getDate("birthDate").toLocalDate());
					list.add(emp);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
