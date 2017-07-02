<%@page import="java.sql.*"%>
	
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"  type="text/css" href="css/style11.css" />        
	<script src="js/jquery-1.9.1.js"></script>
    
<link href="css/font-awesome.min.css" rel="stylesheet">
    
<link href="css/prettyPhoto.css" rel="stylesheet">
   
 <link href="css/price-range.css" rel="stylesheet">
    
<link href="css/animate.css" rel="stylesheet">
	
<link href="css/main.css" rel="stylesheet">
	
<link href="css/responsive.css" rel="stylesheet">
<link rel="shortcut icon" href="images/ico/favicon.ico">
    
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
   
 <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    
<link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">

<jsp:include page="header.jsp"/>

<section>
    <jsp:include page="leftmenu.jsp"/>
<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						
                                                <%  System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
                                                                String search=request.getParameter("k");
                                                                try {
                                                                    Connection c=com.dbconnection.Loadconnection.getConnection();
                                                                     PreparedStatement ps = c.prepareStatement("select * from product2 where brand LIKE '%"+search+"%' or name LIKE '"+search+"%' or gen LIKE '"+search+"'");
                                                                     ResultSet rs=ps.executeQuery();
                                                                     while(rs.next())
                                                                     {%>
                                                                  <div class="col-sm-4">   
							<div class="product-image-wrapper">
								<div class="single-products">
									
                                                                    
                                                                    
                                                                    <div class="productinfo text-center">
                                                                        <img src="images/<%=rs.getString("image")%>"  alt="" style="height: 350px" width="350px"/>
										<h2><%=rs.getString("price") %></h2>
										<p><%=rs.getString("brand") %></p>
                                                                                <p><%=rs.getString("size") %></p>
										
									</div>
                                                                                	<div class="product-overlay">
										<div class="overlay-content">
											<h2><%=rs.getString("price") %></h2>
										<p><%=rs.getString("brand") %></p>
                                                                                <p><%=rs.getString("size") %></p>
                                                                                <a href="cart/.jsp" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
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
</section>
                                                                
                                                                <jsp:include page="footer.jsp"/>