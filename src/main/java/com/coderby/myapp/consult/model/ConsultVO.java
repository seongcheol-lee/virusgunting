package com.coderby.myapp.consult.model;

 
public class ConsultVO {
	private int consultId;
	private int userId;
	private String consultTitle;
	private String consultContent;
	private String consultEmail;
	public int getConsultId() {
		return consultId;
	}
	public void setConsultId(int consultId) {
		this.consultId = consultId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getConsultTitle() {
		return consultTitle;
	}
	public void setConsultTitle(String consultTitle) {
		this.consultTitle = consultTitle;
	}
	public String getConsultContent() {
		return consultContent;
	}
	public void setConsultContent(String consultContent) {
		this.consultContent = consultContent;
	}
	public String getConsultEmail() {
		return consultEmail;
	}
	public void setConsultEmail(String consultEmail) {
		this.consultEmail = consultEmail;
	}
	@Override
	public String toString() {
		return "ConsultVO [consultId=" + consultId + ", userId=" + userId + ", consultTitle=" + consultTitle
				+ ", consultContent=" + consultContent + ", consultEmail=" + consultEmail + "]";
	}
	
	 

}
