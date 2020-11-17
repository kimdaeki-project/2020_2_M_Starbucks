package com.starbucks.sw4.admin.admin;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;

@Service
public class AdminService {
	
	@Autowired
	private AdminDAO adminDAO;
	
	public AdminMemberDTO getAdminLogin(AdminMemberDTO dto) throws SQLException, ClassNotFoundException{
		return adminDAO.getAdminLogin(dto);
	}

}
