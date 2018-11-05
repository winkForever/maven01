	<%   
    String path = request.getContextPath();   
    String basePath = request.getScheme()+"://" +request.getServerName()+":" +request.getServerPort()+path+"/" ;   
    %>   
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <base href="<%=basePath%>" >
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">

	<link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-touch-icon.png">
	<link rel="icon" type="image/png" href="images/favicon/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="images/favicon/favicon-16x16.png" sizes="16x16">
    <title>个人信息</title>
</head>
<body>
<!-- 头部 -->
<header class="top-bar">
        <div class="container">
            <div class="clearfix">
                <ul class="top-bar-text float_left">
                    <li><i class="flaticon-telephone"></i>Phone +123-456-7890</li>
                    <li><i class="flaticon-envelope"></i>Yourcompany@gmail.com</li>
                </ul>
                <ul class="social-style-one float_right">
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="#"><i class="fa fa-skype"></i></a></li>
                </ul>
            </div>
        </div>
    </header>
     <section class="mainmenu-area stricky">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="main-logo">
                        <a href="index.html"><img src="images/logo/logo.png" alt=""></a>
                    </div>
                </div>

                <div class="col-md-6 menu-column">
                    <nav class="main-menu">
                        <div class="navbar-header">     
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="navbar-collapse collapse clearfix">
                            <ul class="navigation clearfix">

                                <li class="current dropdown"><a href="index.html">Home</a>
                                    <ul>
                                        <li><a href="index.html">Homepage One</a></li>
                                        <li><a href="index-2.html">Homepage Two</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown"><a href="#">About</a>
                                    <ul>
                                        <li><a href="about.html">About us</a></li>
                                        <li><a href="team.html">Team</a></li>
                                        <li><a href="rooms.html">Rooms</a></li>
                                        <li><a href="single-room.html">Room Details</a></li>
                                        <li><a href="testimonials.html">Testimonials</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown"><a href="#">services</a>
                                    <ul>
                                        <li><a href="service.html">Services</a></li>
                                        <li><a href="service-single.html">Service Details</a></li>
                                    </ul>  
                                </li>

                                <li class="dropdown"><a href="#">Pages</a>
                                    <ul>
                                        <li><a href="gallery-one.html">Gallery boxed</a></li>
                                        <li><a href="gallery-two.html">Gallery Fullwidth</a></li>
                                        <li><a href="error.html">404 Page</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown"><a href="#">News</a>
                                    <ul>
                                        <li><a href="blog-grid.html">News Grid</a></li>
                                        <li><a href="blog-large.html">News Classic</a></li>
                                        <li><a href="blog-details.html">News Details</a></li>
                                    </ul>
                                </li>

                                <li><a href="contact.html">Contact</a></li>

                            </ul>

                            <ul class="mobile-menu clearfix">

                                <li class="current dropdown"><a href="index.html">Home</a>
                                    <ul>
                                        <li><a href="index.html">Homepage One</a></li>
                                        <li><a href="index-2.html">Homepage Two</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown"><a href="#">About</a>
                                    <ul>
                                        <li><a href="about.html">About us</a></li>
                                        <li><a href="team.html">Team</a></li>
                                        <li><a href="rooms.html">Rooms</a></li>
                                        <li><a href="single-room.html">Room Details</a></li>
                                        <li><a href="testimonials.html">Testimonials</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown"><a href="#">services</a>
                                    <ul>
                                        <li><a href="service.html">Services</a></li>
                                        <li><a href="service-single.html">Service Details</a></li>
                                    </ul>  
                                </li>

                                <li class="dropdown"><a href="#">Pages</a>
                                    <ul>
                                        <li><a href="gallery-one.html">Gallery boxed</a></li>
                                        <li><a href="gallery-two.html">Gallery Fullwidth</a></li>
                                        <li><a href="error.html">404 Page</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown"><a href="#">News</a>
                                    <ul>
                                        <li><a href="blog-grid.html">News Grid</a></li>
                                        <li><a href="blog-large.html">News Classic</a></li>
                                        <li><a href="blog-details.html">News Details</a></li>
                                    </ul>
                                </li>

                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>

                <div class="col-md-2">
                    <div class="right-column">
                        <div class="right-area">
                           <div class="link-btn4 float_right">
                               <a href="#appointment-popup" class="btn-style-one has-appointment-popup">Appointment</a>
                           </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

