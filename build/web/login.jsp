<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | FaShi0nista</title>
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
    <jsp:include page="header.jsp"/>	
    <!--/header-->
	
    <section id="form" style="margin-top: 0px;"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
                                            <%
                                            String msg=(String)request.getAttribute("msg");
                                            
                                            %>
						<h2>Login to your account</h2><%
                                                if(msg==null)
                                                {  }
                                                else
                                                {%>
                                                <span style="color:red;"><%=msg%></span>   
                                                <%}
                                                %>
                                                <form action="lbean.jsp" method="post">
                                                    <input type="email" placeholder="Email Address" name="email" required/>
                                                    <input type="password" placeholder="Password" name="pass" required/>
							
                                                    <button type="submit" class="btn btn-default">Login</button><br><br>
                                                    
                                                </form>
                                                <a href="forgetpassword.jsp"> <span>
                                                        <button type="submit" style=" background: #FE980F;
                                                        border: medium none;
                                                        border-radius: 0;
                                                        color: #FFFFFF;
                                                        display: block;
                                                        font-family: 'Roboto', sans-serif;
                                                        padding: 6px 25px;"class="btn btn-default">Forget Password</button>
                                                                               </span>
                                                </a>
                                               
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<!--<h2 class="or">OR</h2>-->
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>New User Signup!</h2>
                                                <form action="rbean.jsp" method="post">
                                                    <input type="text" placeholder="Name" name="username" required/>
                                                    <input type="email" placeholder="Email Address" name="email" required/>
                                                    <input type="password" placeholder="Password" name="pass" required/>
                                                    <input type="text" pattern="[0-9]{10}" maxlength="10" placeholder="Enter contact number" name="mobile" required/>
							<button type="submit" class="btn btn-default">Signup</button>
                                                    <!--  <button type="button" class="btn btn-default">cancel</button> -->
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	
	
        <jsp:include page="footer.jsp"/><!--/Footer-->
	

  
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>