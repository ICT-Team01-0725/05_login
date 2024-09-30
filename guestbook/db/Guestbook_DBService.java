package com.ict.guestbook.db;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Guestbook_DBService {
	static private SqlSessionFactory factory;
	// config.xml 위치
	static String resource = "com/ict/guestbook/db/guestbook_config.xml";
	
	// static 초기화
	static {
		try {
			InputStream in = Resources.getResourceAsStream(resource);
			factory = new SqlSessionFactoryBuilder().build(in);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public static SqlSessionFactory getFactory() {
		return factory;
	}
}
