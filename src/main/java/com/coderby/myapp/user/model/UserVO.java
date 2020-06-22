package com.coderby.myapp.user.model;

public class UserVO {
	private int userId;
	private String userName;
	private String userPass;

	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", userName=" + userName + ", userPass=" + userPass + "]";
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

}
