package com.sms.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sms.app.Entity.UserLoginDetails;
import com.sms.app.repository.UserRepo;

@Service
public class UserLoginService {
    @Autowired
    UserRepo u_rep;
    public String addUser(UserLoginDetails s) {
        u_rep.save(s);
        return "redirect:/signup";
    }

    public UserLoginDetails getUser(String username) {
        return u_rep.findByUsername(username);
    }

    public String validateUser(String username, String password) {
        UserLoginDetails u = u_rep.findByUsername(username);
        if(u == null){
            return "redirect:/login";
        }
        if(u.getPassword().equals(password)){
            return "redirect:/viewStudents";
        }
        return "redirect:/login";
    }

}
