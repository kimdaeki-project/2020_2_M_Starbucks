package com.starbucks.sw4.my;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Repository;

import com.starbucks.sw4.member.MemberDTO;
import com.starbucks.sw4.my.star.StarDTO;
import com.starbucks.sw4.order.OrderDTO;
import com.starbucks.sw4.order.pay.PayDTO;

@Repository
public class MyDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.my.MyDAO.";
	
	//my페이지 index
	public MyDTO getMyIndex(MemberDTO memberDTO) throws Exception{
		//System.out.println(myDTO.getId());
		return sqlSession.selectOne(NAMESPACE+"getMyIndex", memberDTO);
	}
	//로그인한 유저 정보가져오기
	public MyDTO getOne(MemberDTO memberDTO) throws Exception {
		System.out.println(memberDTO.getId());
		return sqlSession.selectOne(NAMESPACE+"getOne", memberDTO);
	}
	//개인 정보 수정
	public int setUpdate(MyDTO myDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", myDTO);
	}
	//비밀 번호 변경
	public int setNewPw(MyDTO myDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setNewPw", myDTO);
	}
	//별 히스토리
	public MyDTO getMyStar(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getMyStar", memberDTO);				
	}
	
	//나만의 매장
	public List<MyDTO> getMyStore(MyDTO myDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getMyStore",myDTO);
	}
	//회원 탈퇴
	public int setMyInfoOut(MyDTO myDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setMyInfoOut", myDTO);
	}
	
	//매장찾기
	public MyDTO getStore(MyDTO myDTO) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"getStore", myDTO);
	}
	
	//고객의소리
	public int setVocList(MyDTO myDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setVocList", myDTO);
	}
	

	//오더 정보 가져오기
	public OrderDTO getOrder(PayDTO payDTO) throws Exception{
		System.out.println("getorder DAO 접속");
		System.out.println("DAT ORDERNUM:"+payDTO.getOrderNum());
		return sqlSession.selectOne(NAMESPACE+"getOrder",payDTO);
	}

	//회원가입시 card 초기화
	public int setMemberJoinCard(MemberDTO memberDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setMemberJoinCard", memberDTO);
	}
	
	//회원가입시 starhistory 초기화
	public int setMemberJoinStar(MemberDTO memberDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setMemberJoinStar", memberDTO);

	}
	
	//회원가입시 memberstore 초기화
	public int setMemberJoinStore(MemberDTO memberDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setMemberJoinStore", memberDTO);
	}
	
	//membercard에 update하기
	public OrderDTO getMenu(OrderDTO orderDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getMenu", orderDTO);
	}
	
	public int setMemberCard(HashMap<String, Object> map) throws Exception {
		
		return sqlSession.update(NAMESPACE+"setMemberCard",map);
	}
	
	public int setCardNum(HashMap<String, Object> map) throws Exception{
		//System.out.println(myDTO.getNum());
		System.out.println(map.get("card"));
		System.out.println(map.get("member"));
		return sqlSession.update(NAMESPACE+"setCardNum", map);
	}
	
	//storeName 받아오기
	public MyDTO getStarStore(MyDTO myDTO) throws Exception{
		System.out.println("star store DAO 진입");
		System.out.println("dao code:"+myDTO.getStoreCode());
		
		return sqlSession.selectOne(NAMESPACE+"getStarStore",myDTO);
	}
	
	//별 적립 
	public int setStarCard(MyDTO myDTO) throws Exception{
		System.out.println("star DAO 까지옴");
		return sqlSession.update(NAMESPACE+"setStarCard", myDTO);
	}		
	
	//memberstore 업데이트
	public int setMemberStore(MyDTO myDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setMemberStore", myDTO);
	}
			
			
}