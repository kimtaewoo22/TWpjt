package com.taeou.test.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.taeou.test.model.BoardDomain;
import com.taeou.test.service.test.BoardService;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;

	@RequestMapping("/main")
	public String main(ModelAndView mav) {
		
//		mav.setViewName("welcome");
		
		return "welcome";
	}
	
	@RequestMapping("/listBoard") 
	public ModelAndView listBoard(ModelAndView mav) throws Exception{
		
		List<Map> list = new ArrayList<Map>();
		list = boardService.listBoard();
		Map<String, Object> result = new HashMap<String, Object>();
	
		
		System.out.println("결과값::::::::::"+list);
		mav.addObject("data", list);
		mav.setViewName("listboard");
		
		return mav;
	}
	@RequestMapping("deleteBoard")
	public void deleteBoard(@RequestParam("bno")int bno) throws Exception{
		
		boardService.deleteBoard(bno);
		
	}
}
