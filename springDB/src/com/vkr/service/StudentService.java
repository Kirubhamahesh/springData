package com.vkr.service;

import java.util.List;

import com.vkr.model.Details;

public interface StudentService {
	void CreateStudent(Details ob);
	List<Details> getStudent();
	Details getStudent(String id);
int g=0;	
}
