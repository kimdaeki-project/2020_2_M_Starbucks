package com.starbucks.sw4.order;

import java.sql.SQLException;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.order.OrderDAO.";
	
	public long setOrderInsert(OrderDTO orderDTO) throws ClassNotFoundException, SQLException{
		System.out.println("access order insert DAO");
		sqlSession.insert(NAMESPACE + "setOrderInsert", orderDTO);
		System.out.println(orderDTO.getOrderNum());
		long result = orderDTO.getOrderNum();
		return result;
	}
	
	public OrderDTO getOrderInfo(OrderDTO orderDTO) throws ClassNotFoundException, SQLException{
		System.out.println(orderDTO.getOrderNum());
		return sqlSession.selectOne(NAMESPACE + "getOrderInfo", orderDTO);
	}
	
	public int setOrderStoreUpdate(HashMap<String, Object> map) throws ClassNotFoundException, SQLException{
		return sqlSession.update(NAMESPACE+"setOrderStoreUpdate", map);
	}

}
