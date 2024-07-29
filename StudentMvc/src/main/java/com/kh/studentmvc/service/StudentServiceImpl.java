package com.kh.studentmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.studentmvc.domain.StudentVo;
import com.kh.studentmvc.mapper.StudentMapper;

@Service("StudentServiceImpl")
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentMapper mapper;

	@Override
	public List<StudentVo> getList() {
		
		List<StudentVo> list = mapper.getList();
		return list;
	}

	@Override
	public boolean register(StudentVo vo) {
		
		int count =  mapper.insert(vo);
		return (count>0)? true: false;
	}

	@Override
	public boolean modify(StudentVo vo) {
		int count = mapper.update(vo);
		return (count>0)? true: false;
	}

	@Override
	public boolean remove(String sno) {
		int count =  mapper.delete(sno);
		return (count>0)? true: false;
	}

	@Override
	public StudentVo get(String sno) {
		StudentVo vo = mapper.selectByNum(sno);
		return vo;
	}
	
	

}
