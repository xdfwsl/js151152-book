package cn.edu.xpc.js151252.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class YanZheng
 */
@WebServlet("/YanZheng")
public class YanZheng extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public YanZheng() {
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pass = request.getParameter("userPass");
		String user = request.getParameter("userName");

		if (user.equals("XPC") && pass.equals("XPC")) {
			request.setAttribute("loginname", user);
			HttpSession session=request.getSession(true);
			session.setAttribute("USER", user);
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/WEB-INF/ok.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("/WEB-INF/fail.jsp");

		}
	}
}
