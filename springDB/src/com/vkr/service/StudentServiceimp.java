package com.vkr.service;
 
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vkr.dao.StudentDao;
import com.vkr.model.Details;
@Service
public class StudentServiceimp implements StudentService {
	@Autowired
	StudentDao studentDao;
	
	@Override
	@Transactional
	public void CreateStudent(Details ob)
	{
		studentDao.CreateStudent(ob);
	}
	
	@Override
	@Transactional
	public List<Details> getStudent()
	{
		return studentDao.getStudent();
	}
	
	@Override
	@Transactional
	public Details getStudent(String id)
	{
		return studentDao.getStudent(id);
	}
}
