package com.starbucks.sw4.admin.tables.work;

import java.sql.SQLException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;
import com.starbucks.sw4.admin.tables.store.AdminStoreDTO;

@Service
public class WorkTimeTableService {

	@Autowired
	private WorkTimeTableDAO workTimeTableDAO;
	
	public int setUpdate(AdminMemberDTO dto, AdminStoreDTO sDTO, WorkTimeTableDTO wDTO) throws SQLException, ClassNotFoundException{
		
		System.out.println("member update service (work time table service)");
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("staff", dto);
		map.put("store", sDTO);
		
		int result = workTimeTableDAO.setWorkTimeTableUpdate(wDTO);
		if(result > 0) {
			System.out.println("work time table update success");
			result = workTimeTableDAO.setAdimStoreUpdate(map) + result;
		}
		
		if(result > 1) {
			System.out.println("total update success");
		}
		
		return result;
		
	}
	
	public int setInsert(AdminMemberDTO dto, WorkTimeTableDTO wDTO) throws SQLException, ClassNotFoundException{
		
		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("staff", dto);
		map.put("work", wDTO);
		
		System.out.println(map.get("staff"));
		System.out.println(map.get("work"));
		System.out.println(map);
		
		int result = workTimeTableDAO.setInsert(map);
		if(result > 0) {
			result = workTimeTableDAO.setTimeTableUpdate(dto);
			System.out.println("time table update success");
		}
		
		return result;
		
	}
	
}
