package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import connectionprovider.ConnectionProvider;

public class User {
	private int userId;
	private String storeName;
	private String ownerName;
	private String storAddress;
	private String contactNo;
	private String emailId;
	private String userPwd;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getStorAddress() {
		return storAddress;
	}
	public void setStorAddress(String storAddress) {
		this.storAddress = storAddress;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
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
	public void updateUser(){
		String query="update registration  set city=?,gender=?,quali=?,birth=? where id=?";
		try
		{
		Connection con = getConnection();
		PreparedStatement stm = con.prepareStatement(query);
		stm.setInt(1, getUserId());
		stm.setString(2, getStoreName());
		stm.setString(3, getOwnerName());
		stm.setString(4, getStorAddress());
		stm.setString(5, getContactNo());
		stm.setString(6, getEmailId());
		stm.setString(7, getUserPwd());
		int i = stm.executeUpdate();
		stm.close();
		con.close();
		System.out.println(i+" Sucessfull");
		}catch (Exception e) {
			System.out.println(e);
		}
	}

}
