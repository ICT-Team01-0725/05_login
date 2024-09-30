package com.ict.guestbook.model;

import com.ict.guestbook.db.Guestbook_DAO;
import com.ict.guestbook.db.Guestbook_VO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class GuestBookUpdateCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Guestbook_VO gvo = Guestbook_DAO.detail(request.getParameter("gb_idx").toString());
		request.setAttribute("gvo", gvo);
		
		return "view/guestbook/update.jsp";
	}
}
