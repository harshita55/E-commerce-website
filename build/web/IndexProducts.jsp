<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
 

<body>
<jsp:include page="leftmenu.jsp"/>				

<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						
                                                            <%
                                                                try {
                                                                    Connection c=com.dbconnection.Loadconnection.getConnection();
                                                                     PreparedStatement ps = c.prepareStatement("select * from product2 where id > (select max(id) - 10 from product2)");
                                                                     
                                                                     ResultSet rs=ps.executeQuery();
                                                                     while(rs.next())
                                                                     {%>
                                                                  <div class="col-sm-4">   
							<div class="product-image-wrapper">
								<div class="single-products">
									
                                                                    
                                                                    
                                                                    <div class="productinfo text-center">
                                                                        <img src="images/<%=rs.getString("image")%>"  alt="" style="height: 350px" width="400px"/>
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
</body>