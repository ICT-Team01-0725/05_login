package com.ict.guestbook.model;

import java.util.List;

import com.ict.guestbook.db.Guestbook_DAO;
import com.ict.guestbook.db.Guestbook_VO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class GuestBookListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		List<Guestbook_VO> list = Guestbook_DAO.getList();
		request.setAttribute("list", list);
		
		
		return "view/guestbook/list.jsp";
	}
	
}
