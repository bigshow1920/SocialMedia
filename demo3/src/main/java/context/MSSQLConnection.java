package context;

import java.sql.Connection;
import java.sql.DriverManager;

public class MSSQLConnection {
	 
private String DB_NAME;
private String DB_PORT;
private String DB_USERNAME;
private String DB_PASSWORD;
 
public MSSQLConnection(String DB_NAME, String DB_PORT, String DB_USERNAME, String DB_PASSWORD) {
this.DB_NAME = DB_NAME;
this.DB_PORT = DB_PORT;
this.DB_USERNAME = DB_USERNAME;
this.DB_PASSWORD = DB_PASSWORD;
}
 
public Connection getConnection() {
Connection conn = null;
try {
//Establish the connection
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=webbangiay;" 
        + "username=sa;password=123456");
} catch (Exception e) {
	System.out.print("failed");
e.printStackTrace();
}
return conn;
}
 
}