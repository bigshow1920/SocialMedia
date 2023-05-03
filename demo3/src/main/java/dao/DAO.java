package dao;

import context.DBContext;
import entity.Category;
import entity.ProductVans;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;


public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<ProductVans> getAllProduct() {
        List<ProductVans> list = new ArrayList<>();
        String query = "select * from product_vans";
        try {
            conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=webbangiay;"
                    + "username=sa;password=123456");//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductVans(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5)
                       ));  
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<ProductVans> getProductByCID(String cid) {
        List<ProductVans> list = new ArrayList<>();
        String query = "select * from product_vans\n"
                + "where ID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductVans(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5)
                       ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<ProductVans> searchByName(String txtSearch) {
        List<ProductVans> list = new ArrayList<>();
        String query = "select * from product_vans\n"
                + "where [Ten] like ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+ txtSearch+"%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductVans(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5)
                       ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ProductVans getProductByID(String id) {
        String query = "select * from product_vans\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ProductVans(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5)
                        );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ProductVans getLast() {
        String query = "select top 1 * from product_vans\n"
                + "order by id desc";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ProductVans(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5)
                       );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<ProductVans> list = dao.getAllProduct();
       // List<Category> listC = dao.getAllCategory();

       // for (Category o : listC) {
       //     System.out.println(o);
        {    for (ProductVans v : list) {
                System.out.println(v);
        }
    }

}
}