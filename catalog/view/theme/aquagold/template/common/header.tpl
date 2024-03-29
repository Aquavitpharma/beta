<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/aquagold/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<!--CSS Start here-->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/aquagold/stylesheet/style.css">
<!--Resonsive CSS Start here-->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/aquagold/stylesheet/responsive.css">
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
    // Register
	$('#dropdown').change(function() {
        if (this.value == '1')
        {
           $('#message1').slideDown();
		   $('#licence_number').attr('required', 'required');
        }
        else
        {
		   $('#message1').slideUp();
		   $('#licence_number').removeAttr('required');
        }
    });

    $(".check-show").click(function(){
		if (this.checked)
		{
			$(".small_input").slideDown();
			$('#referred_by').attr('required', 'required');
		}
		else
		{
			$(".small_input").slideUp();
			$('#referred_by').removeAttr('required');
		}
	});
	
	// Home
	$("#flip1").click(function(){
		$("#panel").slideDown("slow");
		$('#push_up').hide();
    });
	$("#flip2").click(function(){
		$("#panel").slideUp("slow");
		$('#push_up').show();
    });
	
	// Voucher
	$(".check-show1").click(function(){
		if (this.checked)
		{
			$(".small_input1").slideDown();
			$('#shipping_address').attr('required', 'required');
			
			$(".small_input2").slideUp();
			$('#to_email').removeAttr('required');
			$('#to_email').val('');
		}
		else
		{
			$(".small_input1").slideUp();
			$('#shipping_address').removeAttr('required');
			$('#shipping_address').val('');
		}
	});
	
	$(".check-show2").click(function(){
		if (this.checked)
		{
			$(".small_input2").slideDown();
			$('#to_email').attr('required', 'required');
			$('#to_email').val($('#from_email').val());
			
			$(".small_input1").slideUp();
			$('#shipping_address').removeAttr('required');
			$('#shipping_address').val('');
		}
		else
		{
			$(".small_input2").slideUp();
			$('#to_email').removeAttr('required');
			$('#to_email').val('');
		}
	});
});


/*window.onload=
window.onresize=function(){
var c=document.getElementById('body_container');
var h = window.innerWidth * 2/3 - 15;
//alert(h);
c.style.height = h
+"px";     
}*/

</script>
<style>
#panel {
	display:none;
}
#body_container {
	min-height: 799px;
}
<?php if($route != 'common/home') echo 'section.body_container { background: none; }'; ?>
</style>

<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!-- Autofill search -->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/aquagold/stylesheet/livesearch.css" />
<script src="catalog/view/javascript/jquery/livesearch.js"></script>
<!-- Autofill search END-->
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/aquagold/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/aquagold/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
<link href="catalog/view/theme/aquagold/stylesheet/tooltipster-punk.css" type="text/css" rel="stylesheet">
<link href="catalog/view/theme/aquagold/stylesheet/tooltipster.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="catalog/view/javascript/jquery.tooltipster.min.js"></script>
</head>

<body>
<div class="body_bg">
  <div class="wrapper_container"> 
    
    <!--Header Start: -->
    <header>
      <div class="mid_center">
        <div class="header_section">
          <div class="logo"><a href="<?php echo $home; ?>"><img src="catalog/view/theme/aquagold/image/header_logo.jpg" alt="img"></a></div>
          <div class="right_link"> 
            <?php if (!isset($logged)) { ?>
                <span><a href="<?php echo $login; ?>">Login</a> | <a href="<?php echo $register; ?>">Register</a></span> <span>
                <label style="padding-left: 30px;"><a href="http://www.youtube.com/channel/UCXIkUCrNX843L82qO8wTYYQ" target="_blank">Media</a></label>
                <a href="<?php echo $shopping_cart; ?>"><img src="catalog/view/theme/aquagold/image/cart_icon.png" align="middle" style="margin-top:-4px;"/></a> </span>
            <?php } else { ?>
                <span id="welcome" style="margin-right:30px;">Welcome <?php echo $customer; ?> |&nbsp;
                <ul>
                  <li> <a href="<?php echo $account; ?>">My Account</a>
                    <ul>
                      <!-- <li>My Account</li>-->
                      <li><a href="<?php echo $setting; ?>">Setting</a></li>
                      <li><a href="<?php echo $logout; ?>">Logout</a></li>
                    </ul>
                  </li>
                </ul>
                </span> <span style="float:right; width:65px;">
                <label style="float:left;"><a href="http://www.youtube.com/channel/UCXIkUCrNX843L82qO8wTYYQ" target="_blank">Media</a></label>
                <a href="<?php echo $shopping_cart; ?>"><img src="catalog/view/theme/aquagold/image/cart_icon.png" align="middle" style="margin-top:-4px; float:right;"/></a> </span>
            <?php } ?> 
          </div>
        </div>
      </div>
    </header>