<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'empManager.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <link rel="stylesheet" href="<%=request.getContextPath() %>/static/themes/icon.css">
     <link rel="stylesheet" href="<%=request.getContextPath() %>/static/themes/default/easyui.css">
     <script src="<%=request.getContextPath() %>/static/js/jquery-1.8.3.js"></script>
     <script src="<%=request.getContextPath() %>/static/js/jquery.min.js"></script>
     <script src="<%=request.getContextPath() %>/static/js/jquery.easyui.min.js"></script>
     <script src="<%=request.getContextPath() %>/static/locale/easyui-lang-zh_CN.js"></script>
     <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/index.css">
  	
  
  </head>
  
  <body>
  	<table id="dg"></table>
  </body>
  <script type="text/javascript">
  			$(function(){
  			$('#dg').datagrid({    
			    url:"<%=request.getContextPath() %>/queryEmps",			       
			    columns:[[
			    	{field:"yyy",checkbox:true},    
			        {field:"emp_id",title:'员工ID',width:50},    
			        {field:"emp_name",title:'员工姓名',width:80},
			        {field:"dept_id",title:'部门编号',width:80},
			        {field:"dept_name",title:'所属部门',width:120,align:'left'},
			        {field:"job_name",title:'职称',width:80,align:'left'},
			        {field:"job_id",title:'职位id',width:80},
			        {field:"job_num",title:'职位编码',width:120,align:'left'},
			        {field:"dangan",title:'档案状态',width:120,align:'left'},
			        {field:"sex",title:'性别',width:80},
			        {field:"email",title:'Email',width:150},
			        {field:"phone",title:'联系电话',width:150},
			        {field:"idcard",title:'idcard',width:150},
			        {field:"address",title:'住址',width:150},
			        {field:"registry",title:'户籍',width:150},
			        {field:"university",title:'毕业大学',width:150},
			        {field:"Education",title:'学历',width:150},
			        {field:"specialty",title:'专业',width:150},
			        {field:"salary",title:'薪酬',width:150},
			        {field:"bank",title:'银行账号',width:150},
			        {field:"banker",title:'开户银行',width:150},
			        {field:"booker",title:'登记人',width:150},
			        {field:"booker_date",title:'登记时间',width:150},
			        {field:"social_security",title:'社保账号',width:150},
			        {field:"polity",title:'政治面貌',width:150},
			        {field:"xxx",title:'操作',width:100,formatter: function(value,row,index){
					return "<a href='javascript:void(0)' onclick='del("+row.cust_id+")'>审核</a>";}    
			    	}
			    ]],
			    // 隔行换色
		         striped:true,
		         //显示分页工具栏
		         pagination:true,
		         //在设置分页属性的时候初始化页码。
		         pageNumber:1,
		         //在设置分页属性的时候初始化页面大小
		         pageSize:3,
		         //在设置分页属性的时候 初始化页面大小选择列表。
		         pageList:[3,4,7,10],
		        
		         
			}); 
  		
  		});
  </script>
  
</html>
