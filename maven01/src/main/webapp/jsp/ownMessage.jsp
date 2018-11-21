	<%   
    String path = request.getContextPath();   
    String basePath = request.getScheme()+"://" +request.getServerName()+":" +request.getServerPort()+path+"/" ;   
    %>   
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <base href="<%=basePath%>" >
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
   	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
  	<script type="text/javascript" src="../res/layui/layui.js"></script>
  	<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
  	<link rel="stylesheet" type="text/css" href="layui/css/main.css">
    
    <link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">

	<link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-touch-icon.png">
	<link rel="icon" type="image/png" href="images/favicon/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="images/favicon/favicon-16x16.png" sizes="16x16">
    <title>个人信息</title>
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
	.edit {
    width: 100px;
    background-color: #4abad8;
    text-align: center;
    height: 38px;
    line-height: 38px;
    border: none;
    color: #ffffff;
    font-size: 16px;
    border-radius: 5px;
    
	}
	input {
    	border: 1px solid #A8A8A8;
    	border-radius: 5px;/* 边框圆角 */
	}
	input:focus{
		border:1px solid #3399FF;
	}
	
}
	
	</style>
</head>
<body>
<!-- 头部 -->
<header class="top-bar">
        <div class="container">
            <div class="clearfix">
                <ul class="top-bar-text float_left">
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
    
