package dao;

import context.DBContext;
import entity.Category;
import entity.ProductAdidas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;


public class DAOA {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<ProductAdidas> getAllProduct() {
        List<ProductAdidas> list = new ArrayList<>();
        String query = "select * from product_adidas";
        try {
            conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=webbangiay;"
                    + "username=sa;password=123456");//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductAdidas(rs.getInt(1),
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

    public List<ProductAdidas> getProductByCID(String cid) {
        List<ProductAdidas> list = new ArrayList<>();
        String query = "select * from product_adidas\n"
                + "where ID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductAdidas(rs.getInt(1),
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

    public List<ProductAdidas> searchByName(String txtSearch) {
        List<ProductAdidas> list = new ArrayList<>();
        String query = "select * from product_Adidas\n"
                + "where [Ten] like ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+ txtSearch+"%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductAdidas(rs.getInt(1),
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

    public ProductAdidas getProductByID(String id) {
        String query = "select * from product_Adidas\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ProductAdidas(rs.getInt(1),
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

    public ProductAdidas getLast() {
        String query = "select top 1 * from product_Adidas\n"
                + "order by id desc";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ProductAdidas(rs.getInt(1),
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
        DAOA dao = new DAOA();
        List<ProductAdidas> list = dao.getAllProduct();
       // List<Category> listC = dao.getAllCategory();

       // for (Category o : listC) {
       //     System.out.println(o);
        {    for (ProductAdidas v : list) {
                System.out.println(v);
        }
    }

}
}