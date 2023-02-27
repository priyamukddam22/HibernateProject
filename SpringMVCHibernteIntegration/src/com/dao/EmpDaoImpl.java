package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Employee;
import com.model.Login;

@Repository
public class EmpDaoImpl implements EmpDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void addEmp(Employee e) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(e);

	}

	@Override
	public Employee getEmpById(int empid) {
		// TODO Auto-generated method stub
		return (Employee)sessionFactory.getCurrentSession().get(Employee.class, empid);
	}

	@Override
	public List<Employee> getAllEmps() {
		
		return sessionFactory.getCurrentSession().createQuery("From Employee").list();
	}

	@Override
	public void updateEmployee(Employee e) {
		sessionFactory.getCurrentSession().update(e);

	}

	@Override
	public void deleteEmpById(int empid) {
		Employee e=(Employee)sessionFactory.getCurrentSession().get(Employee.class, empid);
		sessionFactory.getCurrentSession().delete(e);

	}

	@Override
	public List<Employee> doEmpLogin(Login log) {
		String hql="From Employee E where E.email='"+log.getEmail()+"' and E.password='"+log.getPassword()+"'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		List<Employee> list=query.list();
		List<Employee> list1=list.size()>0?list:null;
		return list1;
	}

}
