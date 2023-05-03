package entity;

import context.MSSQLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import context.MSSQLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class User {
	 
private String userName;
private String passWord;
 
public User(String username, String password) {
this.userName = username;
this.passWord = password;
}

public boolean isValid() {
Connection conn = null;


try {
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=webbangiay;" 
            + "username=sa;password=123456");
    System.out.print(1);
    
} catch (Exception e) {
	System.out.print(0);
    e.printStackTrace();
}
return true;
}

}
