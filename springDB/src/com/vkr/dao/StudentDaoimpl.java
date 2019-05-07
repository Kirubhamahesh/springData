package com.vkr.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vkr.model.Details;

@Repository
public class StudentDaoimpl implements StudentDao {
	@Autowired
	SessionFactory fact;
	
	
	@Override
	public void CreateStudent(Details ob)
	{
		Session session=fact.getCurrentSession();
		session.saveOrUpdate(ob);
	}
	
	@Override
	public List<Details> getStudent(){
		Session session=fact.getCurrentSession();
		Query query=session.createQuery("from Details");
		List<Details> ob = query.list();
		return ob;
		
	}
	
	@Override
	public Details getStudent(String id)
	{
		Session session=fact.getCurrentSession();
		Details as = session.get(Details.class,Integer.parseInt(id));
		return as;
	}

	
}
