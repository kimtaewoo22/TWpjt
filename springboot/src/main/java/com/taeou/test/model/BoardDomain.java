package com.taeou.test.model;

public class BoardDomain {

	private int bno;
	private String userName;
	private String contents;
	private String title;
	private String regdate;

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "BoardDomain [bno=" + bno + ", userName=" + userName + ", contents=" + contents + ", title=" + title
				+ ", regdate=" + regdate + "]";
	}

}
