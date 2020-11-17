package com.starbucks.sw4.admin.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;

@Component
public class NoticeMemberInterceptor extends HandlerInterceptorAdapter{

	// notice write access authority check --------------------------------------------------------
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		// servlet request를 http session 형태로 받아오기
		HttpSession session = request.getSession();
		AdminMemberDTO memberDTO = (AdminMemberDTO)session.getAttribute("login");
		
		int loginMemberType = 0;
		if (memberDTO != null) {
			loginMemberType = memberDTO.getType();
		}
		
		boolean accessAuthority = false;
		if(loginMemberType == 4) {
			accessAuthority = true;
		} else {
			// interceptor는 MV가 없기에 request set attribute 활용
			request.setAttribute("message", "접근 권한이 없습니다.");
			if(memberDTO != null) {
				if(memberDTO.getType() > 1 && memberDTO.getType() < 4) {
					request.setAttribute("path", "admin/notice/noticeList");
				}
			} else {
				request.setAttribute("path", "admin/admin/adminLogin");
			}

			// RequestDispatcher는 forwarding할 JSP 경로명 입력
			// 이렇게 요청을 보낼 경우 WEB-INF부터 모든 경로 입력
			RequestDispatcher view = request.getRequestDispatcher("../../WEB-INF/views/admin/common/result.jsp");
			view.forward(request, response);
			
		}
		
		return accessAuthority;
		
	}
	
}
