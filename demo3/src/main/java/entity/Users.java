package entity;
import context.MSSQLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Users {
	 
private String userName;
private String passWord;
private String email;
 
public Users(String username, String password) {
this.userName = username;
this.passWord = password;
}
public Users(String username, String password, String email) {
this.userName = username;
this.passWord = password;
this.email=email;
}
 
private String md5(String passwordToHash){
String generatedPassword = null;
try {
// Create MessageDigest instance for MD5
MessageDigest md = MessageDigest.getInstance("MD5");
//Add password bytes to digest
md.update(passwordToHash.getBytes());
//Get the hash's bytes
byte[] bytes = md.digest();
//This bytes[] has bytes in decimal format;
//Convert it to hexadecimal format
StringBuilder sb = new StringBuilder();
for(int i=0; i< bytes.length ;i++)
{
sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
}
//Get complete hashed password in hex format
generatedPassword = sb.toString();
}
catch (NoSuchAlgorithmException e)
{
e.printStackTrace();
}
return generatedPassword;
 
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

    if (this.userName.equals(rs.getString("username")) && this.passWord.equals(rs.getString("password")))
    return true;
   
  
}
}
catch (Exception e) {
    e.printStackTrace();
}
return false;
}
public int getmoney() {
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

    if (this.userName.equals(rs.getString("username")) )
    return rs.getInt("moneyy");
   
  
}
}
catch (Exception e) {
    e.printStackTrace();
}
return 0;
}
public boolean isValid1() {
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
    return true;
   
  
}
}
catch (Exception e) {
    e.printStackTrace();
}
{    String sql1 = "INSERT INTO Users(username,password, email, moneyy) "
        + "VALUES(?,?,?,?)";
try {
    PreparedStatement ps = conn.prepareStatement(sql1);
    ps.setString(1, this.userName);
    ps.setString(2, this.passWord);
    ps.setString(3, this.email);
    ps.setInt(4, 3000000);
    
    
    ps.executeUpdate();
    
} catch (Exception e) {
    e.printStackTrace();
}
	return false;
}
}
}
