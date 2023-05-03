package entity;



public class Userss {
	 
private String userName;
private String passWord;
private String email;
private int money;
public Userss() {}
public Userss(String username, String password) {
this.userName = username;
this.passWord = password;
}
public Userss(String username, String password, String email, int money) {
this.userName = username;
this.passWord = password;
this.email=email;
this.money=money;
}
public String getuserName() {
    return userName;
}
public String getemail() {
    return email;
}
public String getpassWord() {
    return passWord;
}
public int getmoney() {
    return money;
}

public void setuserName(String name) {
    this.userName = name;
}
@Override
public String toString() {
    return "Userss{" + "userName=" + userName + ", email=" + email + ", passWord=" + passWord + ", money=" + money + '}';

}
}

