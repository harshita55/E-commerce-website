package com.vbean;
import java.sql.*;
 public  class RegBean
{

private String username;
private String email;
private String mobile;
private String pass;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }



public String insert()
{
    try
    {
        int rows=com.Edao.RegDao.getInstance().insertRecord(this);
        if(rows>0)
        {
            return "success";
        }
        else
        {
            return "error";
        }
    } catch(Exception e1){System.out.println(e1);
           return "error";
     }		
    }

}
