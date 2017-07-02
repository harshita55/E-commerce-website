	
<%@page import="java.sql.*"%>
	
<!DOCTYPE html>
<html lang="en">
 
<head>
   
 <meta charset="utf-8">
    
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<meta name="description" content="">
    
<meta name="author" content="">
    
<title>sale | FaShi0nista!</title>
   
 <link href="css/bootstrap.min.css" rel="stylesheet">
   
 <link href="css/font-awesome.min.css" rel="stylesheet">
    
<link href="css/prettyPhoto.css" rel="stylesheet">
    
<link href="css/price-range.css" rel="stylesheet">
    
<link href="css/animate.css" rel="stylesheet">
	
<link href="css/main.css" rel="stylesheet">
	
<link href="css/responsive.css" rel="stylesheet">
    
<!--[if lt IE 9]>
    
<script src="js/html5shiv.js"></script>
   
 <script src="js/respond.min.js"></script>
  
  <![endif]-->       
    
<link rel="shortcut icon" href="images/ico/favicon.ico">
    

<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
 
   <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
  
  <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

	<script type="text/javascript">
		function saleProduct(a,b)
		{
		var ajx;
             // alert(a+" "+b);
 	   if (window.XMLHttpRequest)
 	   {// If the browser if IE7+[or] Firefox[or] Chrome[or] Opera[or]Safari
 	     ajx=new XMLHttpRequest();
 	   }
 	  else
 	   {//If browser is IE6, IE5
 	     ajx=new ActiveXObject("Microsoft.XMLHTTP");
 	   }
	ajx.onreadystatechange=function()
	{
	  if (ajx.readyState==4 && ajx.status==200)
	  { 
	    document.getElementById("sale").innerHTML=ajx.responseText;
	   }
	}
	ajx.open("GET","saleproduct.jsp?range1="+a+"&range2="+b,true);
	ajx.send();
	} 
     </script> 
     <body> 
          <jsp:include page="header.jsp"/>
           <section>
              
                        <div class="col-sm-3">


                            <div class="brands_products"><!--brands_products-->
                                    <br><hr><h2>DISCOUNTS</h2><hr>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
									
                                                                        <li><a onclick="saleProduct('60','70')"/> <span class="pull-right"></span>DISCOUNT 60-70%</a></li>
									<li><a onclick="saleProduct('50','60')"> <span class="pull-right"></span>DISCOUNT 50-60%</a></li>
                                                                        <li><a onclick="saleProduct('40','50')"> <span class="pull-right"></span>DISCOUNT 40-50%</a></li>
									<li><a onclick="saleProduct('30','40')"> <span class="pull-right"></span>DISCOUNT 30-40%</a></li>
                                                                        <li><a onclick="saleProduct('20','30')"> <span class="pull-right"></span>DISCOUNT 20-30%</a></li>
                                                                        <li><a onclick="saleProduct('5','20')"> <span class="pull-right"></span>others</a></li>
								
									
								</ul>
							</div>
				</div><!--/brands_products-->
                           </div>	
   
     
     
                       <div id="sale"><br>
             
             
  				
                                                <div class="col-sm-9 padding-right">
					
				
					

                       <div class="features_items"><!--features_items-->
                                                        <h2 class="title text-center">Features Items</h2>
						
                                                            <%
                                                                try {
                                                                    Connection c=com.dbconnection.Loadconnection.getConnection();
                                                                     PreparedStatement ps = c.prepareStatement("select * from product2 where discount!=0");
                                                                     
                                                                     ResultSet rs=ps.executeQuery();
                                                                     while(rs.next())
                                                                     {%>
                                                                  <div class="col-sm-4">   
							<div class="product-image-wrapper">
								<div class="single-products">
									
                                                                    
                                                                    
                                                                    <div class="productinfo text-center">
                                                                        <img src="images/<%=rs.getString("image")%>"  alt="" style="height: 400px" width="400px"/>
										<h2><%=rs.getString("price") %></h2>
										<p><%=rs.getString("brand") %></p>
                                                                                <p><%=rs.getString("size") %></p>
										
									</div>
                                                                                	<div class="product-overlay">
										<div class="overlay-content">
											<h2><%=rs.getString("price") %></h2>
										<p><%=rs.getString("brand") %></p>
                                                                                <p><%=rs.getString("size") %></p>
                                                                                <a href="cart/addcart.jsp?name=<%=rs.getString("name")%>&price=<%=rs.getInt("price")%>&description=<%=rs.getString("description")%>&image=<%=rs.getString("image")%>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                                                                <li><a href="productdetails.jsp?ok=<%=rs.getInt("id")%>"><i class="fa fa-plus-square"></i>Description</a></li>
									</ul>
								</div>
							</div>
					 </div>
                                                     <%}
                                                                }
                                                                catch(Exception e)
                                                                {
                                                                    out.println(e);
                                                                }
                                                                %>
                                                                
                                               
                                       
                                  </div>	
         </div>
     </section>
     
   
         <jsp:include page="footer.jsp"/>  
 </body>



 <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="js/gmaps.js"></script>
	<script src="js/contact.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
