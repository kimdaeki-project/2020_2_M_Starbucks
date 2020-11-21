package com.starbucks.sw4.admin.tables.member;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starbucks.sw4.admin.util.Pager;
import com.starbucks.sw4.store.StoreDTO;

@Service
public class AdminMemberService {

	@Autowired
	private AdminMemberDAO adminMemberDAO;
	
	public StoreDTO getAdminStore(AdminMemberDTO dto) throws SQLException, ClassNotFoundException{
		return adminMemberDAO.getAdminStore(dto);
	}
	
	public long getAdminStoreMemberCount(AdminMemberDTO dto) throws SQLException, ClassNotFoundException{
		return adminMemberDAO.getAdminStoreMemberCount(dto);
	}
	
	public List<AdminMemberDTO> getList(Pager pager) throws SQLException, ClassNotFoundException{
		
		System.out.println("before pager: " + pager.getTotalCount());
		
		pager.makeRow();
		pager.setTotalCount(adminMemberDAO.getCount(pager));
		pager.makePage();
		
		System.out.println("after pager: " + pager.getTotalCount());
		System.out.println("after pager start row: " + pager.getStartRow());

		return adminMemberDAO.getList(pager);
		
	}
	
}
