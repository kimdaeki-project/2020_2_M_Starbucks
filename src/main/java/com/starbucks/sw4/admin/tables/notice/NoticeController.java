package com.starbucks.sw4.admin.tables.notice;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.admin.util.Pager;

@Controller
@RequestMapping(value = "/notice/**")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	// set notice delete ----------------------------------------------
	/*
	 * [JeongSky] 2020.11.16 15:02 delete, success
	 */
	@GetMapping("noticeDelete")
	public ModelAndView setDelete(NoticeDTO dto) throws ClassNotFoundException, SQLException{
		
		ModelAndView mv = new ModelAndView();
		String message = "게시글 삭제에 실패하였습니다.";
		int result = noticeService.setDelete(dto);
		
		if (result > 0) {
			message = "게시글이 삭제되었습니다.";
		}
		
		mv.addObject("message", message);
		mv.addObject("path", "./noticeList");
		mv.setViewName("admin/common/result");
		return mv;
		
	}
	
	// set notice write -----------------------------------------------
	/*
	 * [JeongSky] 2020.11.16 14:45 write, insert success
	 */
	@PostMapping("noticeWrite")
	public ModelAndView setWrite(NoticeDTO dto) throws ClassNotFoundException, SQLException{
		
		ModelAndView mv = new ModelAndView();
		System.out.println(dto.getContents());
		
		String message = "작성을 실패하였습니다.";
		dto.setWriter("admin test");
		
		int result = noticeService.setInsert(dto);

		if(result > 0) {
			message = "작성을 성공하였습니다.";
			mv.addObject("path", "./noticeList");
			mv.setViewName("admin/common/result");
		}
		
		mv.addObject("message", message);
		
		return mv;
		
	}
	
	// get notice write ------------------------------------------------
	// move to boardWrite.jsp
	@GetMapping("noticeWrite")
	public ModelAndView getWrite() throws ClassNotFoundException, SQLException{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/board/boardWrite");
		return mv;
	}
	
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
