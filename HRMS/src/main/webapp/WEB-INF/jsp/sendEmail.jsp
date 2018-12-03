<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sendEmail2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-1.8.3.js"></script>
  </head>
  
  <body style="background:url('<%=request.getContextPath() %>/static/images/emp2.png') no-repeat">
    <div style="width:600px;height:400px;margin:20px auto">
    	<form action="javascript:void(0)" method="post">
    		<label>邮箱账户：</label><input type="text" name="emailtext" id="one" value=""><br>
    		<label>邮件标题：</label><input type="text" name="emailtitle" id="two"><br>
    		<label>邮件内容：</label><br>
    		<textarea rows="10" cols="50" name="text" id="three"></textarea><br><br>
    		<button id="btn" value="发送">发送</button>
    	</form>
    </div>
  </body>
  <script type="text/javascript">
  		$(document).ready(function(){
  		
  			$("#btn").live("click",function(){
  				
  				var emailtextx = $("#one").val();
  				var emailtitle = $("#two").val();
  				var text = $("#three").val();
  				
  				$.ajax({
  					url:"<%=request.getContextPath()%>/goSendEmail",
  					type:"post",
  					data:{"emailtextx":emailtextx,"emailtitle":emailtitle,"text":text},
  					dataType:"json",
  					success:function(val){
  						if(val){
  							alert("发送成功");
  						}else{
  							alert("发送失败");
  						}
  					}
  				})
  				
  			})
  		});
  </script>
</html>
