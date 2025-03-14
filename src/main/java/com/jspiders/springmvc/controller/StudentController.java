package com.jspiders.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.jspiders.springmvc.pojo.StudentPojo;
import com.jspiders.springmvc.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService service;

	
	@GetMapping("/home")
	public String home() {
		return "Home";
	}


	@GetMapping("/add")
	public String addPage() {
		return "AddStudent";
	}
	
	
	@PostMapping("/add")
	public String addStudent(@RequestParam String name,
								@RequestParam String email,
								@RequestParam long mobile,
								@RequestParam String address,
								ModelMap map) {
		StudentPojo pojo = service.addStudent
				(name, email, mobile, address);
		//Success
		if (pojo != null) {
			map.addAttribute("msg", "Data inserted successfully. ");
			return "AddStudent";
		}
		//Failure
		map.addAttribute("msg", "Data not inserted. ");
		return "AddStudent";
	}

	
	@GetMapping("/search")
	public String searchPage() {
		return "SearchStudent";
	}
	 
	@PostMapping("/search")
	public String searchStudent(@RequestParam int id,
			ModelMap map) {
		StudentPojo pojo=service.searchStudent(id);
		//success
		if(pojo != null) {
			map.addAttribute("student",pojo);
			map.addAttribute("msg","Student record found.");
			return "SearchStudent";
		}
		
		//failure
		
		map.addAttribute("msg", "Student data does not exist");
		return "SearchStudent";
	}
	

	

	@GetMapping("/remove")
	public String removePage(ModelMap map) {
		List<StudentPojo> students = service.allStudents();
		map.addAttribute("students", students);
		return "RemoveStudent";
	}
	@PostMapping("/remove")
	public String removeStudent(@RequestParam int id, ModelMap map) {
		StudentPojo pojo=service.removeStudent(id);
		if(pojo!=null) {
			List<StudentPojo> students =service.allStudents();
			map.addAttribute("msg","Student data removed successfully.");
			return "RemoveStudent";
		}
		List<StudentPojo> students=service.allStudents();
		map.addAttribute("students", students);
		map.addAttribute("msg", "student data does not exist");
		return "RemoveStudent";
	}
	@GetMapping("/update")
	public String updatePage(ModelMap map) {
		List<StudentPojo> students=service.allStudents();
		map.addAttribute("students",students);
		return "UpdateStudent";
	}
	@PostMapping("/update")
	public String updateForm(@RequestParam int id,
								ModelMap map) {
		StudentPojo pojo = service.searchStudent(id);
		// Success
		if (pojo != null) {
			map.addAttribute("student", pojo);
			return "UpdateStudent";
		}
		// Failure
		map.addAttribute("msg", "Student data does not exist. ");
		List<StudentPojo> students = service.allStudents();
		map.addAttribute("students", students);
		return "UpdateStudent";
	}
	
	//Update data controller
	@PostMapping("/updateData")
	public String updateStudent(@RequestParam int id,
									@RequestParam String name,
									@RequestParam String email,
									@RequestParam long mobile,
									@RequestParam String address,
									ModelMap map) {
		StudentPojo pojo = 
				service.updateStudent(id, name, email, mobile, address);
		//Success
		if (pojo != null) {
			map.addAttribute("msg", "Student data updated. ");
			List<StudentPojo> students = service.allStudents();
			map.addAttribute("students", students);
			return "UpdateStudent";
		}
		//Failure
		map.addAttribute("msg", "Student data not updated. ");
		List<StudentPojo> students = service.allStudents();
		map.addAttribute("students", students);
		return "UpdateStudent";
	}
	

}