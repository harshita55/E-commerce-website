<%@page import="com.oreilly.servlet.MultipartRequest"%>

<jsp:useBean id="t3" class="com.vbean.productbean"/>
<jsp:setProperty name="t3" property="*"/>

<%   
    MultipartRequest m=new MultipartRequest(request,"C:\\Users\\Dell\\Documents\\NetBeansProjects\\fashionista\\web\\images",10*1024*1024 );
    String model=m.getParameter("name");
    String size=m.getParameter("size");
    int price=Integer.parseInt( m.getParameter("price"));
     int discount=Integer.parseInt( m.getParameter("discount"));
    String brand=m.getParameter("brand");
    String shortdesc=m.getParameter("shortdesc");
    String image=m.getOriginalFileName("image");
    String description=m.getParameter("description");
    String gen=m.getParameter("gen");
          out.println("uploaded successfully");
      

    t3.setName(model);
    t3.setDiscount(discount);
        t3.setSize(size);t3.setGen(gen);t3.setPrice(price);t3.setBrand(brand);t3.setShortdesc(shortdesc);t3.setImage(image);t3.setDescription(description);
     String str=t3.insert();
    if(str.equals("success"))
        response.sendRedirect("adminpanel.jsp");
    else
    {
        response.sendRedirect("../error.jsp");
    }
%>
