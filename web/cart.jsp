<!DOCTYPE html>
<html lang="en">
<%@ page language="java" import="java.util.*" pageEncoding="windows-1252"%>


<%@page import="com.cart.CartItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Cart | FaShiOnista</title>
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

<body>
    <jsp:include page="header.jsp"/>  <!--/header-->
 <jsp:useBean id="crt" class="com.cart.Cart" scope="session"/>
<jsp:setProperty name="crt" property="*" />
<%
if(crt.getName()=="")
{
out.println("<div align='center'>Welcome</div>");
}


ArrayList al=(ArrayList)application.getAttribute("cartdetail");

if(al==null)
{
//out.println("Please add the material in the cart");
out.println("<font size='+1' color='#FGHTRE'>Cart is Empty</font>");

}
 %>


	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Shopping Cart</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Item</td>
							<td class="description"></td>
							<td class="price">Price</td>
							<td class="quantity">Quantity</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>
                                        
                                        
					<tbody>
                                            <%

                                                Iterator it=al.iterator();
                                                int i=0;
                                                double grant_total=0.0;
                                                out.println("<form action='updatecart.jsp'>");
                                                while(it.hasNext())
                                                {


                                                        CartItem c=(CartItem)it.next();




                                                        double total=c.getPrice()*c.getQuantity();

                                                        grant_total+=total;
                                                        i++;


                                               %>

						<tr>
							<td class="cart_product">
                                                            <a href=""><img src="images/<%= c.getImage()%>" style="height: 100px" width="100px" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href="#"><%=c.getShortdescription()%></a></h4>
								<p>Web ID: 1089772</p>
							</td>
							<td class="cart_price">
								<p><%=c.getPrice()%></p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" href=""> + </a>
									<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
									<a class="cart_quantity_down" href=""> - </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price"><%=c.getPrice()%></p>
							</td>
                                                        
							<td class="cart_delete">
                                                            <a class="cart_quantity_delete" href="cart/removecart.jsp?index=<%=i%>"><i class="fa fa-times"></i></a>
							</td>
						</tr>
                                                <%}%>
				     </tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->

	<section id="do_action">
		<div class="container">
			<div class="heading">
				<h3>Proceed to buy!!</h3>
				<!--<p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>-->
			</div>
			<div class="row">
				<!--<div class="col-sm-6">
					<div class="chose_area">
						<ul class="user_option">
							<li>
								<input type="checkbox">
								<label>Use Coupon Code</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Use Gift Voucher</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Estimate Shipping & Taxes</label>
							</li>
						</ul>
						<ul class="user_info">
							<li class="single_field">
								<label>Country:</label>
								<select>
									<option>United States</option>
									<option>Bangladesh</option>
									<option>UK</option>
									<option>India</option>
									<option>Pakistan</option>
									<option>Ucrane</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
								
							</li>
							<li class="single_field">
								<label>Region / State:</label>
								<select>
									<option>Select</option>
									<option>Dhaka</option>
									<option>London</option>
									<option>Dillih</option>
									<option>Lahore</option>
									<option>Alaska</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
							
							</li>
							<li class="single_field zip-field">
								<label>Zip Code:</label>
								<input type="text">
							</li>
						</ul>
						<a class="btn btn-default update" href="">Get Quotes</a>
						<a class="btn btn-default check_out" href="">Continue</a>
					</div>
				</div>-->
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
							<li>Cart Sub Total <span>Rs 59</span></li>
							<li>Eco Tax <span>RS 2</span></li>
							<li>Shipping Cost <span>Free</span></li>
							<li>Total <span>RS <%=grant_total%></span></li>
						</ul>
							<a class="btn btn-default update" href="">Update</a>
                                                        <a class="btn btn-default check_out" href="checkout.jsp">Check Out</a>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->

        <jsp:include page="footer.jsp"/><!--/Footer-->
	


    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>