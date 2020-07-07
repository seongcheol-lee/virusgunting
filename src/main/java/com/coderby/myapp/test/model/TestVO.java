package com.coderby.myapp.test.model;

public class TestVO {
	private String url;
	private String type;
	private String msg;
	private String hospital;

	 
	public TestVO() {
	}
	

	public TestVO(String url, String type, String msg, String hospital) {
		this.url = url;
		this.type = type;
		this.msg = msg;
		this.hospital = hospital;
	}


	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getHospital() {
		return hospital;
	}

	public void setHospital(String hospital) {
		this.hospital = hospital;
	}
 
}
