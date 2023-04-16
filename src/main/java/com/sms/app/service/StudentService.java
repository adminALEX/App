package com.sms.app.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sms.app.Entity.Student;
import com.sms.app.repository.CRUDRepo;

@Service
public class StudentService {
    @Autowired
    CRUDRepo rep;
    public void putStudent(Student s){
        rep.save(s);
    }
    public Student getStudent(int id){
        return rep.findById(id).orElse(null);
    }
    public Iterable<Student> getStudents(){
        return rep.findAll();
    }
    public Student updateStudent(Student s, int id){
        Student ex = rep.findById(id).orElse(null);
        ex.setName(s.getName());
        ex.setEmail(s.getEmail());
        ex.setDob(s.getDob());
        rep.save(ex);
        return ex;
    }
    public Student updateStudent(Student s){
        Student ex = rep.findById(s.getId()).orElse(null);
        ex.setName(s.getName());
        ex.setEmail(s.getEmail());
        ex.setDob(s.getDob());
        rep.save(ex);
        return ex;
    }

    public String deleteStudent(int id){
        rep.deleteById(id);
        System.out.println("Deleted student. ID = "+id);
        return "redirect:/viewStudents";
    }

    public String addStudent(Student s) {
        rep.save(s);
        return "redirect:/addStudent";
    }

}
