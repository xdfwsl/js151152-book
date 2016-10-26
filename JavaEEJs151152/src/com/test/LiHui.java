package com.test;

public class LiHui {

	public String zhaoRen(int renShu) {
		// TODO Auto-generated method stub
		String ren = "";
		if (renShu > 10) {
			System.out.println("没有这么多人");
			ren = "没有这么多人";
		} else {
			System.out.println("有人!");
			ren = "老田,老王";
		}
		return ren;

	}
}
