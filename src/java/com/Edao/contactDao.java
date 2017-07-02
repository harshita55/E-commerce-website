package com.Edao;
import java.sql.*;
 public  class contactDao
{
	
    private static contactDao ld=null;
    public static contactDao getInstance()
    {
    if(ld==null)
    ld=new contactDao();
    return ld;
    }
    
    
    public int insertRecord(com.vbean.contactbean lb)
    {
       int rows=0;
     
       try
       {
       Connection c=com.dbconnection.Loadconnection.getConnection();
       PreparedStatement ps = c.prepareStatement("insert into contact values(?,?,?,?,?)");   
       ps.setString(1,lb.getName());
        ps.setString(2,lb.getEmail());
       ps.setString(3,lb.getSubject());
       ps.setString(4,lb.getMobile());
       ps.setString(5,lb.getMessage());
      
       rows=ps.executeUpdate();
       return rows;   
       }catch(Exception e1){System.out.println(e1); 
       return rows;
        }
       
    }
}