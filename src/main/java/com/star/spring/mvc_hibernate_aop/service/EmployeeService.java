package com.star.spring.mvc_hibernate_aop.service;

import com.star.spring.mvc_hibernate_aop.entity.Employee;

import java.util.List;

public interface EmployeeService {

    public List<Employee> getAllEmployee();

    public void saveEmployee(Employee employee);

    public Employee getEmployee(int id);

    public void deleteEmployee(int id);
}
