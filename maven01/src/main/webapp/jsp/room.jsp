<%
String path = request.getContextPath(); //  path = "/travel"
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; // basePath="http://localhost:8080/travel/"
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>租房展示</title>
</head>
<body>
<!-- 头部 -->
<header class="top-bar">
     <base href="<%=basePath%>">  
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
<body>
   <c:forEach items="${area}" var="area">
     <a href="room/searchRoom.action?areaName=${area.areaName}">${area.areaName}</a>
   </c:forEach>
   <c:forEach items="${room}" var="room">  
   <!-- item start -->
   <div style="display: flex;border:1px solid red;height:200px;width:100%">
	<!-- 房源图片 -->
	<div style="margin-top:20px;border:1px solid red;height:160px;width:200px">
		<img style="height:160px;" src="images/${room.roomImg}"/>
	</div>
	<!-- 房源描述 -->
	<div style="margin:20px 10px;border:1px solid green;height:160px;width:400px">
		<div style="margin-top:20px;"><a style="TEXT-DECORATION: none;color: #000000;font-weight: bold;" href="#">${room.roomInfo}</a></div>
		<div style="margin-top:15px;"><span style=""><span>一室一厅</span></div>
		<div style="margin-top:15px;"><span style=""><span>东寅商座 </span></div>
	    <div style="margin-top:-30px; margin-left: 280px"><span style=""><span>1800元/月 </span></div>
		<div style="margin-top:15px;display: flex;">
			<div style="background-color:green;border-radius: 5px;margin:0px 5px"><span>整租</span></div>
			<div style="background-color:red;border-radius: 5px;margin:0px 5px"><span>朝北</span></div>
			<div style="background-color:green;border-radius: 5px;margin:0px 5px"><span>1号线</span></div>				
		</div>		
	
	</div>
   </div>
<!-- item end -->
   </c:forEach>
</body>	
</html>