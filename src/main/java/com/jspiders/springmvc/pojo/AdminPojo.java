package com.jspiders.springmvc.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name ="admin_data")

public class AdminPojo {
	@Id
	private String username;
	private String password;

	public void setUsername(String username2) {
		// TODO Auto-generated method stub
		
	}

	public void setPassword(String password2) {
		// TODO Auto-generated method stub
		
	}

}
