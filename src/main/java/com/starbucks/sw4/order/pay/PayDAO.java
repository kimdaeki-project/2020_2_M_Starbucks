package com.starbucks.sw4.order.pay;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.starbucks.sw4.order.OrderDTO;

@Repository
public class PayDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.starbucks.sw4.order.pay.PayDAO.";
	
	public PayDTO getPayInfo(OrderDTO orderDTO) throws SQLException, ClassNotFoundException{
		return sqlSession.selectOne(NAMESPACE+"getPayInfo", orderDTO);
	}
	
	public int setInsertPay(PayDTO payDTO) throws SQLException,ClassNotFoundException{
		return sqlSession.insert(NAMESPACE + "setInsertPay", payDTO);
	}
	
}
