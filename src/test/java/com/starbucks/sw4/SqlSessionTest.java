package com.starbucks.sw4;

import static org.junit.Assert.*;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class SqlSessionTest extends MyTestCase {

	@Autowired
	private SqlSession sqlSession;
	
	@Test
	public void test() {
		System.out.println(sqlSession.getConnection());
	}

}
