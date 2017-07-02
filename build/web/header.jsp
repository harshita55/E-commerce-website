<%@page import="com.dbconnection.Loadconnection"%>
<%@page import="java.sql.*"%>
<header id="header"><!--header-->
		
<div class="header_top"><!--header_top-->
			
<div class="container">
				
<div class="row">
					
<div class="col-sm-6">
					
<div class="contactinfo">
	
						
<ul class="nav nav-pills">
								
<li><a href="#"><i class="fa fa-phone">
</i> +2 95 01 88 821</a></li>
		
						
<li><a href="#">
<li class="fa fa-envelope">
</li> info@domain.com</a></li></ul>
</div>
</div>
					
<div class="col-sm-6">
						
<div class="social-icons pull-right">
							
<ul class="nav navbar-nav">
								
<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								
<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								
<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								
<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							
</ul>
						
</div>
					
</div>
				
</div>
			
</div>
		
</div><!--/header_top-->
		
		
<div class="header-middle"><!--header-middle-->
			
<div class="container">
				
<div class="row">
					
<div class="col-sm-4">
						
<div class="logo pull-left">
							
    <a href="index.jsp"><img src="images/home/Logo 1.jpg" style="width: 250px;height: 120px; "alt="" /></a>
						
</div>

					
</div>
					
<div class="col-sm-8">
						
<div class="shop-menu pull-right">
							
<ul class="nav navbar-nav">
								
 <li><a href=#> ACCOUNT</a></li>
								
 <li><a href="wishlist.jsp"><i class="fa fa-star"></i> Wishlist</a></li>

<!--<li><a  data-popup-target="#example-popup">#wishlist</a></li>

<div id="example-popup" class="popup">
    <div class="popup-body">	<span class="popup-exit"></span>

        <div class="popup-content">
            	

        </div>
    </div>
</div>-->
<div class="popup-overlay"></div>

<li><a href="checkout.jsp"><i class="fa fa-crosshairs"></i> Checkout</a></li>
								
<li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Cart</a></li>
<%!String name="";%> 
<%
     
     String to=(String) session.getAttribute("email");
      try
    {
    Connection c=Loadconnection.getConnection();
    PreparedStatement ps = c.prepareStatement("select * from register where email=?");
    ps.setString(1,to);
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
       name=rs.getString("username"); 
    }
    } catch(Exception e1)
            {out.println(e1);
            }
                    
                    if (to==null)
                    {
                    %>
                     <li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
                     <%} 
                    else
                    {%>
                      <li><a href="logout.jsp"><i class="fa fa-lock"></i> Logout</a><label style="color: black;"> WELCOME:-  <%=name%> </label></li>
                        
                      
                    <%}%>
								
                    
							
</ul>
						
</div>
					
</div>
				
</div>
			
</div>
		
</div><!--/header-middle-->
	
		
<div class="header-bottom"><!--header-bottom-->
			
<div class="container">
				
<div class="row">
					
<div class="col-sm-9">
						
<div class="navbar-header">
							
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								
<span class="sr-only">Toggle navigation</span>
								
<span class="icon-bar"></span>
								
<span class="icon-bar"></span>
								
<span class="icon-bar"></span>
							
</button>
						
</div>
						
<div class="mainmenu pull-left">
							
<ul class="nav navbar-nav collapse navbar-collapse">
								
<li><a href="index.jsp" class="active">Home</a></li>
								
 <script type="text/javascript">
		function showProduct(a,b)
		{
		var ajx;
             // alert(a);
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
	    document.getElementById("pro2").innerHTML=ajx.responseText;
	   }
	}
	ajx.open("GET","showProduct.jsp?name="+a+"&gen="+b,true);
	ajx.send();
	} 
     </script> 

<li class="dropdown"><a href="#">Men<i class="fa fa-angle-down"></i></a>
    <ul role="menu" class="sub-menu">
                                        
<li><a onclick="showProduct('shirt','men')">Shirt</a></li>
										
<li><a onclick="showProduct('T-shirt','men')">T-Shirt</a></li> 
										
<li><a onclick="showProduct('other','men')">Other</a></li> 
										
                             
</ul>
<li class="dropdown"><a href="#">Women<i class="fa fa-angle-down"></i></a>
        <ul role="menu" class="sub-menu">
                                        
<li><a onclick="showProduct('shirt','women')">Shirt</a></li>
										
<li><a onclick="showProduct('T-shirt','women')">T-Shirt</a></li> 
										
<li><a onclick="showProduct('other','women')">Accessories</a></li> 
<li><a onclick="showProduct('footwear','women')">Footwear</a></li>
										


                             
        </ul>	
 <li><a href="sale.jsp">Sale</a></li>
 <li><a href="aboutus.jsp">About Us</a></li>
								
<li><a href="contact.jsp">Contact</a></li>
							
</ul>
						
</div>
					
</div>
    <script>
        function check1(a)
        {
            window.location.href="Search.jsp?k="+a;
        }
    </script>					
<div class="col-sm-3">
						
<div class="search_box pull-right" >
							
    <input type="text"  placeholder="Search" onblur="check1(this.value)"/>					
</div>
					
</div>
				
</div>
			
</div>
		
</div>
<!--/header-bottom-->
	
</header>