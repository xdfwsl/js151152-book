package com.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.*;

/**
 * Servlet implementation class AddBookToCart
 */
@WebServlet("/AddBookToCart")
public class AddBookToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddBookToCart() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(false);// 获得一个session对象
		RequestDispatcher dispatcher; // 准备好转发器,跳转用1

		// 如果session不存在，转向 book3.jsp
		if (session == null) {// 如果session不存在
			dispatcher = request.getRequestDispatcher("/book3.jsp");
			dispatcher.forward(request, response);
		}
		// 取出购物车和添加的书籍
		Map cart = (Map) session.getAttribute("cart"); // 如果我存过,就是叫cart这个名字的Session
		BookBean book = (BookBean) session.getAttribute("bookToAdd");

		// 如果购物车不存在，创建购物车,第一次访问
		if (cart == null) {
			cart = new HashMap();

			// 将购物车存入session之中
			session.setAttribute("cart", cart);
		}
		// 判断书籍是否在购物车中
		CartItemBean cartItem = (CartItemBean) cart.get(book.getISBN());

		// 如果书籍在购物车中，更新其数量.
		// 否则，创建一个条目到Map中.
		if (cartItem != null)
			cartItem.setQuantity(cartItem.getQuantity() + 1);
		else
			cart.put(book.getISBN(), new CartItemBean(book, 1));

		// 转向viewCart.jsp显示购物车
		dispatcher = request.getRequestDispatcher("/viewCart.jsp");
		dispatcher.forward(request, response);
		


	}

}
