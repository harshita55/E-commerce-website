package com.vbean;
import java.sql.*;
public  class LoginBean
{
private String email;
private String pass;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    
    
    public String validate()
    {
            try
            {

            ResultSet rs=com.Edao.LoginDao.getInstance().verifylogin(this);
            if(rs.next())
            {
                String cat=rs.getString("category");
                if(cat.equals("admin"))
                    return "admin";
                else
                    return "success";
            }
            else
            {
            return "login";
            }
            }
            catch(Exception e1)
            {System.out.println(e1); 
            return "error"; }
    }
}