package com.test;

import com.util.ConnectionManager;

import java.util.*;
import java.sql.*;

public class OrderOperation {

	public boolean saveOrder(String username,String creditcard) {
		
		boolean flag=false;
		PreparedStatement pStat=null;
		int row=0;
		
		Connection con=ConnectionManager.getConnection();
		String sql="insert into bookorder(username,creditcard) VALUES(?,?)";
		try {
			pStat=con.prepareStatement(sql);
			pStat.setString(1, username);
			pStat.setString(2, creditcard);
			row=pStat.executeUpdate();
			if(row>0){
				flag=true;
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		finally{
			ConnectionManager.closeStatement(pStat);
			ConnectionManager.closeConnection(con);
		}
		return flag;
	}
}
