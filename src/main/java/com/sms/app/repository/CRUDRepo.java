package com.sms.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.sms.app.Entity.Student;
@RepositoryRestResource(collectionResourceRel = "students", path = "students")
public interface CRUDRepo extends JpaRepository<Student, Integer>{
    
}
