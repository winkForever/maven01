<%
String path = request.getContextPath(); //  path = "/travel"
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; // basePath="http://localhost:8080/travel/"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">  
	<meta charset="UTF-8">
	<title>Nilachol || Responsive HTML 5 Template</title> 

	<!-- mobile responsive meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">

	<link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-touch-icon.png">
	<link rel="icon" type="image/png" src="images/favicon/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="images/favicon/favicon-16x16.png" sizes="16x16">

</head>
<body>

<div class="boxed_wrapper">


    <header class="top-bar">
        <div class="container">
            <div class="clearfix">
                <ul class="top-bar-text float_left">
                   <a href="jsp/regist.jsp">注册</a>
                   <c:if test="${loginFlag == false}">
                   <a href="jsp/login.jsp">登录</a>
                   </c:if>
                    <c:if test="${loginFlag == true }">
                    <a href="">欢迎您,${userName}</a>
                    <a href="user/loginOut">退出登录</a>
                    </c:if>
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
                        <a href="index.jsp"><img src="images/logo/logo.png" alt=""></a>
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

                                <li class="current dropdown"><a href="index.jsp">Home</a>
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

                                <li><a href="jsp/ownMessage.jsp">个人中心</a></li>

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

                <div class="col-md-2" style="margin-left: -17.5mm;">
                    <div class="right-column">
                        <div class="right-area">
                        <div class="link-btn4 float_left" >
                               <a href="#appointment-popup" class="btn-style-one has-appointment-popup">appointment</a>
                        </div>
                        </div>
                    </div>
                </div>
                

            </div>
        </div>
    </section>


    <!--Start rev slider wrapper-->     
    <section class="rev_slider_wrapper">
        <div id="slider1" class="rev_slider" data-version="5.0">
            <ul>
                <li data-transition="slotzoom-horizontal">
                    <img src="images/slider/3.jpg"  alt="" width="1920" height="750" data-bgposition="top center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="1" >
                    
                    <div class="tp-caption  tp-resizeme" 
                        data-x="left" data-hoffset="15" 
                        data-y="top" data-voffset="190" 
                        data-transform_idle="o:1;"         
                        data-transform_in="x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0.01;s:3000;e:Power3.easeOut;" 
                        data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
                        data-mask_in="x:[100%];y:0;s:inherit;e:inherit;" 
                        data-splitin="none" 
                        data-splitout="none"
                        data-responsive_offset="on"
                        data-start="700">
                        <div class="slide-content-box">
                            <h1>Travel Brings Power & Love <br>back to your Life</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br>Nunc sagittis, urna nec semper pharetra. </p>
                        </div>
                    </div>
                    <div class="tp-caption tp-resizeme" 
                        data-x="left" data-hoffset="15" 
                        data-y="top" data-voffset="430" 
                        data-transform_idle="o:1;"                         
                        data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                        data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;"                     
                        data-splitin="none" 
                        data-splitout="none" 
                        data-responsive_offset="on"
                        data-start="2300">
                        <div class="slide-content-box">
                            <div class="button">
                                <a class="btn-style-five" href="about.html">About Us</a>     
                            </div>
                        </div>
                    </div>
                    <div class="tp-caption tp-resizeme" 
                        data-x="left" data-hoffset="195" 
                        data-y="top" data-voffset="430" 
                        data-transform_idle="o:1;"                         
                        data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                        data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;"                     
                        data-splitin="none" 
                        data-splitout="none" 
                        data-responsive_offset="on"
                        data-start="2600">
                        <div class="slide-content-box">
                            <div class="button">
                                <a class="btn-style-six" href="contact.html">Contact Us</a>     
                            </div>
                        </div>
                    </div>
                </li>
                <li data-transition="slotzoom-horizontal">
                    <img src="images/slider/2.jpg"  alt="" width="1920" height="750" data-bgposition="top center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="1" >
                    
                    <div class="tp-caption  tp-resizeme" 
                        data-x="left" data-hoffset="15" 
                        data-y="top" data-voffset="190" 
                        data-transform_idle="o:1;"         
                        data-transform_in="x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0.01;s:3000;e:Power3.easeOut;" 
                        data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
                        data-mask_in="x:[100%];y:0;s:inherit;e:inherit;" 
                        data-splitin="none" 
                        data-splitout="none"
                        data-responsive_offset="on"
                        data-start="700">
                        <div class="slide-content-box">
                            <h1>Travel Brings Power & Love <br>back to your Life</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br>Nunc sagittis, urna nec semper pharetra. </p>
                        </div>
                    </div>
                    <div class="tp-caption tp-resizeme" 
                        data-x="left" data-hoffset="15" 
                        data-y="top" data-voffset="430" 
                        data-transform_idle="o:1;"                         
                        data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                        data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;"                     
                        data-splitin="none" 
                        data-splitout="none" 
                        data-responsive_offset="on"
                        data-start="2300">
                        <div class="slide-content-box">
                            <div class="button">
                                <a class="btn-style-five" href="about.html">About Us</a>     
                            </div>
                        </div>
                    </div>
                    <div class="tp-caption tp-resizeme" 
                        data-x="left" data-hoffset="195" 
                        data-y="top" data-voffset="430" 
                        data-transform_idle="o:1;"                         
                        data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                        data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;"                     
                        data-splitin="none" 
                        data-splitout="none" 
                        data-responsive_offset="on"
                        data-start="2600">
                        <div class="slide-content-box">
                            <div class="button">
                                <a class="btn-style-six" href="contact.html">contact us</a>     
                            </div>
                        </div>
                    </div>
                </li>
                <li data-transition="slotzoom-horizontal">
                    <img src="images/slider/1.jpg"  alt="" width="1920" height="750" data-bgposition="top center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="1" >
                    
                    <div class="tp-caption  tp-resizeme" 
                        data-x="left" data-hoffset="15" 
                        data-y="top" data-voffset="190" 
                        data-transform_idle="o:1;"         
                        data-transform_in="x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0.01;s:3000;e:Power3.easeOut;" 
                        data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
                        data-mask_in="x:[100%];y:0;s:inherit;e:inherit;" 
                        data-splitin="none" 
                        data-splitout="none"
                        data-responsive_offset="on"
                        data-start="700">
                        <div class="slide-content-box">
                            <h1>Travel Brings Power & Love <br>back to your Life</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br>Nunc sagittis, urna nec semper pharetra. </p>
                        </div>
                    </div>
                    <div class="tp-caption tp-resizeme" 
                        data-x="left" data-hoffset="15" 
                        data-y="top" data-voffset="430" 
                        data-transform_idle="o:1;"                         
                        data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                        data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;"                     
                        data-splitin="none" 
                        data-splitout="none" 
                        data-responsive_offset="on"
                        data-start="2300">
                        <div class="slide-content-box">
                            <div class="button">
                                <a class="btn-style-five" href="about.html">About Us</a>     
                            </div>
                        </div>
                    </div>
                    <div class="tp-caption tp-resizeme" 
                        data-x="left" data-hoffset="195" 
                        data-y="top" data-voffset="430" 
                        data-transform_idle="o:1;"                         
                        data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                        data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;"                     
                        data-splitin="none" 
                        data-splitout="none" 
                        data-responsive_offset="on"
                        data-start="2600">
                        <div class="slide-content-box">
                            <div class="button">
                                <a class="btn-style-six" href="contact.html">contact us</a>     
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </section>
    <!--End rev slider wrapper--> 

    
    <!--Services Section-->
    <section class="services-section padd-1">
   <div class="container">      
            <!--Sec Title One-->
            <div class="sec-title center light">
                <h2><span>热门租房</span></h2>
                <a style="float: right;" href="room/show.action"><h3>更多租房</h3></a>
            </div>       
            <div class="three-item-carousel">          
                <!--Room Box-->
                <div class="room-box">
                    <div class="inner-box">
                        <div class="image-box">
                            <img src="images/resource/r1.jpg" alt="" />
                        </div>
                        <!--Lower Content-->
                        <div class="lower-content">
                            <!--Rating-->
                            <div class="rating">
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                           </div>
                           
                           <h3><a href="single-room.html">Sea view rooms</a></h3>
                           <div class="price clearfix">$120 <a href="#">Book Now</a></div>
                        </div>
                    </div>
                </div>
                
                <!--Room Box-->
                <div class="room-box">
                    <div class="inner-box">
                        <div class="image-box">
                            <img src="images/resource/r2.jpg" alt="" />
                        </div>
                        <!--Lower Content-->
                        <div class="lower-content">
                            <!--Rating-->
                            <div class="rating">
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star light"></span>
                           </div>
                           
                           <h3><a href="single-room.html">Green palace</a></h3>
                           <div class="price clearfix">$144 <a href="#">Book Now</a></div>
                        </div>
                    </div>
                </div>
                
                <!--Room Box-->
                <div class="room-box">
                    <div class="inner-box">
                        <div class="image-box">
                            <img src="images/resource/r3.jpg" alt="" />
                        </div>
                        <!--Lower Content-->
                        <div class="lower-content">
                            <!--Rating-->
                            <div class="rating">
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star light"></span>
                           </div>
                           
                           <h3><a href="single-room.html">Bluce paradise</a></h3>
                           <div class="price clearfix">$195 <a href="#">Book Now</a></div>
                        </div>
                    </div>
                </div>
                
                <!--Room Box-->
                <div class="room-box">
                    <div class="inner-box">
                        <div class="image-box">
                            <img src="images/resource/r4.jpg" alt="" />
                        </div>
                        <!--Lower Content-->
                        <div class="lower-content">
                            <!--Rating-->
                            <div class="rating">
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star light"></span>
                           </div>                           
                           <h3><a href="single-room.html">Wide balcony</a></h3>
                           <div class="price clearfix">$110 <a href="#">Book Now</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Services Section-->

  
    <!--Main Footer-->
    <footer class="main-footer">
        <!--Widgets Section-->
        <div class="widgets-section">
            <div class="container">
                <div class="row">
                    <!--Big Column-->
                    <div class="big-column col-md-6 col-sm-12 col-xs-12">
                        <div class="row clearfix">
                            <!--Footer Column-->
                            <div class="footer-column col-md-6 col-sm-6 col-xs-12">
                                <div class="footer-widget about-widget">
                                    <figure class="footer-logo"><a href="index.html"><img src="images/logo/logo2.png" alt=""></a></figure>
                                    <div class="widget-content">
                                        <ul class="contact-info">
                                            <li>23/223 Apple Street, New York</li>
                                            <li>Phone: +123-456-7890</li>
                                            <li>Mail@Nilacholteam.com</li>
                                        </ul>
                                        <ul class="social">
                                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                            <li><a href="#"><i class="fa fa-skype"></i></a></li>
                                        </ul>  
                                    </div>
                                </div>
                            </div>
                            
                            <!--Footer Column-->
                            <div class="footer-column col-md-6 col-sm-6 col-xs-12">
                                <div class="footer-widget service-widget">
                                    <div class="section-title">
                                        <h3>Our Services</h3>
                                    </div>
                                    <div class="widget-content">
                                        <ul class="list">
                                            <li><a href="service-single.html">BedRooms</a></li>
                                            <li><a href="service-single.html">Parking</a></li>
                                            <li><a href="service-single.html">Buthroom</a></li>
                                            <li><a href="service-single.html">Swimming pool</a></li>
                                            <li><a href="service-single.html">Restaurant</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!--Big Column-->
                    <div class="big-column col-md-6 col-sm-12 col-xs-12">
                        <div class="row clearfix">
                            <!--Footer Column-->
                            <div class="footer-column col-md-6 col-sm-6 col-xs-12">
                                <div class="footer-widget links-widget">
                                    <div class="section-title">
                                        <h3>Quick Links</h3>
                                    </div>
                                    <div class="widget-content">
                                        <ul class="list">
                                            <li><a href="about.html">About</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                            <li><a href="team.html">Team</a></li>
                                            <li><a href="service.html">Services</a></li>
                                            <li><a href="blog-grid.html">Blog</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            
                            <!--Footer Column-->
                            <div class="footer-column col-md-6 col-sm-6 col-xs-12">
                                <div class="footer-widget contact-widget">
                                    <div class="section-title">
                                        <h3>Instagram</h3>
                                    </div>
                                    <div class="footer-widget gallery-widget">
                                        
                                        <figure class="image">
                                            <img src="images/resource/i1.jpg" alt="">
                                            <div class="link"><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></div>
                                        </figure>

                                        <figure class="image">
                                            <img src="images/resource/i2.jpg" alt="">
                                            <div class="link"><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></div>
                                        </figure>

                                        <figure class="image">
                                            <img src="images/resource/i3.jpg" alt="">
                                            <div class="link"><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></div>
                                        </figure>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
         </div>
         
         <!--Footer Bottom-->
         <div class="footer-bottom">
            <div class="container">
                <div class="copy-text center">
                    <p>Copyrights © 2018 All Rights Reserved by <a href="http://www.17sucai.com/">Nilachol</a></p>  
                </div>
            </div>
        </div> 
    </footer>


    <!--popup box-->
    <div class="popup-box" id="appointment-popup">
        <!--Bg Fade Layer-->
        <div class="bg-fade-layer"></div>
        
        <div class="popup-container">
            <div class="popup-content">
            
                <div class="popup-header">
                    <button type="button" class="btn-close"><span class="fa fa-close"></span></button>
                </div>


                <div class="popup-inner">
                    <div class="default-form">
                        <h3>Make An Appointment</h3>

                        <form method="post">
                            <div class="row clearfix">
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" name="username" value="" placeholder="Your Name" required>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="email" name="useremail" value="" placeholder="Your Email" required>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input name="date" type="text" class="datepicker" placeholder="Check In" required>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input name="date" type="text" class="datepicker" placeholder="Check Out" required>
                                    </div>
                                </div>
                                    
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <select name="subject">
                                            <option>I want to discuss</option>
                                            <option>Subject Title 1</option>
                                            <option>Subject Title 2</option>
                                            <option>Subject Title 3</option>
                                        </select>

                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea name="message" placeholder="Your Message"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="text-left"><button type="submit" class="theme-btn btn-style-one">Submit Request</button></div>
                        </form>
                    </div>
                </div>
            </div>
        <!--popup-content -->
        </div>
    <!-- popup-container -->
    </div>
    <!-- popup Box -->


    <!-- Scroll Top Button -->
	<button class="scroll-top tran3s color2_bg">
		<span class="fa fa-angle-up"></span>
	</button>
	<!-- pre loader  -->
	<div class="preloader"></div>


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

</div>
	
</body>
</html>