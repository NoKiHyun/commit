package com.tpdf.shoot.controller;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.tpdf.shoot.service.NoticeService;
import com.tpdf.shoot.vo.NoticeVo;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Inject
	private NoticeService service;
	
	
	
	//목록보여주기
	@RequestMapping(value="/list", method=RequestMethod.GET) 
    public String getList(Model model) throws Exception{
		List<NoticeVo> list= service.list();
		model.addAttribute("list", list);
		return "notice/list";

    }
	//게시글 작성페이지 이동
	@RequestMapping(value="/insert", method=RequestMethod.GET) 
	public String getinsert() throws Exception {
       return "notice/insert";
    }
   
	
	//게시물 작성
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String postinsert(NoticeVo vo) throws Exception {
    	service.insert(vo);
       return "redirect:list";
    }
	//게시물 자세히보기
	
	 @RequestMapping(value = "/modify", method = RequestMethod.GET)
	    public String getmodify(Model model, int notice_idx) {
		 NoticeVo data = service.modify(notice_idx);
		 model.addAttribute("data", data);
	       return "notice/modify";
	    }
	 
	 //게시물 수정페이지이동
	 @RequestMapping(value = "/update", method = RequestMethod.GET)
	    public String getupdate(int notice_idx, Model model) throws Exception {
		 NoticeVo data = service.modify(notice_idx);
		 model.addAttribute("data", data);
	       return "notice/update";
	    }
	 //게시글 수정 
	 @RequestMapping(value="/update", method=RequestMethod.POST)
		public String postupdate(NoticeVo vo) throws Exception {
		 service.update(vo);
	    	
	       return "redirect:list";
	       
	    }
	 
	 //게시글 삭제
	 @RequestMapping(value="/delete", method=RequestMethod.GET)
		public String postdelete(int notice_idx) throws Exception {
		 service.delete(notice_idx);
	    	
	       return "redirect:list";
	       
	 
	 }
	 
    
	
}
