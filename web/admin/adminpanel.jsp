<!DOCTYPE html>
<html lang="en">
 
<head>
   
 <meta charset="utf-8">
    
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<meta name="description" content="">
    
<meta name="author" content="">
    
<title>ADMIN | FaShi0nista!</title>


<script type="text/javascript">
		function show(a)
		{
		var ajx;
                
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
	    document.getElementById("mydiv").innerHTML=ajx.responseText;
	   }
	}
	ajx.open("GET",a,true);
	ajx.send();
	} 
     </script>
     
     
     
     
   
 <link href="../css/bootstrap.min.css" rel="stylesheet">
   
 <link href="../css/font-awesome.min.css" rel="stylesheet">
    
<link href="../css/prettyPhoto.css" rel="stylesheet">
    
<link href="../css/price-range.css" rel="stylesheet">
    
<link href="../css/animate.css" rel="stylesheet">
	
<link href="../css/main.css" rel="stylesheet">
	
<link href="../css/responsive.css" rel="stylesheet">
    
<!--[if lt IE 9]>
    
<script src="js/html5shiv.js"></script>
   
 <script src="js/respond.min.js"></script>
  
  <![endif]-->       
    
<link rel="shortcut icon" href="../images/ico/favicon.ico">
    

<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../images/ico/apple-touch-icon-144-precomposed.png">
    
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="../images/ico/apple-touch-icon-114-precomposed.png">
 
   <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../images/ico/apple-touch-icon-72-precomposed.png">
  
  <link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
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
							
    <a href="../index.jsp"><img src="../images/home/Logo 1.jpg" style="width: 250px;height: 120px; "alt="" /></a>
						
</div>

					
</div>
					
<div class="col-sm-8">
						
<div class="shop-menu pull-right">
							
<ul class="nav navbar-nav">
								

								
<li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
								
<li><a href="../checkout.jsp"><i class="fa fa-crosshairs"></i> Checkout</a></li>
								
<li><a href="../cart.jsp"><i class="fa fa-shopping-cart"></i> Cart</a></li>	
    </header>
    

    <body>
   
    <section id="form" style="margin-top: 0px;"><!--form-->
		
			
				<div class="col-sm-4 col-sm-offset-0">
					<div class="login-form"><!--login form-->
						<form  method="post" enctype="multipart/form-data">
                                                    <h3><a onclick="show('edit.jsp')"/>EDIT PROFILE</h3>
                                                    
                                                    <h3><a onclick="show('AddProduct.jsp')"/>ADD PRODUCT</h3>
                                                     <h3>UPDATE PRODUCT</h3>
                                                  
                                                     <h3><a href="../logout.jsp"/>LOGOUT</h3>
                                                 </form>

                                               
                                         </a>
                                               
					</div>
				</div>
				
				
                                    <div  id="mydiv"><!--sign up form-->
                                            <jsp:include page="adminbody.jsp"/>
                                          
					</div><!--/sign up form-->
				
				
	</section><!--/form-->				

    
    <jsp:include page="../footer.jsp"/><!--/Footer-->
	

  
    <script src="../js/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="js/gmaps.js"></script>
	<script src="../js/contact.js"></script>
	<script src="../js/price-range.js"></script>
    <script src="../js/jquery.scrollUp.min.js"></script>
    <script src="../js/jquery.prettyPhoto.js"></script>
    <script src="../js/main.js"></script>
</body>
</html>