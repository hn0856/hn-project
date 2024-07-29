package com.kh.studentmvc.service;

import java.util.List;

import com.kh.studentmvc.domain.StudentVo;

public interface StudentService {

	// 목록
	public List<StudentVo> getList();
	
	// 등록
	public boolean register(StudentVo vo);
	
	// 수정
	public boolean modify(StudentVo vo);
	
	
	//삭제
	public boolean remove(String sno);
	
	
	//상세
	public StudentVo get(String sno);
	

}
