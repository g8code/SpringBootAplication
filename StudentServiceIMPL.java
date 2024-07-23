package com.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.Student;
import com.repository.StudentRepository;
@Service
public class StudentServiceIMPL implements StudentService {

	@Autowired
	private StudentRepository studentrepository;
	
	public List<Student> loginCheck(String username, String password) {
		if(username.equals("sumit")&& password.equals("1234"))
		{
		return studentrepository.findAll();
	}
	else
	{
		return null;
	}
	}
	public void saveStudent(Student student) {
		studentrepository.save(student);
	}
	public List<Student> deleteData(int rno) {
		studentrepository.deleteById(rno);
		return studentrepository.findAll();
	}
	@Override
	public List<Student> ViewData() {
		return studentrepository.findAll();
	}
	@Override
	public Student updateData(int rno) {
		return studentrepository.findById(rno).get();	
	}
	@Override
	public List<Student> updateStudent(Student student) {
		studentrepository.save(student);
		return studentrepository.findAll();
	}
}
