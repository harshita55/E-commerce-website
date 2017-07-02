package com.Edao;

import java.sql.*;

public class productdao {
     private static productdao ld=null;
    public static productdao getInstance()
    {
    if(ld==null)
    ld=new productdao();
    return ld;
    }

    
    
     public int insertRecord(com.vbean.productbean lb)
    {
       int rows=0;
     
          try {
   Connection c=com.dbconnection.Loadconnection.getConnection();System.out.println(c);
  PreparedStatement ps = c.prepareStatement("insert into product2(name,size,price,brand,image,description,shortdesc,gen,discount) values(?,?,?,?,?,?,?,?,?)");
 // PreparedStatement ps = c.prepareStatement("insert into mens(model,size,price) values (?,?,?)");
  
            ps.setString(1,lb.getName());
           ps.setString(2,lb.getSize());
            ps.setInt(3,lb.getPrice());
             ps.setString(4,lb.getBrand());
             ps.setString(5,lb.getImage());
                      
             ps.setString(6,lb.getDescription());
             ps.setString(7,lb.getShortdesc());
              ps.setString(8,lb.getGen());
                 ps.setInt(9,lb.getDiscount());

         
              rows=ps.executeUpdate();
       return rows;   
       }catch(Exception e1){System.out.println(e1);
       System.out.print("error catch1111ss");
       return rows;
        }
       
    }
}