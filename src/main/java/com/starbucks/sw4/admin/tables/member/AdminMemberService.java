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
	
	public AdminMemberDTO getOne(AdminMemberDTO dto) throws SQLException, ClassNotFoundException{
		return adminMemberDAO.getOne(dto);
	}
	
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
		
		// 매장별 근로자 인원 수 입력
		for(int j = 0; j < staffCount.size(); j++) {
			for (int i = 0; i < list.size(); i++) {
				if (list.get(i).getStoreDTO().getStoreCode() == staffCount.get(j).getStoreDTO().getStoreCode()) {
					list.get(i).setStaffCount(staffCount.get(j).getStaffCount());
				}
			}
		}

		// admin 계정 예외처리
		for(int i = 0; i < list.size(); i++) {
			
			if(list.get(i).getType() == 4) {
				
				StoreDTO storeDTO = new StoreDTO();
				
				storeDTO.setStoreName("본사 소속");
				storeDTO.setDoro_addr("서울특별시 중구 퇴계로 100 9F (04631)");
				list.get(i).setStoreDTO(storeDTO);
				
				AdminMemberDTO dto = new AdminMemberDTO();
				dto.setType(4);
				list.get(i).setStaffCount(this.getAdminStoreMemberCount(dto));
				break;
				
			}
			
		}
		
		return list;
		
	}
	
}
