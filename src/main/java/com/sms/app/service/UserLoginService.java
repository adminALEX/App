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

    public UserLoginDetails getUser(String email) {
        return u_rep.findByEmail(email);
    }

    public String validateUser(String email, String password) {
        UserLoginDetails u = u_rep.findByEmail(email);
        if(u == null){
            return "redirect:/login";
        }
        if(u.getPassword().equals(password)){
            return "redirect:/login";
        }
        return "redirect:/login";
    }
    
}
