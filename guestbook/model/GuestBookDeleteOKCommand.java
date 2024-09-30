package com.ict.guestbook.model;

import com.ict.guestbook.db.Guestbook_DAO;
import com.ict.guestbook.db.Guestbook_VO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class GuestBookDeleteOKCommand implements Command{
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	String gb_idx = request.getParameter("gb_idx");
	int result = Guestbook_DAO.guestBookDelete(gb_idx);
	
	
	
	return "GuestBookController?cmd=g_list";
	}
}
