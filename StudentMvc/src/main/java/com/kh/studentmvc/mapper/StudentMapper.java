package com.kh.studentmvc.mapper;

import java.util.List;

import com.kh.studentmvc.domain.StudentVo;

public interface StudentMapper {
	
	//목록보기
	public List<StudentVo> getList();
	
	// 등록
	public int insert(StudentVo vo);
	
	// 수정
	public int update(StudentVo vo);
	
	// 삭제
	public int delete(String sno);
	//데이터 1개
	public StudentVo selectByNum(String sno);

}
