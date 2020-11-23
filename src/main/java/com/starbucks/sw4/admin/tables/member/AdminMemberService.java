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
		
		List<AdminMemberDTO> list = adminMemberDAO.getList(pager);
		List<AdminMemberDTO> staffCount = adminMemberDAO.getAdminStoreEachCount();
		
		System.out.println(staffCount.size());
		for(AdminMemberDTO dto:staffCount) {
			System.out.println("staff count result: "+dto.getStoreDTO().getStoreCode() + " " + dto.getStaffCount());
		}
		
		for(int j = 0; j < staffCount.size(); j++) {

			for (int i = 0; i < list.size(); i++) {
				System.out.println(list.get(i).getStoreDTO().getStoreCode() + " " + staffCount.get(j).getStoreDTO().getStoreCode());
				if (list.get(i).getStoreDTO().getStoreCode() == staffCount.get(j).getStoreDTO().getStoreCode()) {
					System.out.println("true");
					list.get(i).setStaffCount(staffCount.get(j).getStaffCount());
				}
				
			}
			
		}
		
		for (AdminMemberDTO dto : list) {
			System.out.println(dto.getName() + " " + dto.getStoreDTO().getStoreCode() + " " + dto.getStaffCount());
		}

		return list;
		
	}
	
}
