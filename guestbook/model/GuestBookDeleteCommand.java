package com.ict.guestbook.model;

import com.ict.guestbook.db.Guestbook_DAO;
import com.ict.guestbook.db.Guestbook_VO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class GuestBookDeleteCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String gb_idx = request.getParameter("gb_idx");
		String gb_pw = request.getParameter("gb_pw");
		
		request.setAttribute("gb_idx", gb_idx);
		request.setAttribute("gb_pw", gb_pw);
			
		return "view/guestbook/delete.jsp";
	}
}
