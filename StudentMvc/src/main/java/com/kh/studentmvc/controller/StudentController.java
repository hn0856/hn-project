package com.kh.studentmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.studentmvc.domain.StudentVo;
import com.kh.studentmvc.service.StudentService;

import lombok.extern.log4j.Log4j;

@RequestMapping("/student/*")
@Log4j
@Controller
public class StudentController {
	
	@Autowired
	private StudentService service;
	
	// 목록
	@GetMapping("/list")
	public void list(Model model) {
		List<StudentVo> list = service.getList();
		model.addAttribute("list" ,list);
	}
	
	
	// 등록폼
	@GetMapping("/registerForm")
	public void registerFrom( ) {
		 
	}
	
	// 등록처리
	@PostMapping("/register")
	public String register(StudentVo vo , RedirectAttributes rttr) {
		boolean reslut = service.register(vo);
		rttr.addFlashAttribute("resultRegister",reslut);
		return "redirect:/student/list";
	}
	
	

	
	// 수정처리
	@PostMapping("/modify")
	public String modify(StudentVo vo , RedirectAttributes rttr) {
	
		boolean result =  service.modify(vo);
		rttr.addFlashAttribute("resultModify",result);
		return "redirect:/student/list";
	}
	
	
	//삭제처리
	@PostMapping("/remove")
	public String remove(@RequestParam("sno") String sno,RedirectAttributes rttr) {
	boolean result = service.remove(sno);
	rttr.addFlashAttribute("resultRemove",result);
	return "redirect:/student/list";
	}
	
	
	
	//데이터1개
	
	@GetMapping("/read")
	public String read(@RequestParam("sno")String sno , Model model) {
		StudentVo vo = service.get(sno);
		model.addAttribute("vo",vo);
		return "student/read";
	}
	
	

}
