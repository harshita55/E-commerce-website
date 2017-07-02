package com.vbean;
 public  class contactbean
{

private String name;
private String email;
private String subject;
private String mobile;
private String message;

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

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    


public String insert()
{
    try
    {
        int rows=com.Edao.contactDao.getInstance().insertRecord(this);
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
