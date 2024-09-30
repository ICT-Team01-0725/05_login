package com.ict.guestbook.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;




public class Guestbook_DAO {
	private static SqlSession ss;
	
	private synchronized static SqlSession getSession() {
		if(ss==null) {
			ss = Guestbook_DBService.getFactory().openSession();
		}
		return ss;
	}
	
	public static List<Guestbook_VO> getList() {
		
		List<Guestbook_VO> list = getSession().selectList("guestbook.list");
		
		return list;
		
	} 
	public static int joinInsert(Guestbook_VO gvo) {
		int result = 0;
		result = getSession().insert("guestbook.insert",gvo);
		if(result>0) {
			ss.commit();
		}
		return result;
	}
	public static int update(Guestbook_VO gvo) {
		int result = 0;
		result = getSession().update("guestbook.update",gvo);
		if(result>0) {
			System.out.println("ddd");
			ss.commit();
		}
		return result;
	}
	public static Guestbook_VO detail(String gb_idx) {
		Guestbook_VO gvo = getSession().selectOne("guestbook.detail",gb_idx);
		return gvo;
	}
	public static int guestBookDelete(String gb_idx) {
		int result = 0;
		result = getSession().delete("guestbook.delete",gb_idx);
		ss.commit();
		return result;
	}
}
