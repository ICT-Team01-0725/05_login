package com.ict.guestbook.model;

import java.util.List;

import com.ict.guestbook.db.Guestbook_DAO;
import com.ict.guestbook.db.Guestbook_VO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class GuestBookWriteOKCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
				
		Guestbook_VO gvo = new Guestbook_VO();
		
		gvo.setGb_name(request.getParameter("name"));
		gvo.setGb_subject(request.getParameter("subject"));
		gvo.setGb_content(request.getParameter("content"));
		gvo.setGb_pw(request.getParameter("pwd"));
		gvo.setGb_email(request.getParameter("email"));
		
		Guestbook_DAO.joinInsert(gvo);
		
		
		return "GuestBookController?cmd=g_list";
	}

}