<div style="background-color: rgb(241,241,241); height: 100vh">
    <div style="margin-top: 10px; display: flex; justify-content: center">
        <div style="margin-top:40px;width: 200px;height:400px;display: flex; flex-direction: column; align-items: flex-start; background-color: #fff">
 	       	<form id="subForm" method="post">
 	        <div style="display: flex;">
	 	        <div style="width:10px;height:50px;background-color: rgb(98,171,0);"></div>    
	            <div class="list" id="showOwnMessage"><span>个人信息</span></div>     
            </div>
            <div class="list" id="realaseRoom"><span>发布房源</span></div>
           	<div  class="list" id="realaseHis"><span>历史发布信息</span></div>
            <div class="list" id="rentHis"><span>历史租房信息</span></div>
            </form>
        </div>
        <div style="margin-left: 10px; width: 900px; height: 500px; background-color: #fff;">
            <div style="border-bottom: 2px solid rgb(98,171,0) ">
                <div style="width: 130px;height: 40px; background-color: rgb(98,171,0);display: flex; align-items: center;justify-content: center">
                    <span style="color: #fff">个人消息</span>
                </div>
            </div>
            <div id="userInfo" style="background-color: #fff;padding-bottom:50px;">            		
            		<div style="margin-top:10px;margin-left:20px;display: flex;">          			
            			<div>
            				<img src="${user.userImg}" style="margin-right:20px;border-radius:50px;width:100px;height:100px"/>               			
            			</div> 
						<div style="margin:25px 0">
							<div>
            					<span style="font-weight:bold;font-size:20px">${user.userName}</span>
            				</div>
            			</div>                     			        		
	            		<div style="margin-left:200px;margin-top:30px">
            				<span id="editBtn"><a href="javascript:void(0);">修改信息</a></span>
           				</div>
            		</div>
            		<div style="margin:0 20px;">
            			<hr style="background-color: #E8E8E8"/>
            		</div>
            		<div style="margin-top:10px;margin-left:20px;display: flex;">
            			<div style="">
            				<span style="font-weight:bold;font-size:18px">账号信息</span>
            			</div>
            			<div style="margin-left:50px;width:84%">
            				<div style="margin:10px 0;">
	            				<span style="">用户类型</span>
	            				<span style="margin-left:150px;font-size:14px;color:#666666">普通用户</span>         				
            				</div>
            				<hr style="background-color: #E8E8E8"/>           				
            				<div style="margin:10px 0">
	            				<span style="">极客租ID</span>
	            				<span style="margin-left:150px;font-size:14px;color:#666666">${user.id}</span>       				
            				</div>         
            				<hr style="background-color: #E8E8E8"/>
            				<div style="margin:10px 0">
	            				<span style="">手机号码</span>
	            				<span style="margin-left:150px;font-size:14px;color:#666666">${user.userPhone}</span>         				
            				</div>
            				<hr style="background-color: #E8E8E8"/>
            				<div style="margin:10px 0">
	            				<span style="">最近一次登录时间</span>
	            				<span style="margin-left:84px;font-size:14px;color:#666666"">2018-01-01</span>         				
            				</div>
            				
            			</div>
            		</div>
            </div>
            
            <!-- 修改用户div start -->
            <form action="user/modifyUserMessage.action" method="post">
             <div id="editUserInfo" style="background-color: #fff;padding-bottom:50px;display:none">         		
            		<div style="margin-top:10px;margin-left:20px;display: flex;">          			
            			  <div style="margin:10px">
		            			    <input id="image" name="image" type="file"><br>
	                                <img src="" id="show" width="200px">
	                                <input id="uploadBtn" type="button" value="上传头像">
	            				</div>	                 			        		
	            		<div style="margin-left:200px;margin-top:30px">
            				<!-- <span><a href="">修改信息</a></span> -->
           				</div>
            		</div>
            		<div style="margin:0 20px;">
            			<hr style="background-color: #E8E8E8"/>
            		</div>
            		<div style="margin-top:10px;margin-left:20px;display: flex;">
            			<div style="">
            				<span style="font-weight:bold;font-size:18px">账号信息</span>
            			</div>
            			<div style="margin-left:50px;width:84%">
            				<div style="margin:10px 0;">
	            				<span style="">用户类型</span>
	            				<span style="margin-left:150px;font-size:14px;color:#666666">普通用户</span>         				
            				</div>
            				<hr style="background-color: #E8E8E8"/> 
            				<div style="margin:10px 0;">
	            				<span style="">个人昵称</span>
	                     	<input style="display:inline;margin-left:150px;font-size:14px;color:#666666" name="userName"/>             				
            				</div>
            				<hr style="background-color: #E8E8E8"/>           				
            				<div style="margin:10px 0">
	            				<span style="">极客租ID</span>
	            				<span style="margin-left:150px;font-size:14px;color:#666666" >${user.id}</span>         				
            				</div>
            				<hr style="background-color: #E8E8E8"/>
            				<div style="margin:10px 0">
	            				<span style="">手机号码</span>
	            				<input style="display:inline;margin-left:150px;font-size:14px;color:#666666" name="userPhone"/>         				
            				</div>
            				<hr style="background-color: #E8E8E8"/>
            				<div style="margin:10px 0">
	            				<span style="">最近一次登录时间</span>
	            				<span style="margin-left:84px;font-size:14px;color:#666666"">2018-01-01</span>         				
            				</div>
            				
            			</div>
            		</div>
            		<div>
            			<input class="edit" style="display:inline;margin-top:15px;margin-left:140px;" type="submit" value="提交"/>
            			<input class="edit" style="display:inline;margin-top:15px;margin-left:20px;" type="button" onclick="reshow()" value="返回"/>
            		</div>
            </div>
            </form>
             <!-- 修改用户div end -->
            
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
	<script>
		$().ready(function(){
			//list div的点击提交事件
			$(".list").click(function(){
				var id =$(this).attr("id");
				if(id =='realaseRoom')
				{
				 location.href = 'user/showRoomRealase.action';
				}else{
				var path = "user/"+$(this).attr("id");
				//alert(path);
			    $('#subForm').attr("action", path).submit();
				}
			});
			//点击修改用户信息切换内容
			$("#editBtn").click(function(){				
				//alert("haha");
			   $("#userInfo").hide();
			   $("#editUserInfo").show();
			});
		});
		$("#uploadBtn").click(function(){
			
			var formData = new FormData();
			formData.append('file', $('#image')[0].files[0]);
			$.ajax({
			    url: 'user/uploadUserImg?userName=${user.userName}',
			    type: 'POST',
			    cache: false,
			    data: formData,
			    processData: false,
			    contentType: false
			}).done(function(res) {
				alert('上传成功');
				$("#show").attr('src',"http://localhost:8080/maven01/upload/${user.userName}.jpg");
			}).fail(function(res) {
				alert('上传失败');
			});
		
	});		
		function reshow(){
			 window.location.href = 'user/showOwnMessage.action';
		}
	</script>
</html>
