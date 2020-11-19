package com.starbucks.sw4.admin.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;

public class AdminPageInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberDTO memberDTO = (AdminMemberDTO)session.getAttribute("login");
		
		System.out.println(memberDTO);
		
		int getType = 0;
		if (memberDTO != null) {
			getType = memberDTO.getType();
		}
		
		boolean accessAuthority = false;
		if(getType > 1 && getType < 5) {
			accessAuthority = true;
		} else {
			request.setAttribute("message", "접근 권한이 없습니다.");
			request.setAttribute("path", "../admin/adminLogin");
			RequestDispatcher view = request.getRequestDispatcher("../../WEB-INF/views/admin/common/result.jsp");
			view.forward(request, response);
		}
		
		return accessAuthority;
		
	}
	
}
