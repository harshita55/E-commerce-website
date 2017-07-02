<!DOCTYPE html>
<html lang="en">

    <head>
	
        <link rel="stylesheet"  type="text/css" href="css/style11.css" />        
	<script src="js/jquery-1.9.1.js"></script>

    </head>
    <body>

<button id="popup_window" data-popup-target="#example-popup">click it</button>

<div id="example-popup" class="popup">
    <div class="popup-body">	<span class="popup-exit"></span>

        <div class="popup-content">
            	<h2 class="popup-title">hello</h2>

        </div>
    </div>
</div>
<div class="popup-overlay"></div>

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
