package com.starbucks.sw4.my.faq;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FaqDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.my.faq.FaqDAO.";
	
	public List<FaqDTO> getRewardList(Pager pager) {
		return sqlSession.selectList(NAMESPACE+"getRewardList", pager);
	}
	
	public List<FaqDTO> getCardList() {
		return sqlSession.selectList(NAMESPACE+"getCardList");
	}
	 
	public long faqCount() throws Exception{
		return sqlSession.selectOne(NAMESPACE+"faqCount");
	}
}
