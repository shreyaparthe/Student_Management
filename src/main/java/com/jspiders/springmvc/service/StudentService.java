package com.jspiders.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jspiders.springmvc.pojo.StudentPojo;
import com.jspiders.springmvc.repository.StudentRepositoty;

@Service
public class StudentService {

	
@Autowired
private StudentRepositoty repository;

	public StudentPojo addStudent(String name, String email, long mobile, String address) {
		StudentPojo pojo = repository.addStudent
				(name, email, mobile, address);
		return pojo;
	}

	public StudentPojo searchStudent(int id) {
		StudentPojo pojo=repository.searchStudent(id);
		return pojo;
	}

	public List<StudentPojo> allStudents() {
		List<StudentPojo> students=repository.allStudents();
		return students;
	}

	public StudentPojo removeStudent(int id) {
		StudentPojo pojo=repository.removeStudent(id);
		return pojo;
	}

	public StudentPojo updateStudent(int id, String name, String email, long mobile, String address) {
		StudentPojo pojo = repository.updateStudent(id, name, email, mobile, address);
		return pojo;
		
	}

}
