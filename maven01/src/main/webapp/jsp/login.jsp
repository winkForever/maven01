<%
String path = request.getContextPath(); //  path = "/travel"
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; // basePath="http://localhost:8080/travel/"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">  
<meta charset="UTF-8">
<title>登录页面</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body  style="background-image:url(images/login/bg_login.jpg); background-repeat: no-repeat; background-size:100% ;">
 <!--登录框-->
    <div>
        <div class="login_body">
            <div class="login_content">
                <!-- 账号登录/APP扫码登录-->
                <div>
                    <label class="title">账号登录</label>
                    <label class="div_float_right title">手机验证码登录
                    <img src="images/login/15.png" />
                    </label>
                </div>
                <!--登录表单-->
                <form class="login_form" id="login_form" method="post">
                    <div class="margin_top_login relative_position">
                        <input class="btn_div form_input" placeholder="请输入用户名/手机号码" name="userName" id="userName"/>
                        <div class="login_user"><img src="images/login/user.png"/></div>
                    </div>
                    <div class="margin_top_login relative_position">
                        <input class="btn_div form_input" placeholder="请输入密码" name="password" id="password" type="password"/>
                        <div class="login_user"><img src="images/login/pass.png"/></div>
                    </div>                
                    <div class="margin_top_login relative_position">
                		<input class="btn_div imgCode" placeholder="输入图片验证码"  name="imgCode" id="imgCode"/>
                		<div class="login_user"><img src="images/login/pass.png"/></div>               		
                		<div class="get_mess_btn">
                    	<img src="user/verify?time=" + new Date().getTime() id="verifyCodeImg"/>
                		</div>
                	</div>	 
                    <a href="jsp/regist.jsp" class="margin_top_middlel div_float_right main_color">没有账号？&nbsp;立即注册</a>
                    <input type="submit" class="login_sumbit margin_top_large " value="登录"/>
                </form>
            </div>
        </div>
    </div>    
</body>
<style>
.error{
	color:red;
}
</style>
<script  src="js/jquery-1.11.1.min.js"> </script>
<script  src="js/jquery.validate.min.js"></script>
<script  src="js/layer/layer.js"> </script><!-- 使用layer.js必须先引入1.8版本以上的jquery -->
<script>
$().ready(function() {
	// 在键盘按下并释放及提交后验证提交表单
	  $("#login_form").validate({	
		    rules: {//规则
		    	userName: {
				  	required: true
				  },
			    password: {//name为password的表单元素
			        required: true,//true表示不能为空
			        minlength:5
			    }
				
		    },
		    messages: {//提示信息：配合上面的rule使用
		   		userName: {
					  	required: "用户名不能为空"
				},
				password: {
			        required: "请输入密码",
			        minlength: "密码长度不能小于 5 个字母"
			      }
		    },
		    submitHandler:function(form){//代替默认的表单提交，点击submit执行到这里
		    	//$.post(url,data,callback),可添加第四个参数，定义返回格式，默认字符串
		    	 $.post("user/login.action",
					    {
					      	userName:function(){ return $("#userName").val();},
					        password:function(){ return $("#password").val();},
					        imgCode:function() {return $("#imgCode").val();}
					    },
					    function(data,status){//回调函数，data接收json数据，status是访问状态404,200等
								//layer.msg('响应码为：'+data.flag,"");	
					            if(data.loginCode==2){
					            	layer.alert('验证码输入有误', {icon: 2}); 
					            	 document.getElementById("userName").value = "";
					        		 document.getElementById("password").value = "";
					        		 document.getElementById("imgCode").value = "";
					            }
					            else if(data.loginCode==1&&data.userType==false){
					        		layer.alert('登录成功', {icon: 1}); 
					        	    window.setTimeout(window.location.href="jsp/index.jsp", 3000);
					        	}
					            else if(data.loginCode==1&&data.userType==true){
					            	layer.alert('登录成功', {icon: 1}); 
					        	    window.setTimeout(window.location.href="jsp/admin/adminIndex.jsp", 3000);
					            }
					            else{
					        		 layer.alert('用户名或密码错误', {icon: 2}); 
					        		 document.getElementById("userName").value = "";
					        		 document.getElementById("password").value = "";
					        		 document.getElementById("imgCode").value = "";
					        	}
					    },
					    'json'//指定接收json对象，如果服务端返回的是json字符串会自动解析为json对象
				);
	        }    
		});
	
	});

</script>

</html>