package com.starbucks.sw4.admin.tables.work;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;

@Controller
@RequestMapping(value = "/admin/**")
public class WorkTimeTableController {
	
	@Autowired
	private WorkTimeTableService workTimeTableService;

	@PostMapping("workTableWrite")
	public ModelAndView setInsert(AdminMemberDTO dto, WorkTimeTableDTO wDTO) throws SQLException, ClassNotFoundException{
		
		ModelAndView mv = new ModelAndView();
		
		int result = workTimeTableService.setInsert(dto, wDTO);
		
		if(result > 0) {
			System.out.println("insert success");
		}
		
		return mv;
		
	}
	
}
