package com.starbucks.sw4.admin.tables.store;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;
import com.starbucks.sw4.store.StoreDTO;

@Service
public class AdminStoreService {

	@Autowired
	private AdminStoreDAO adminStoreDAO;
	
	public List<StoreDTO> getList(AdminStoreDTO dto) throws SQLException, ClassNotFoundException{
		System.out.println("admin store service access");
		return adminStoreDAO.getList(dto);
	}
	
	public StoreDTO getAdminStore(AdminMemberDTO dto, StoreDTO sDTO) throws SQLException, ClassNotFoundException{
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("member", dto);
		map.put("store", sDTO);
		
		return adminStoreDAO.getAdminStore(map);
	}
	
	public long getAdminStoreMemberCount(AdminMemberDTO dto, StoreDTO sDTO) throws SQLException, ClassNotFoundException{
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("member", dto);
		map.put("store", sDTO);
		
		return adminStoreDAO.getAdminStoreMemberCount(map);
		
	}
	
}
