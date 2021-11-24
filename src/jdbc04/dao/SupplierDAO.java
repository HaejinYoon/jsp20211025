package jdbc04.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc02.bean.Supplier;

public class SupplierDAO {

	public List<String> getCountryList(Connection con) {
		List<String> list = new ArrayList<>();

		String sql = "SELECT DISTINCT Country FROM Suppliers ORDER BY Country";

		try (Statement stmt = con.createStatement(); ResultSet rs = stmt.executeQuery(sql);) {
			while (rs.next()) {
				list.add(rs.getString(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Supplier> getSupplierListByCountry(Connection con, String country) {
		List<Supplier> list = new ArrayList<>();
		String sql = "SELECT SupplierID, SupplierName, ContactName,	Address, City, PostalCode, Country, Phone "
				+ " FROM Suppliers WHERE Country = ?";

		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, country);

			try (ResultSet rs = pstmt.executeQuery();) {
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
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean insert(Connection con, Supplier supp) {
		String sql = "INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?)";
		int rowCount = 0;
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			// ? 채우기
			pstmt.setString(1, supp.getSupplierName());
			pstmt.setString(2, supp.getContactName());
			pstmt.setString(3, supp.getAddress());
			pstmt.setString(4, supp.getCity());
			pstmt.setString(5, supp.getPostalCode());
			pstmt.setString(6, supp.getCountry());
			pstmt.setString(7, supp.getPhone());

			rowCount = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount == 1;
	}

	public List<Supplier> getAllSuppliers(Connection con) {
		List<Supplier> list = new ArrayList<>();
		String sql = "SELECT SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country, Phone FROM Suppliers";

		try (Statement stmt = con.prepareStatement(sql)) {
			try (ResultSet rs = stmt.executeQuery(sql);) {
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
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public boolean update(Connection con, Supplier supplier) {
		String sql = "UPDATE Suppliers " + 
				"SET " + 
				"	SupplierName=?," + 
				"	ContactName=?," + 
				"	Address=?," + 
				"	City=?," + 
				"	PostalCode=?," + 
				"	Country=?," +
				"	Phone=? " +
				" WHERE " + 
				"	SupplierID = ?";
		
		int rowCount = 0;
		try (PreparedStatement pstmt = con.prepareStatement(sql)){
			int i = 1;
			pstmt.setString(i++, supplier.getSupplierName());
			pstmt.setString(i++, supplier.getContactName());
			pstmt.setString(i++, supplier.getAddress());
			pstmt.setString(i++, supplier.getCity());
			pstmt.setString(i++, supplier.getPostalCode());
			pstmt.setString(i++, supplier.getCountry());
			pstmt.setString(i++, supplier.getPhone());
			pstmt.setInt(i++, supplier.getSupplierID());
			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount == 1;
	}

}
