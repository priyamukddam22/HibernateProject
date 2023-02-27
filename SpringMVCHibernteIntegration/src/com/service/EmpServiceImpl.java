package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.EmpDao;
import com.model.Employee;
import com.model.Login;

@Service
public class EmpServiceImpl implements EmpService {
	
	@Autowired
	private EmpDao empdao;

	@Transactional
	@Override
	public void addEmp(Employee e) {
		// TODO Auto-generated method stub
		empdao.addEmp(e);
	}

	@Transactional
	@Override
	public Employee getEmpById(int empid) {
		// TODO Auto-generated method stub
		return empdao.getEmpById(empid);
	}

	@Transactional
	@Override
	public List<Employee> getAllEmps() {
		// TODO Auto-generated method stub
		return empdao.getAllEmps();
	}

	@Transactional
	@Override
	public void updateEmployee(Employee e) {
		empdao.updateEmployee(e);

	}

	@Transactional
	@Override
	public void deleteEmpById(int empid) {
		empdao.deleteEmpById(empid);

	}

	@Transactional
	@Override
	public List<Employee> doEmpLogin(Login log) {
		// TODO Auto-generated method stub
		return empdao.doEmpLogin(log);
	}

}