<div style="background-color: rgb(241,241,241); height: 100vh">
    <div style="margin-top: 10px; display: flex; justify-content: center">
        <div style="margin-top:40px;width: 200px;height:400px;display: flex; flex-direction: column; align-items: flex-start; background-color: #fff">
 	        <div style="display: flex;">
	 	        <div style="width:10px;height:50px;background-color: rgb(98,171,0);"></div>    
	            <div class="list"><span>个人信息</span></div>     
            </div>
            <div class="list"><span>租房信息</span></div>
            <div class="list"><span>发布信息</span></div>
            <div class="list"><span>租房信息</span></div>
            <div class="list"><span>租房信息</span></div>
            
        </div>
        <div style="margin-left: 10px; width: 900px; height: 500px; background-color: #fff;">
            <div style="border-bottom: 2px solid rgb(98,171,0) ">
                <div style="width: 130px;height: 40px; background-color: rgb(98,171,0);display: flex; align-items: center;justify-content: center">
                    <span style="color: #fff">系统消息</span>
                </div>
            </div>
            <div style="background-color: #fff">

            </div>
        </div>
    </div>
</div>
<!--Main Footer-->
    <footer class="main-footer">
 
         <!--Footer Bottom-->
         <div class="footer-bottom">
            <div class="container">
                <div class="copy-text center">
                    <p>Copyrights Â© 2018 All Rights Reserved by <a href="http://www.17sucai.com/">Nilachol</a></p>  
                </div>
            </div>
        </div> 
    </footer>
</body>
	<style>
	.list{
		width: 200px;
		height: 50px; 
		line-height: 50px; 
		padding: 0px 50px;
	}	
	.list:hover{
		background-color: rgb(98,171,0);
    	cursor: pointer;
	}
	</style>
<!-- jQuery js -->
	<script src="js/jquery.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- jQuery ui js -->
	<script src="js/jquery-ui.js"></script>
	<!-- owl carousel js -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- jQuery validation -->
	<script src="js/jquery.validate.min.js"></script>
	<!-- google map -->
	<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyCRvBPo3-t31YFk588DpMYS6EqKf-oGBSI"></script> 
	<script src="js/gmap.js"></script>
	<!-- mixit up -->
	<script src="js/wow.js"></script>
	<script src="js/jquery.mixitup.min.js"></script>
	<script src="js/jquery.fitvids.js"></script>
    <script src="js/bootstrap-select.min.js"></script>
	
	<!-- revolution slider js -->
	<script src="assets/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script src="assets/revolution/js/jquery.themepunch.revolution.min.js"></script>
	<script src="assets/revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script src="assets/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
	<script src="assets/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script src="assets/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script src="assets/revolution/js/extensions/revolution.extension.migration.min.js"></script>
	<script src="assets/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script src="assets/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
	<script src="assets/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script src="assets/revolution/js/extensions/revolution.extension.video.min.js"></script>

	<!-- fancy box -->
	<script src="js/jquery.fancybox.pack.js"></script>
	<script src="js/jquery.polyglot.language.switcher.js"></script>
	<script src="js/nouislider.js"></script>
	<script src="js/jquery.bootstrap-touchspin.js"></script>
	<script src="js/SmoothScroll.js"></script>
    <script src="js/isotope.js"></script>
	<script src="js/jquery.appear.js"></script>
	<script src="js/jquery.countTo.js"></script>

    <script src="js/jquery.timepicker.min.js"></script>

	<script src="js/jquery.flexslider.js"></script>
	<script src="js/imagezoom.js"></script>	
	<script id="map-script" src="js/default-map.js"></script>
	<script src="js/custom.js"></script>
</html>
