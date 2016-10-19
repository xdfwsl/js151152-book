package com.util;

import java.sql.*;

public class ConnectionManager {
	
	/*private static final String DRIVER_CLASS = "com.microsoft.jdbc.sqlserver.SQLServerDriver";
	private static final String DATABASE_URL = "jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=news";
	private static final String DATABASE_USRE = "sa";
	private static final String DATABASE_PASSWORD = "sa";
  */
	public final static String DRIVER_CLASS = "com.mysql.jdbc.Driver";                 // ��ݿ���
    public final static String DATABASE_URL    = "jdbc:mysql://127.0.0.1:3306/book?useUnicode=true&characterEncoding=utf8";   // url
    public final static String DATABASE_USRE = "book";                                                           // ��ݿ��û���
    public final static String DATABASE_PASSWORD = "123456";   
  
   
  /*  public final static String DRIVER_CLASS = "com.mysql.jdbc.Driver";                 // ��ݿ���
    public final static String DATABASE_URL    = "jdbc:mysql://127.0.0.1:3306/mensg?useUnicode=true&characterEncoding=gb2312";   // url
    public final static String DATABASE_USRE = "root";                                                           // ��ݿ��û���
    public final static String DATABASE_PASSWORD = "";    
*/
	/**
	 * ��������
	 * 
	 * @return Connection
	 */
	public static Connection getConnection() {
		Connection dbConnection = null;
		try {
			Class.forName(DRIVER_CLASS);
			dbConnection = DriverManager.getConnection(DATABASE_URL,
					DATABASE_USRE, DATABASE_PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dbConnection;
	}

	/**
	 * �ر�����
	 * 
	 * @param dbConnection
	 *            Connection
	 */
	public static void closeConnection(Connection dbConnection) {
		try {
			if (dbConnection != null && (!dbConnection.isClosed())) {
				dbConnection.close();
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		}

	}

	/**
	 * �رս��
	 */
	public static void closeResultSet(ResultSet res) {
		try {
			if (res != null) {
				res.close();
				res = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * �ر����
	 */

	public static void closeStatement(PreparedStatement pStatement) {
		try {
			if (pStatement != null) {
				pStatement.close();
				pStatement = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}

/*
 * y2javaee.sg.ch05.ConnectionManager.java
 * 2007-6-13
 * ��6�µ�Javaʾ����ʾJava��JDBC��PreparedStatement���
 */
/*package com.meng;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.Env;

public class ConnectionManager {

	*//**
	 * ��������
	 * 
	 * @return Connection
	 * 
	 *//*
	public static synchronized Connection getConnection()
			throws DBAccessException {
		// ����������Ϣ
		
		String driverClassName = Env.getInstance().getProperty("driver");
		String url = Env.getInstance().getProperty("url");
		String password = Env.getInstance().getProperty("password");
		String user = Env.getInstance().getProperty("user");
		Connection con = null;
		try {
			// ������ݿ������
			Class.forName(driverClassName);
			con = DriverManager.getConnection(url, user, password);
		} catch (Exception ex) {
			throw new DBAccessException("����ȡ����ݿ�����!");
		}
		return con;
	}

	*//**
	 * �ر�����
	 * 
	 * @param con
	 *//*
	public static void closeConnection(Connection con) {
		try {
			if (con != null && !con.isClosed()) {
				con.close();
			}
		} catch (SQLException ex1) {
			System.err.println("Could not close connection : "
					+ ex1.getMessage());
		}
	}

	*//**
	 * �رս��
	 * 
	 * @param res
	 *            ResultSet
	 *//*
	public static void closeResultSet(ResultSet res) {
		try {
			if (res != null) {
				res.close();
				res = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	*//**
	 * �ر����
	 * 
	 * @param pStatement
	 *            PreparedStatement
	 *//*

	public static void closeStatement(PreparedStatement pStatement) {
		try {
			if (pStatement != null) {
				pStatement.close();
				pStatement = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
*/