package com.entity.user;

public class Book {
	int uid;
	String bname;
	String auname;
	String btype;
	String bprice;

	@Override
	public String toString() {
		return "Book [uid=" + uid + ", bname=" + bname + ", auname=" + auname + ", btype=" + btype + ", bprice="
				+ bprice + "]";
	}

	public Book(int uid, String bname, String auname, String btype, String bprice) {
		this.uid = uid;
		this.bname = bname;
		this.auname = auname;
		this.btype = btype;
		this.bprice = bprice;
	}

	public int getUid() {
		return uid;
	}

	public String getBname() {
		return bname;
	}

	public String getAuname() {
		return auname;
	}

	public String getBtype() {
		return btype;
	}

	public String getBprice() {
		return bprice;
	}

}
