package cn.edu.xpc.js151252.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FangWen
 */
@WebServlet("/FangWen")
public class FangWen extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FangWen() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
/*		HttpSession session=request.getSession(true);
		session.setAttribute("dog",new Integer(9) );
		Object dog= session.getAttribute("dog");
		int count=((Integer)dog).intValue();
		//System.out.println(count);
		PrintWriter out=response.getWriter();
		out.print(count);
		out.flush();
		out.close();*/
		
		HttpSession session=request.getSession(true);
		Object count= session.getAttribute("COUNTER");
		int counter=0;
		if(count==null){
			counter=1;
			session.setAttribute("COUNTER", new Integer(counter));
		}else{
			counter=((Integer)count).intValue();
			counter++;
			session.setAttribute("COUNTER", new Integer(counter));
		}
		PrintWriter out=response.getWriter();
		out.print(counter);	
		out.flush();
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
