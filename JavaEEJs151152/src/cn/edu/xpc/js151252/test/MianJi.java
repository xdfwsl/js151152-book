package cn.edu.xpc.js151252.test;

import java.io.Serializable;

public class MianJi implements Serializable {

	private double π=3.14;
	public double qiuMianJi(double banJing) {
		

		double mianJi=π*banJing*banJing;
		return mianJi;
	}
	public double getΠ() {
		
		System.out.println(π);
		return π;
	}
	public void setΠ(double π) {


		System.out.println("你家的π能改呀!");
	}
	
	

}
