

package com.vbean;


public class productbean {
     private String name;
     private int id;
     private String size;
     private int price;
     private int discount;

   
    private String brand;
    private String image;
     private String shortdesc;
        private String description;
        private String gen;
 public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getGen() {
        return gen;
    }

    public void setGen(String gen) {
        this.gen = gen;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

   
    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getShortdesc() {
        return shortdesc;
    }

    public void setShortdesc(String shortdesc) {
        this.shortdesc = shortdesc;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

   
   
   
    public String insert()
{
    try
    {
        int rows=com.Edao.productdao.getInstance().insertRecord(this);
        if(rows>0)
        {  
            return "success";
        }
        else
        {
          
            return "error";
        }
    } catch(Exception e1){
        {
            return "error";
            
        }
     }		
    }

}