package com.Edao;
import java.sql.*;
 public  class checkdao
{
	
    private static checkdao ld=null;
    public static checkdao getInstance()
    {
    if(ld==null)
    ld=new checkdao();
    return ld;
    }
    
    
    public int insertRecord(com.vbean.checkbean lb)
    {
       int rows=0;
     
       try
       {
       Connection c=com.dbconnection.Loadconnection.getConnection();
       PreparedStatement ps = c.prepareStatement("insert into checkout values(?,?,?,?,?,?,?,?)");   
       ps.setString(1,lb.getName());
       ps.setString(2,lb.getEmail());
       ps.setString(3,lb.getAddress());
       ps.setInt(4,lb.getZip());
       ps.setInt(5,lb.getMob());
       ps.setString(6,lb.getCountry());
       ps.setString(7,lb.getState());
       ps.setString(8,lb.getCity());
      
       rows=ps.executeUpdate();
       return rows;   
       }catch(Exception e1){System.out.println(e1); 
       return rows;
        }
       
    }
}