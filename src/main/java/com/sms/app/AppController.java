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
import com.sms.app.Entity.UserLoginDetails;
import com.sms.app.service.StudentService;
import com.sms.app.service.UserLoginService;

@Controller
public class AppController {
    @Autowired
    StudentService service;
    @Autowired
    UserLoginService u_service;
    @GetMapping("/")
    public String home(){
        return "home";
    }

    @GetMapping("/login")
    public String login(){
        return "login";
    }

    @GetMapping("/signup")
    public String signup(){
        return "signup";
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

    @PostMapping("/signup")
    public String signup(UserLoginDetails user){
        ModelAndView mv = new ModelAndView("signup");
        mv.addObject("isAdded", false);
        System.out.println(user.getEmail());
        UserLoginDetails u = new UserLoginDetails(user.getEmail(), user.getPassword(), user.getCon_password());
        System.out.println(u);
        u_service.addUser(u);
        return signup();
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
        m.addAttribute("id", id);
        System.out.println("get update student "+id);
        return "updateStudent";
    }

    @GetMapping("/deleteStudent/{id}")
    public String deleteStudent(@PathVariable Integer id){
        return service.deleteStudent(id);
    }

}
