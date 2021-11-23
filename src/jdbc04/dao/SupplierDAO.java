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
		
		try (Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				){
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
		String sql = "SELECT SupplierID, SupplierName, ContactName,	Address, City, PostalCode, Country, Phone \"\r\n" + 
				"					+\"FROM Suppliers WHERE Country = ?";
		
		try(PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, country);
			
			try (ResultSet rs = pstmt.executeQuery();) {
				while (rs.next()) {
					Supplier supp = new Supplier();
					int i = 1;

					supp.setSupplierID(rs.getString(i++));
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

}
