<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>登录</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/util.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/main.css">
 	<script src="<%=request.getContextPath() %>/static/js/jquery-1.8.3.js" type="text/javascript"></script>
	</head>

<body>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('<%=request.getContextPath() %>/static/images/back.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form" id="loginform" action="javascript:void(0)" method="post">
					<span class="login100-form-title p-b-49">HRManager&nbsp;&nbsp;登录</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate="请输入用户名">
						<span class="label-input100">用户名</span>
						<input id="usercode" class="input100" type="text" name="usercode" placeholder="请输入用户名" autocomplete="off">
 					</div>

					<div class="wrap-input100 validate-input" data-validate="请输入密码">
						<span class="label-input100">密码</span>
						<input id="upass" class="input100" type="password" name="password" placeholder="请输入密码">
					</div>
					<div class="wrap-input100 validate-input" data-validate="请输入验证码">
						<span class="label-input100">验证码</span>
						<input type="text" class="input100" id="code" value="" name="code" placeholder="请输入验证码"><img alt="" src="<%=path%>/checkcode">
						<a href="checkcode.jsp">看不清</a>
					</div>
					<div class="text-right p-t-8 p-b-31">
						<a href="findpassword.jsp">帮助？</a>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button id="login" class="login100-form-btn">登 录</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
</body>
<script language="javascript">
$(document).ready(function(){
	//登录
	$("#login").click(function(){
		//alert("");
		var usercode=$("#usercode").val();
		var upass=$("#upass").val();
		
		alert(usercode);
		alert(upass);
		
			$.ajax({
				url:"<%=request.getContextPath()%>/getUsers",
				type:"post",
				data:{"usercode":usercode,"password":upass,"code":$("#code").val()},
				dataType:"json",
				success:function(aa){
					alert(aa);
					/* var val = eval("(" + aa + ")"); */
					if(aa){
						alert("登录成功");
						/* window.location.href="index.jsp?num=1&name="+uname; */
						location.href="indexHR";
					}else{
					
						alert("登录失败");
						
					}
					
				}
		
			})
			
		})
	
	
	

})
</script>
</html>
