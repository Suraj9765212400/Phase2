package com.caltech.pojo;

public class Participant {
	private int pid;
	private String pname;
	private String pemail;
	private String paddress;
	private String password;
	private int bid;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getPid() {
		return pid;
	}
	public String getPname() {
		return pname;
	}
	public String getPemail() {
		return pemail;
	}
	public String getPaddress() {
		return paddress;
	}
	public String getPassword() {
		return password;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public void setPemail(String pemail) {
		this.pemail = pemail;
	}
	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
