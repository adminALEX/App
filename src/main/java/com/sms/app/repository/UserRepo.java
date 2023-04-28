package com.sms.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.sms.app.Entity.UserLoginDetails;
@RepositoryRestResource(collectionResourceRel = "users", path = "users")
public interface UserRepo extends JpaRepository<UserLoginDetails, Integer>{
    UserLoginDetails findByUsername(String email);   
}