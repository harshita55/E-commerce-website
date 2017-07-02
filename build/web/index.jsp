<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en"> 
<head>
    
<meta charset="utf-8">
    
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<meta name="description" content="">
    <meta name="author" content="">
    
<title>Home | FaShi0nista</title>
   
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"  type="text/css" href="css/style11.css" />        
	<script src="js/jquery-1.9.1.js"></script>
    
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

    <jsp:include page="header.jsp"/><!--/header-->
	
    
    
	
<section id="slider"><!--slider-->
		
<div class="container" id="pro2">
			
<div class="row">
				
<div class="col-sm-12">
					
<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						
<ol class="carousel-indicators">
							
<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							
<li data-target="#slider-carousel" data-slide-to="1"></li>
							
<li data-target="#slider-carousel" data-slide-to="2"></li>


<li data-target="#slider-carousel" data-slide-to="3"></li>
						
</ol>
						
						
<div class="carousel-inner">
							
<div class="item active">
								

								
<div class="col-sm-6">
									
    <img src="images/banner-2.jpg" alt="" style="width: 1150px" height="300px "/>
									

								
</div>
							
</div>
							
<div class="item">
								

								
<div class="col-sm-6">
									
    <img src="images/livemusic.png" style="width: 1150px" height="300px " alt="" />
									

								
</div>
							
</div>							

    
    <div class="item">
								

								
<div class="col-sm-6">
									
    <img src="images/blog-one.jpg" style="width: 1150px" height="300px " alt="" />
									

								
</div>
							
</div>
    <div class="item">
								

								
<div class="col-sm-6">
									
    <img src="images/blog-two.jpg" style="width: 1150px" height="300px " alt="" />
									

								
</div>
							
</div>
							
						
</div>
						
						
<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							
<i class="fa fa-angle-left"></i>
				
</a>
						
<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							
<i class="fa fa-angle-right"></i>
						
</a>
					
</div>
					
				
</div>
			
</div>
		
<section>
		

				
				

					
				
    <jsp:include page="IndexProducts.jsp"/>			

	</section>	
</div>
	</section><!--/slider-->
        
            
        
        
        
	

	
	
<!--/Footer-->
<jsp:include page="footer.jsp"/>

<div id="example-popup" class="popup">
    <div class="popup-body"> <span class="popup-exit"></span>
        <div class="popup-content">
            <h2 class="popup-title">wishlist</h2>
            <jsp:include page="wishlist.jsp"/>
        </div>
    </div>    
</div>

  
   
 <script src="js/jquery.js"></script>
	
<script src="js/bootstrap.min.js"></script>
	
<script src="js/jquery.scrollUp.min.js"></script>
	
<script src="js/price-range.js"></script>
    
<script src="js/jquery.prettyPhoto.js"></script>
    
<script src="js/main.js"></script>

<div class="popup-overlay"></div>
<script async src="//static.addtoany.com/menu/page.js"></script>
</body>
</html>

<script type='text/javascript'>//<![CDATA[ 
$(window).load(function(){
jQuery(document).ready(function ($) {

    $('[data-popup-target]').click(function () {
        $('html').addClass('overlay');
        var activePopup = $(this).attr('data-popup-target');
        $(activePopup).addClass('visible');

    });

    $(document).keyup(function (e) {
        if (e.keyCode == 27 && $('html').hasClass('overlay')) {
            clearPopup();
        }
    });

    $('.popup-exit').click(function () {
        clearPopup();

    });

    $('.popup-overlay').click(function () {
        clearPopup();
    });

    function clearPopup() {
        $('.popup.visible').addClass('transitioning').removeClass('visible');
        $('html').removeClass('overlay');

        setTimeout(function () {
            $('.popup').removeClass('transitioning');
        }, 200);
    }

});
});//]]>  

</script>
