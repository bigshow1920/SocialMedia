package context;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class updatemoney {
	 
private String userName;
private int money;

public updatemoney(String username, int money) {
this.userName = username;
this.money = money;
}
public boolean isValid() {
Connection conn = null;
CallableStatement callableStatement = null;
Boolean loginState = false;
String DB_NAME = "webbangiay";
String DB_PORT = "1433";
String DB_USERNAME = "sa";
String DB_PASSWORD = "123456";
String sql = "select * from Users";

try {
MSSQLConnection db = new MSSQLConnection(DB_NAME, DB_PORT, DB_USERNAME, DB_PASSWORD);
conn = db.getConnection();
PreparedStatement ps = conn.prepareStatement(sql);
ResultSet rs = ps.executeQuery();
while(rs.next()){

    if (this.userName.equals(rs.getString("username")))
    {
    	 String sql1 = "UPDATE Users Set moneyy=?  where username=?; ";
    try {
        PreparedStatement ps1 = conn.prepareStatement(sql1);
        ps1.setInt(1, this.money);
        ps1.setString(2, this.userName);
        ps1.executeUpdate();
       return true;
        
    } catch (Exception e) {
        e.printStackTrace();
    }
    }
  
}
}
catch (Exception e) {
    e.printStackTrace();
}
return false;
}
}
