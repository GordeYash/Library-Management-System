package com.entity.user;

import java.io.Serializable;

public class user implements Serializable {
	private static final long serialVersionUID = 1L;
	String uname;
	String password;
	int pno;
	String email;
	String upno;
	String roll;

	public String getRoll() {
		return roll;
	}


	public void setRoll(String roll) {
		this.roll = roll;
	}


	public String getUpno() {
		return upno;
	}


	public int getPno() {
		return pno;
	}
	

	public user() {
		super();
	}


	public user(String uname, String password, String upno, String email) {
		super();
		this.uname = uname;
		this.password = password;
		this.upno = upno;
		this.email = email;
	}

	public void setPno(int id) {
		this.pno = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPass() {
		return password;
	}

	public void setPass(String pass) {
		this.password = pass;
	}

}
