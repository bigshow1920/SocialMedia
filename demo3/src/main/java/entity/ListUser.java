package entity;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;





public class ListUser{

	 Connection conn = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;
        public ListUser() {}
	    public List<Userss> getAllProduct() {
	        List<Userss> list = new ArrayList<>();
	        String query = "select * from Users";
	        try {
	            conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=webbangiay;"
	                    + "username=sa;password=123456");//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
	            rs = ps.executeQuery();
	            while (rs.next()) {
	                list.add(new Userss(rs.getString(1),
	                        rs.getString(2),
	                        rs.getString(3),
	                        rs.getInt(4)
	                       )); 
	                //System.out.print(rs.getString(2));
	            }
	        } catch (Exception e) {
	        }
	        return list;
	    }
	    public static void main(String[] args) {
	        ListUser dao = new ListUser();
	        List<Userss> list = dao.getAllProduct();
	       // List<Category> listC = dao.getAllCategory();

	       // for (Category o : listC) {
	       //     System.out.println(o);
	        {    for (Userss v : list) {
	                System.out.println(v);
	        }
	    }

	}
    
}
