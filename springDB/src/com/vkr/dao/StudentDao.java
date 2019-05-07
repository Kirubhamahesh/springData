package com.vkr.dao;

import java.util.List;

import com.vkr.model.Details;

public interface StudentDao {
	void CreateStudent(Details ob);
	List<Details> getStudent();
	Details getStudent(String id);
}
