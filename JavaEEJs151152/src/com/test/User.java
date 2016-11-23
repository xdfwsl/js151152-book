package com.test;



public class User {
	String userName;
	String passWd;

	public String getUserName() {
		System.out.println("调用getUserName了");
		return userName;
	}

	public void setUserName(String userName) {
		System.out.println("调用setUserName了");
		this.userName = userName;
	}

	public String getPassWd() {
		return passWd;
	}

	public void setPassWd(String passWd) {
		this.passWd = passWd;
	}
	
    public boolean YanZheng() {
		return false;
    
    	
	}

}
