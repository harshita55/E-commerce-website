package com.vbean;
import java.sql.*;
 public  class checkbean
{

private String name;
private String email;
private String address;
private int zip;
private int mob;
private String country;
private String state;
private String city;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getZip() {
        return zip;
    }

    public void setZip(int zip) {
        this.zip = zip;
    }

    public int getMob() {
        return mob;
    }

    public void setMob(int mob) {
        this.mob = mob;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    


public String insert()
{
    try
    {
        int rows=com.Edao.checkdao.getInstance().insertRecord(this);
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
