package com.sms.app.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 * UserLoginDetails
 */
@Entity
@Table(name = "user_login_details")
public class UserLoginDetails {
    @Id
    @Column(name = "email")
    private String email;
    @Column(name = "password", type="password")
    private String password;
    @Column(name="con_password")
    private String con_password;

    public UserLoginDetails() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCon_password() {
        return con_password;
    }

    public void setCon_password(String con_password) {
        this.con_password = con_password;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((email == null) ? 0 : email.hashCode());
        result = prime * result + ((password == null) ? 0 : password.hashCode());
        result = prime * result + ((con_password == null) ? 0 : con_password.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        UserLoginDetails other = (UserLoginDetails) obj;
        if (email == null) {
            if (other.email != null)
                return false;
        } else if (!email.equals(other.email))
            return false;
        if (password == null) {
            if (other.password != null)
                return false;
        } else if (!password.equals(other.password))
            return false;
        if (con_password == null) {
            if (other.con_password != null)
                return false;
        } else if (!con_password.equals(other.con_password))
            return false;
        return true;
    }

    public UserLoginDetails(String email, String password, String con_password) {
        this.email = email;
        this.password = password;
        this.con_password = con_password;
    }

    @Override
    public String toString() {
        return "UserLoginDetails [email=" + email + ", password=" + password + ", con_password=" + con_password
                + "]";
    }
    
      
}