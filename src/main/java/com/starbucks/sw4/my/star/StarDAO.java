package com.starbucks.sw4.my.star;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.starbucks.sw4.order.OrderDTO;

@Repository
public class StarDAO {
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.my.star.StarDAO.";
	
	//storeName 받아오기
		public StarDTO getStore(StarDTO starDTO) throws Exception{
			System.out.println("star DAO 진입");
			System.out.println(starDTO.getStoreCode());
			System.out.println(starDTO.getStoreName());
			return sqlSession.selectOne(NAMESPACE+"getStore", starDTO);
		}
	
	//별 적립 
		public int setStarCard(StarDTO starDTO) throws Exception{
			return sqlSession.update(NAMESPACE+"setStarCard", starDTO);
		}
		
	
				
}
