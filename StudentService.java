package com.Service;

import java.util.List;

import com.model.Student;

public interface StudentService {

	List<Student> loginCheck(String username, String password);

	void saveStudent(Student student);

	List<Student> deleteData(int rno);

	List<Student> ViewData();

	Student updateData(int rno);

	List<Student> updateStudent(Student student);

}
