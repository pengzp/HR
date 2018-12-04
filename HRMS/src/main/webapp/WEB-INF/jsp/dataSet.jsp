<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dataSet.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	 <style type="text/css">
		.img{
		width:800px;
		height:600px;
		border: 0;
		color: gray;
		} 
	</style>
  </head>
 

  <body>
  
    <div  style="text-align:center">  
                    柱状图 <br><br>  
                     点击生成柱状图<a href="<%=path %>/getColumnChart">getMajorChart</a>  
     <br><br>  
     <img src="${chartColumnURL}" >  
  	</div>

  </body>
</html>
