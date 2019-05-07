package com.vkr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.vkr.model.Details;
import com.vkr.service.StudentService;

@Controller
public class Display {
	
	@Autowired
	StudentService studentService;

	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String dostart(Model model)
	{
		model.addAttribute("ranjith", new Details());
		return "welcome";
	}
	@RequestMapping(value="/form",method=RequestMethod.GET)
	public String processForm(@ModelAttribute("ranjith") Details ob)
	{
		studentService.CreateStudent(ob);
		return "success";
	}
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(ModelMap model)
	{
		List<Details> ob=studentService.getStudent();
		model.addAttribute("details",ob);
		return "list";
		
	}
	
	@RequestMapping(value="/editStudent",method=RequestMethod.GET)
	public String editStudent(@RequestParam("id")String id,Model model)
	{
		model.addAttribute("ranjith", studentService.getStudent(id));
		return "welcome";
	}
	
}
