package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Service.StudentService;
import com.model.Student;
import com.repository.StudentRepository;


@Controller
public class HomeController {
	@Autowired
	private StudentService service;
	@RequestMapping("/")
	public String LandingPage()
	{
		return "index";
	}
	@RequestMapping("/login")
	public String Login()
	{
		return "login";
	}
	@RequestMapping("/log")
	public String LoginPage(@RequestParam("uname") String username,@RequestParam("pass") String password, 
			Model model)
	{List<Student>sList=service.loginCheck(username,password);
	if(sList!=null)
	{
		model.addAttribute("data",sList);
	 return "users";
	}
	else
	{
		return "login";
	}
	}
	@RequestMapping("/register")
	public String RegisterData(@ModelAttribute Student student)
	{
		System.out.println(student);
		service.saveStudent(student);
		return "success";
	}
	@RequestMapping("/user")
	public String viewStudents()
	{
		return "success";
	}
	@RequestMapping("/delete")
	public String DeleteData(@RequestParam int rno,Model model)
	{
		List<Student> sList = service.deleteData(rno);
		System.out.println(sList);
		model.addAttribute("data", sList);
		return "users";
	}
	@RequestMapping("/relogin")
	public String LogAgain(Model model)
	{List<Student>sList=service.ViewData();
	model.addAttribute("data",sList);
		return "users";
	}
	@RequestMapping("/updateData")
	public String updateData(@RequestParam int rno, Model model)
	{Student stu=service.updateData(rno);
	model.addAttribute("stu",stu);
		return "edit";
	}
	@RequestMapping("/updateStudent")
	public String updateStudent(@ModelAttribute Student student,Model model)
	{
		List<Student>sList=service.updateStudent(student);
		model.addAttribute("data",sList);
		return "users";
	}
}
