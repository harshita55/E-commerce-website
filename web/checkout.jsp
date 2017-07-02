<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Checkout | FaShi0nista</title>
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
    <jsp:include page="header.jsp"/> <!--/header-->

	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Check out</li>
				</ol>
			</div><!--/breadcrums-->

			
			<div class="register-req">
				<p>Please fill the following details to place your order</p>
			</div><!--/register-req-->

			<div class="shopper-informations">
				<div class="row">
					<div class="col-sm-5 clearfix">
						<div class="bill-to">
							<p>Bill To</p>
                                                        <div>
							<div class="form-one">
                                                            <form action="checkbean.jsp">
                                                                <input name="name" type="text" placeholder=" Name">
                                                                <input name="email" type="text" placeholder="Email">
                                                                <input name="address" type="text" placeholder="Address ">
                                                                <input name="zip" type="text" placeholder="Zip / Postal Code *">
                                                                         <input name="mob" type="text" placeholder="Mobile Phone">
                                                                         <select name="country">
										<option>-- Country --</option>
										<option>United States</option>
										<option>Bangladesh</option>
										<option>UK</option>
										<option>India</option>
                                                                                <option>Pakistan</option>
										<option>Canada</option>
										<option>Dubai</option>
                                                                        </select><hr>
                                                                          <input name="state" type="text" placeholder="State">
                                                                          <input name="city" type="text" placeholder="City">  
                                                                          <button  type="submit" style=" background: #FE980F;
                                                        border: medium none;
                                                        border-radius: 0;
                                                        color: #FFFFFF;
                                                        display: block;
                                                        font-family: 'Roboto', sans-serif;
                                                        padding: 6px 25px;" class="btn btn-default">ORDER PLACE </button>
                                
                                                            </form>
									
								
							</div>
							
						</div>
					</div>
					
				</div>
			</div>
			
			
					<span>
                                            <label><input type="radio" name="pay"> Direct Bank Transfer</label>
					</span>
					<span>
                                            <label><input type="radio" name="pay"> Check Payment</label>
					</span>
					<span>
						<label><input type="radio" name="pay"> Paypal</label>
					</span>
				
                                              
                </div>
                </div><br><br>
            
                                                       
	</section> <!--/#cart_items-->

	

        <jsp:include page="footer.jsp"/><!--/Footer-->
	


    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>