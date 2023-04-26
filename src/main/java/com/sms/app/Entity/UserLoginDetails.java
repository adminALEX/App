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
    @Column(name = "username")
    private String username;
    @Column(name = "password")
    private String password;
    @Column(name="con_password")
    private String con_password;

    public UserLoginDetails() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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
        result = prime * result + ((username == null) ? 0 : username.hashCode());
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
        if (username == null) {
            if (other.username != null)
                return false;
        } else if (!username.equals(other.username))
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

    public UserLoginDetails(String username, String password, String con_password) {
        this.username = username;
        this.password = password;
        this.con_password = con_password;
    }

    @Override
    public String toString() {
        return "UserLoginDetails [username=" + username + ", password=" + password + ", con_password=" + con_password
                + "]";
    }
    
      
}