<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ListHouse.jsp</title>
    
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
     <script src="<%=request.getContextPath() %>/static/js/jquery.min.js"></script>
     <script src="<%=request.getContextPath() %>/static/js/jquery.easyui.min.js"></script>
     <script src="<%=request.getContextPath() %>/static/locale/easyui-lang-zh_CN.js"></script>
     <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/index.css">
  </head>
  
  <body>
  
    <table id="dg"></table>  
    
    <!-- 添加用户的表单，默认是隐藏的 -->
	<div id="winAdd" class="easyui-window" title="添加客户" style="width:600px;height:400px"   
	        data-options="iconCls:'icon-save',modal:true,closed:true">   
		    
	        <form id="formAdd" method="post">
				<TABLE cellSpacing=0 cellPadding=5  border=0>
				<TR>
					<td>房子名称：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="title">
					</td>
					<td>房子描述 ：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="description">
					</td>
				</TR>
				
				<TR>
					<td>房子价格：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="price">
					</td>
					<td>入住时间：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="pubdate">
					</td>
				</TR>
				
				<TR>
					<td>房子面积 ：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="floorage">
				</td>
				<td>移动电话 ：</td>
				<td>
					<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="contact">
						</td>
					</TR>
					
					<tr>
						<td rowspan=2>
							<button id="customerBtn" type="button" onclick="save()">保存</button>
						</td>
					</tr>
				</TABLE>   
			</form>
		</div>
		<!-- 删除客户的表单，默认是隐藏的 -->
	<div id="winDel" class="easyui-window" title="添加客户" style="width:400px;height:100px"   
	        data-options="iconCls:'icon-save',modal:true,closed:true">
	        <p>确定删除吗？</p>
	</div>
	<!-- 添加客户的表单，默认是隐藏的 -->
	<div id="winUp" class="easyui-window" title="添加客户" style="width:600px;height:400px"   
	        data-options="iconCls:'icon-save',modal:true,closed:true">   
		    
	        <form id="formAdd" method="post">
				<TABLE cellSpacing=0 cellPadding=5  border=0>
				<TR>
					<td>客户名称：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_name">
					</td>
					<td>客户级别 ：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_level">
					</td>
				</TR>
				
				<TR>
					<td>信息来源 ：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_source">
					</td>
					<td>客户行业：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_industry">
					</td>
				</TR>
				
				<TR>
					<td>固定电话 ：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_phone">
				</td>
				<td>移动电话 ：</td>
				<td>
					<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_mobile">
						</td>
					</TR>
					
					<tr>
						<td rowspan=2>
							<button id="customerBtn" type="button" onclick="save()">保存</button>
						</td>
					</tr>
				</TABLE>   
			</form>
		</div>
  </body>
  <script type="text/javascript">
  		$(function(){
  			$('#dg').datagrid({    
			    url:'',    
			    columns:[[
			    	{field:"yyy",checkbox:true},    
			        {field:"id",title:'ID',width:50},    
			        {field:"title",title:'房子类型',width:80},    
			        {field:"description",title:'房子描述',width:120,align:'left'},
			        {field:"xxx",title:'操作',width:100,formatter: function(value,row,index){
					return "<a href='#'>编辑</a> | <a href='#' onclick='del("+row.cust_id+")'>删除</a>";}    
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
		         pageList:[3,5,7,10],
		         
		          toolbar : [ {
		            id : 'add',    
		            text : '添加',
		            iconCls : 'icon-add',
		            height : 50,
		            handler : function() {
		                $("#winAdd").window('open');
		            }
		        }, '-', {
		            id : 'delete',
		            text : '删除',
		            iconCls : 'icon-remove',
		            height : 50,
		            handler : function() {
		                $("#winDel").window('open');
		                
		            }
		        }, '-', {
		            id : 'update',
		            text : '修改',
		            iconCls : 'icon-edit',
		            height : 50,
		            handler : function() {
		                gridDelete();
		            }
		        }, '-', {
		            id : '刷新',
		            text : '刷新',
		            iconCls : 'icon-undo',
		            height : 50,
		            handler : function() {
		                gridDelete();
		            }
		        }]       
		    
			}); 
  		
  		});
  		
  		//添加
  		function save(){
  		$("#formAdd").form("submit",{
				url:"houseAddAction",
				success:function(data){    
			       var jsonData = eval("("+data+")");
			       $.messager.show({
			    		title:'提示消息',
			    		msg:jsonData.result,
			    		timeout:3000,
			    		showType:'slide'
			    	});
			    	// 关闭窗口:
			    	$("#winAdd").window("close");
			    	// 重新加载数据:
			    	$("#dg").datagrid("reload");
		    }
			}); 
  		
  		}
  		
  		function update(){
  		
  			
  		}
  </script>
</html>
