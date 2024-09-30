package com.ict.guestbook.model;

import java.util.List;

import com.ict.guestbook.db.Guestbook_DAO;
import com.ict.guestbook.db.Guestbook_VO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class GuestBookUpdateOKCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Guestbook_VO gvo = new Guestbook_VO();
		String gb_idx = request.getParameter("gb_idx");
		gvo.setGb_idx(gb_idx);
		gvo.setGb_name(request.getParameter("gb_name"));
		gvo.setGb_subject(request.getParameter("gb_subject"));
		gvo.setGb_email(request.getParameter("gb_email"));
		gvo.setGb_pw(request.getParameter("gb_pwd"));
		gvo.setGb_content(request.getParameter("gb_content"));
		
		Guestbook_DAO.update(gvo);
		return "GuestBookController?cmd=g_detail";
	}

}
