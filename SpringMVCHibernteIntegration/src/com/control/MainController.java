package com.control;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Employee;
import com.model.Login;
import com.service.EmpService;

@Controller
public class MainController {

	@Autowired
	private EmpService empservice;
	HttpSession ses;
	
	@RequestMapping("/reg")
	public String getReg(){
		
		return "Reg_form";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String addEmp(@ModelAttribute ("emp") Employee emp){
		empservice.addEmp(emp);
		return "redirect:/";
	}
	
	@RequestMapping("/log")
	public String getLogin(){
		
		return "Login";
	}
	
	@RequestMapping(value="/dologin",method=RequestMethod.POST)
	public String dologin(@ModelAttribute ("log") Login log){
		List<Employee> list=empservice.doEmpLogin(log);
		if(list!=null){
			return "redirect:/view";
		}
		return "Login";
	}
	
	@RequestMapping("/view")
	public String getAllEmps(Model model){
		List<Employee> list=empservice.getAllEmps();
		model.addAttribute("list",list);
		return "home";
	}
	
	@RequestMapping("delete/{empid}")
	public String deleteEmpById(@PathVariable int empid){
		empservice.deleteEmpById(empid);
		return "redirect:/view";
	}
	
	@RequestMapping("/edit/{empid}")
	public String getEmpById(@PathVariable int empid,Model model){
		Employee emp=empservice.getEmpById(empid);
		model.addAttribute("emp", emp);
		return "editemp";
	}
	
	@RequestMapping("/update")
	public String updateEmployee(@ModelAttribute ("emp") Employee emp){
		empservice.updateEmployee(emp);
		return "redirect:/view";
	}
}

