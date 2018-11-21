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
                    <li><i class="flaticon-envelope"></i>租房平台</li>
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

                                <li class="current dropdown"><a href="jsp/index.jsp">主页</a>
                                </li>


                                <li class="dropdown"><a href="room/show.action">租房信息</a>
                                </li>

                                <c:if test="${loginFlag == false}">
                                <li><a href="jsp/login.jsp">个人中心</a></li>
                                </c:if>
                                <c:if test="${loginFlag == true}">
                                <li><a href="user/showOwnMessage">个人中心</a></li>
                                </c:if>

                            </ul>      

            </div>
        </div>
    </section>
    
   <form action="room/searchRoom.action">  
     <div style="margin-left: 160px; margin-top: 20px"> 
     <h2>户型:</h2>
     <select name="styleName" style="margin-left: 100px;margin-top: -30px">
      <option value="">选择户型</option>
      <c:forEach items="${style}" var="style">
      <option value="${style.styleName}">${style.styleName}</option>
      </c:forEach>   
     </select>
     </div>
      <div style="margin-top: 10px"> </div>
      <div style="margin-left: 160px">
      <h2>区域:</h2>
      <select name="areaName" style="margin-left: 100px;margin-top: -30px">
       <option value="">选择区域</option>
      <c:forEach items="${area}" var="area" >
       <option value="${area.areaName}">${area.areaName}</option>
      </c:forEach>
      </select>
      </div>
       <div style="margin-top: 10px"> </div>
       <div style="margin-left: 160px">
       <h2>售价:</h2>
      <select name="price" style="margin-left: 100px;margin-top: -30px">
       <option value="">选择价格</option>
       <option value="1">500元以下</option>
       <option value="2">500元~1000元</option>
       <option value="3">1000元~1500元</option>
       <option value="4">1500元以上</option>
      </select>
      </div>
       <div style="margin-top: 10px"> </div>
       <div style="margin-left: 160px">
       <h2>面积:</h2>
       <select name="space" style="margin-left: 100px;margin-top: -30px">
       <option value="">选择面积</option>
       <option value="1">50m²以下</option>
       <option value="2">50m²~100m²</option>
       <option value="3">100m²以上</option>
      </select>
      <input type="submit" value="查询" style="margin-left: 240px;margin-top: -30px"/>
      </div>
   </form>

   <c:forEach items="${room}" var="room">  
   <!-- item start -->
   <div style="display: flex;height:200px;width:100%" onclick="window.location.href= 'room/showRoomDetail.action?roomId=${room.roomId}'; return false">
	<!-- 房源图片 -->
	<div style="margin-top:20px; height:160px;width:200px; margin-left: 160px">
		<img style="height:160px;" src="${room.roomImg}"/>
	</div>
	<!-- 房源描述 -->
	<div style="margin:20px 10px;height:160px;width:400px">
		<div style="margin-top:20px;"><a style="TEXT-DECORATION: none;color: #000000;font-weight: bold;" href="#">${room.roomInfo}</a></div>
		<div style="margin-top:15px;"><span style="">${room.style2.styleName}</span></div>
	    <div style="margin-top:-30px; margin-left: 280px"><span style="">${room.roomPrice}元/月 </span></div>
<!-- 		<div style="margin-top:15px;display: flex;">
			<div style="background-color:green;border-radius: 5px;margin:0px 5px"><span>整租</span></div>
			<div style="background-color:red;border-radius: 5px;margin:0px 5px"><span>朝北</span></div>
			<div style="background-color:green;border-radius: 5px;margin:0px 5px"><span>1号线</span></div>				
		</div>		 -->
	
	</div>
   </div>
<!-- item end -->
   </c:forEach>
</body>	
</html>