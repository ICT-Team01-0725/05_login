package com.ict.guestbook.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.ict.guestbook.model.Command;
import com.ict.guestbook.model.GuestBookDeleteCommand;
import com.ict.guestbook.model.GuestBookDeleteOKCommand;
import com.ict.guestbook.model.GuestBookDetailCommand;
import com.ict.guestbook.model.GuestBookUpdateCommand;
import com.ict.guestbook.model.GuestBookListCommand;
import com.ict.guestbook.model.GuestBookUpdateOKCommand;
import com.ict.guestbook.model.GuestBookWriteCommand;
import com.ict.guestbook.model.GuestBookWriteOKCommand;

@WebServlet("/GuestBookController")
public class GuestBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String cmd = request.getParameter("cmd");
		Command comm = null;
		
		switch (cmd) {
			case "g_list":
				comm = new GuestBookListCommand();
				break;
			case "g_write":
				comm = new GuestBookWriteCommand();
				break;
			case "g_write_ok":
				comm = new GuestBookWriteOKCommand();
				break;
			case "g_update":
				comm = new GuestBookUpdateOKCommand();
				break;
			case "g_go_update":
				comm = new GuestBookUpdateCommand();
				break;
			case "g_detail":
				comm = new GuestBookDetailCommand();
				break;
			case "g_delete":
				comm = new GuestBookDeleteCommand();
				break;
			case "g_delete_ok":
				comm = new GuestBookDeleteOKCommand();
				break;
		}
		
		
		
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}
