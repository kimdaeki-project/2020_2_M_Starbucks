package com.starbucks.sw4.admin.tables.notice;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.admin.util.Pager;

@Controller
@RequestMapping(value = "/notice/**")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	// get notice contents ---------------------------------------------
	/*
	 * [JeongSky] 2020.11.14 18:40 access, load test success
	 */
	@GetMapping("noticeSelect")
	public ModelAndView getOne(NoticeDTO dto) throws ClassNotFoundException, SQLException{
		
		System.out.println(dto.getNoticeNum());
		
		ModelAndView mv = new ModelAndView();

		dto = noticeService.getOne(dto);
		if(dto != null) {
			mv.addObject("notice", dto);
			mv.setViewName("admin/board/boardSelect");
		} else {
			mv.addObject("message", "게시글이 존재하지 않습니다.");
			mv.addObject("path", "./boardList");
			mv.setViewName("admin/common/result");
		}
		
		return mv;
		
	}
	// finish line: get one notice list --------------------------------
	
	// get notice list -------------------------------------------------
	/*
	 * [JeongSky] 2020.11.11 17:20 access test success
	 * [JeongSky] 2020.11.14 19:16 add paging
	 */
	@GetMapping("noticeList")
	public ModelAndView getList(Pager pager) throws ClassNotFoundException, SQLException {
		
		System.out.println("notice list controller access ******");
		
		ModelAndView mv = new ModelAndView();
		
		List<NoticeDTO> list = noticeService.getList(pager);

		mv.addObject("noticeList", list);
		mv.addObject("page", pager);
		mv.setViewName("admin/board/boardList");
		return mv;
		
	}
	// finish line: get notice list -------------------------------------

}
