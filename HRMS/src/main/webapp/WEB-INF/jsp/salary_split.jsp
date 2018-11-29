<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <% String title="薪酬发放查询"; %>
    <title><%=title %></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="static/themes/default/easyui.css">
   	<link rel="stylesheet" type="text/css" href="static/themes/icon.css">
   	<link rel="stylesheet" type="text/css" href="static/themes/color.css">
   	<script type="text/javascript" src="static/js/jquery-1.8.3.js"></script>
   	<script type="text/javascript" src="static/js/jquery.easyui.min.js"></script>
   	<script type="text/javascript" src="static/js/jquery.min.js"></script>
   	<script type="text/javascript" src="static/locale/easyui-lang-zh_CN.js"></script>

  </head>
  <style type="text/css">
  		.body{
  				width:100%;
  				height:1000px;
  				margin:0 auto;
  			
  		
  		}
  		#_body{
  			width:1000px;
  			height:800px;
  			margin:0 auto;
  			
  		
  		}
  		.ulli{
  			padding-left:0;
  			
  		
  		}
  		.ulli li{
  			list-style:none;
  			float:left;
  			
  			margin-right:40px;
  		
  		
  		}
  		#pp{
  		text-align:right;
  		margin-right:120px;
  		
  		}
  		#table1{
  			text-align:center;
  		
  		}
  
  
  
  
  
  
  
  
  
  </style>
  <script type="text/javascript">
  		$(document).ready(function(){
    		$("#addTable").click(function(){
       		var tr = "<tr><td><input type='radio'></td>"+
		  						"<td><a href='#' id='del' value='"+"9999"+"'>删除</a></td>"+
		  						"<td>"+"4334"+"</td>"+
		  						"+<td>"+"435435"+"</td>"+
		  						"+<td>"+"89865"+"</td>"+
		  						"+<td>"+"3443"+"</td>"+
		  						
		  						
		  						"<td>"+"删除"+"</td></tr>";
            $("#table1").append(tr);　　
    });
   
	})
  			
  			
  		
  
  
  
  
  
  
  </script>
  
  
  	<body>
  				<div class="body">
  				
  				<div id="_body">
  				<p>薪酬管理&gt;&gt;薪酬标准管理&gt;&gt;标准登记</p>
  				
  
  					<div style="margin:30px 0  ">
						<input type="button" class="easyui-button c8" style="width:100px" id="addTable" value="新增">
						<input type="button" class="easyui-button c8" style="width:100px" id="addTable1" value="删除">
						<input type="button" class="easyui-button c8" style="width:100px" id="addTable2" value="保存">
						<input type="button" class="easyui-button c8" style="width:100px" id="addTable3" value="取消">
						<!--  
						<a href="#" id="addTable" class="easyui-linkbutton c8" style="width:100px">新增</a>
						<a href="#" class="easyui-linkbutton c8" style="width:100px">删除</a>
						<a href="#" class="easyui-linkbutton c8" style="width:100px">保存</a>
						<a href="#" class="easyui-linkbutton c8" style="width:100px">取消</a>
						-->
					</div>
  
  
  					<table id="table1" border="1" cellspacing="0" class="datagrid"  style="width:1000px;">
							
								<tr>
								<th>选择</th>
								<th>薪酬单编号</th>
								<th>薪酬次数</th>
								<th>总人数</th>
								<th>基本薪酬总额</th>
								<th>实发金额</th>
								<th>发放时间</th>
								</tr>
								
							
								
					</table>
					<p style="margin-top:200px;">薪酬单编号：</p>
					<ul class="ulli">
						<li>薪酬次数：</li>
						<li></li>
						<li>总人数：</li>
						<li></li>
						<li>基本薪资总额：</li>
						<li></li>
						<li>实发金额：</li>
						<li></li>
					</ul>
					<p id="pp" >上次发薪时间:</p>
  					<table class="easyui-datagrid"  style="width:1000px;">
							<thead>
								<tr>
								<th data-options="field:'itemid',width:160,align:'center'">序号</th>
								<th data-options="field:'productid',width:150,align:'center'">l级机构</th>
								<th data-options="field:'listprice',width:150,align:'center'">ll级机构</th>
								<th data-options="field:'unitcost',width:170,align:'center'">人数</th>
								<th data-options="field:'attr1',width:200,align:'center'">基本薪酬金额（元）</th>
								<th data-options="field:'status',width:170,align:'center'">操作</th>
								</tr>
							</thead>
					</table>
  				</div>
  		</div>
  </body>
</html>
