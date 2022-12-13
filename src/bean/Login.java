package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import connectionprovider.ConnectionProvider;

public class Login{
	private String userMobile;
	private String userPwd;
	private int userId;
	private User user;
	boolean flag = false;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getUserMobile() {
		return userMobile;
	}
	public void setUserMobile(String userMobile) {
		this.userMobile = userMobile;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	private Connection getConnection()throws Exception{
		return ConnectionProvider.getInstance().getConnection();
	}
	public boolean checkUser(){
	try
	{
	Connection con = getConnection();
	PreparedStatement stm = con.prepareStatement("select * from storesetup where contactno=? and password=?");
	stm.setString(1, userMobile);
	stm.setString(2, userPwd);
	ResultSet rs = stm.executeQuery();
	while(rs.next())
	{
	User user=new User();
	user.setUserId(rs.getInt(1));
	user.setStoreName(rs.getString(2));
	user.setOwnerName(rs.getString(3));
	user.setStorAddress(rs.getString(4));
	user.setContactNo(rs.getString(5));
	user.setEmailId(rs.getString(6));
	user.setUserPwd(rs.getString(7));
	setUser(user);
	flag=true;
	}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	return flag;
	}
}
