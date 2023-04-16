package com.sms.app;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sms.app.Entity.Student;
import com.sms.app.service.StudentService;

@Controller
public class AppController {
    @Autowired
    StudentService service;

    @GetMapping("/")
    public String home(){
        return "index";
    }
    @GetMapping("/viewStudents")
    public String viewStudents(Model model){
        Iterable<Student> students = service.getStudents();
        model.addAttribute("students", students);
        return "viewStudents";
    }
    @GetMapping("/addStudent")
    public String viewAddStudent(){
        
        return "addStudent";
    }

    @PostMapping("/addStudent")
    public String addStudent(Student s) throws DataIntegrityViolationException{
        ModelAndView mv = new ModelAndView("addStudent");
        mv.addObject("isAdded", false);
        if(service.addStudent(s) != null){
        mv.addObject("isAdded", true);
        }
        return viewAddStudent();
    }

    @PostMapping("/updateStudent")
    public String updateStudent(Student s)throws DataIntegrityViolationException{
        System.out.println("put update student "+s);
        service.updateStudent(s);  
        return "redirect:/viewStudents";
    }

    @GetMapping("/updateStudent/{id}") 
    public String viewUpdateStudent(@PathVariable int id, Model m){
        Student s = service.getStudent(id);
        if(s == null){
            return "redirect:/viewStudents";
        }
        System.out.println("get update student "+id);
        return "updateStudent";
    }

    @GetMapping("/deleteStudent/{id}")
    public String deleteStudent(@PathVariable Integer id){
        return service.deleteStudent(id);
    }

}
