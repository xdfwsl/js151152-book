package com.operation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookBean;
import com.util.ConnectionManager;



public class TitlesBean {
	private Connection connection;

	private PreparedStatement titlesQuery;

	private ResultSet results;

	// 返回BookBeans列表
	public List<BookBean> getTitles() {
		List<BookBean> titlesList = new ArrayList<BookBean>();//声明一个List类型的对象,将来用来存放书对象

		// 获取书籍列表
		try {

			connection = ConnectionManager.getConnection();//获得一个连接对象
			titlesQuery = connection
					.prepareStatement("SELECT isbn, title, editionNumber, "
							+ "copyright, publisherID, imageFile, price "
							+ "FROM titles ORDER BY title");//查询的语句
			ResultSet results = titlesQuery.executeQuery();//查询得到结果,并存放到结果集中.

			// 读取行数据
			while (results.next()) {
				BookBean book = new BookBean();//得到书对象,用来存书.

				book.setISBN(results.getString("isbn"));//把每本书的ISBN取出来,存放到book里的相应属性内
				book.setTitle(results.getString("title"));
				book.setEditionNumber(results.getInt("editionNumber"));
				book.setCopyright(results.getString("copyright"));
				book.setPublisherID(results.getInt("publisherID"));
				book.setImageFile(results.getString("imageFile"));
				book.setPrice(results.getDouble("price"));

				titlesList.add(book);//把所有的书都放在里面
			}
		}
		
		// 处理数据库驱动和连接异常
//		catch (DBAccessException exception) {
//			exception.printStackTrace();
//		}

		// 处理数据库异常
		catch (SQLException exception) {
			exception.printStackTrace();
		}

		// 释放资源
		finally {
			try {
				if (results != null) {
					results.close();
					results = null;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (connection != null && (!connection.isClosed())) {
					connection.close();
				}
			} catch (SQLException sqlEx) {
				sqlEx.printStackTrace();
			}
		}
		return titlesList; //返回一个List<BookBean>
	}

}
