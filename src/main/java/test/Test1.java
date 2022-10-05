package test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import el.Member;

@WebServlet("/test1")
public class Test1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Date d = new Date();
		List<String> list = new ArrayList<>();
		list.add("java");
		list.add("JSP");
		list.add("spring");
		
		List<Member> mlist = new ArrayList<>();
		mlist.add(new Member("kim", 10));
		mlist.add(new Member("kim2", 20));
		
		request.setAttribute("today", d);
		request.setAttribute("list", list);
		request.setAttribute("mlist", mlist);
		
		RequestDispatcher dispather = request.getRequestDispatcher("/test/test.jsp");
		dispather.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
