package com.starbucks.sw4.my;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starbucks.sw4.member.MemberDTO;
import com.starbucks.sw4.my.star.StarDTO;
import com.starbucks.sw4.order.OrderDTO;
import com.starbucks.sw4.order.pay.PayDTO;

@Service
public class MyService {
	@Autowired
	private MyDAO myDAO;
	
	//myIndex 페이지 db 출력
	public MyDTO getMyIndex(MemberDTO memberDTO) throws Exception{
		//System.out.println(myDTO.getGrade());
		return myDAO.getMyIndex(memberDTO);
	}
	
	//개인정보수정 전 db
	public MyDTO getOne(MemberDTO memberDTO) throws Exception {
		
		return myDAO.getOne(memberDTO);
	}
	
	//개인정보 수정 후 update
	public int setUpdate(MyDTO myDTO) throws Exception {
		return myDAO.setUpdate(myDTO);
	}
	
	//비밀번호 수정
	public int setNewPw(MyDTO myDTO) throws Exception {
		return myDAO.setNewPw(myDTO);
	}
	
	//별 히스토리
	public MyDTO getMyStar(MemberDTO memberDTO) throws Exception {
		return myDAO.getMyStar(memberDTO);
	}
	
	//나만의 매장
	public List<MyDTO> getMyStore(MyDTO myDTO) throws Exception {
		return myDAO.getMyStore(myDTO);
	}
	
	//회원 탈퇴
	public int setMyInfoOut(MyDTO myDTO) throws Exception{
		return myDAO.setMyInfoOut(myDTO);
	}
	
	//고객의 소리
	public int setVocList(MyDTO myDTO)throws Exception{
		//storecode 받아오기
		MyDTO store = myDAO.getStore(myDTO);
		myDTO.setStoreCode(store.getStoreCode());
		System.out.println("고객의소리 storecode:"+myDTO.getStoreCode());
		return myDAO.setVocList(myDTO);
	}
	//회원가입시 card 초기화
		public int setMemberJoinCard(MemberDTO memberDTO) throws Exception {
			return myDAO.setMemberJoinCard(memberDTO);
		}
		
	//회원가입시 starhistory 초기화
		public int setMemberJoinStar(MemberDTO memberDTO) throws Exception {
			return myDAO.setMemberJoinStar(memberDTO);
		}
		
	//회원가입시 memberStore 초기화
		public int setMemberJoinStore(MemberDTO memberDTO) throws Exception{
			return myDAO.setMemberJoinStore(memberDTO);
		}
		
		
	//카드 구매시 membercard에 update하기
		public void setMemberCard(PayDTO payDTO,HttpSession session) throws Exception {
			System.out.println("서비스 접속");
			MemberDTO myDTO = (MemberDTO)session.getAttribute("member");
			System.out.println(myDTO.getId());
			System.out.println(myDTO.getNum());
			OrderDTO order = new OrderDTO();
		//	order.setId(myDTO.getId());
			//order테이블에서 data가져오기
		//	payDTO.setOrderNum(15);
			order = myDAO.getOrder(payDTO);
		//	System.out.println(order.getMemberNum());
			System.out.println("menucode:"+order.getMenuCode());
			//menucode 값 받아서 c로 시작하는 지 확인
			//String menucode = "C5747";
			System.out.println("메뉴코드:"+order.getMenuCode());
			String menuCode = order.getMenuCode();
			menuCode= menuCode.substring(0,1);
			System.out.println(menuCode);
			HashMap<String, Object> map = new HashMap<String, Object>();
			
			if(menuCode.equals("C")) {
				//랜덤번호 8자리 생성
				long cardNum = (int)(Math.random()*100000000);
				order.setCardNum(cardNum);  //orderDTO를 넘겨주기
				System.out.println("cardNum: "+cardNum);
				
				//CardDTO cDTO = new CardDTO(); 추후 업데이트예정!
				//cDTO.setCardNum(cardNum);
				//map.put("card", cDTO);
				
				//menu테이블에있는 korName, menuImage받아오기
				OrderDTO menu =	myDAO.getMenu(order);
				order.setKorName(menu.getKorName());
				order.setMenuImage(menu.getMenuImage());
				System.out.println(order.getMemberNum());
				System.out.println(order.getId());
				System.out.println("mydto get num" + myDTO.getNum());
				
				
				map.put("card", order);
				map.put("member", myDTO);
				myDAO.setCardNum(map); //starHistory테이블에 cardNum 입력해주기
				
				myDAO.setMemberCard(map); //memberCard테이블에 메뉴코드,카드번호,이미지 등등 입력
			}
			
			
			
		}
	
		//음료,상품 만원 이상 구매시 별 적립
		public int setStarCard(PayDTO payDTO, HttpSession session) throws Exception{
			System.out.println("starService 진입");
			MemberDTO myDTO = (MemberDTO)session.getAttribute("member");
			System.out.println(myDTO.getId());
			OrderDTO orderDTO = new OrderDTO();
			
			//order테이블에서 data가져오기
		//	payDTO.setOrderNum(15);
			orderDTO = myDAO.getOrder(payDTO);
			
			System.out.println("컨트롤러CODE:"+orderDTO.getStoreCode());
			
			//기존의 starhistory 테이블에서 data 가져오기
			MyDTO starInfo = myDAO.getMyStar(myDTO);
			
			//storName 가져오기
			starInfo.setStoreCode(orderDTO.getStoreCode());
			MyDTO store = myDAO.getStarStore(starInfo);
			store.setId(myDTO.getId());
			myDAO.setMemberStore(store);  //주문한 매장이 my매장으로 자동등록됨
			//금액확인
			long price = orderDTO.getTotalPrice();
		
			if(10000<=price && price<20000) {
				System.out.println("별1개적립");
				starInfo.setStoreName(store.getStoreName());
				starInfo.setUseStar(starInfo.getUseStar()+1);
				starInfo.setTotalStar(starInfo.getTotalStar()+1);
				starInfo.setState("적립");
				starInfo.setTotalPrice(starInfo.getTotalPrice()+price);
			
			}else if(price>20000) {
				System.out.println(("별 2개 적립"));
				starInfo.setStoreName(store.getStoreName());
				starInfo.setUseStar(starInfo.getUseStar()+2);
				starInfo.setTotalStar(starInfo.getTotalStar()+2);
				starInfo.setState("적립");
				starInfo.setTotalPrice(starInfo.getTotalPrice()+price);
			
			}else {
				System.out.println("별 적립 불가");
			}
			
			
			
			
			 
			return myDAO.setStarCard(starInfo);
		}
	


	
	

}
