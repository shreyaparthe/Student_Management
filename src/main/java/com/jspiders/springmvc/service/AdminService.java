package com.jspiders.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jspiders.springmvc.pojo.AdminPojo;
import com.jspiders.springmvc.repository.AdminRepository;

@Service
public class AdminService {
	@Autowired
	private AdminRepository repository;
	
	public AdminPojo login(String username, String password) {
		AdminPojo pojo=repository.login(username, password);
		return pojo;
	}
	public List<AdminPojo> getAdmin() {
		List<AdminPojo> admin = repository.getAdmin();
		return admin;
	}

	public AdminPojo addAdmin(String username, String password) {
		AdminPojo pojo = repository.addAdmin(username, password);
		return pojo;
	}
			}
