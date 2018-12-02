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
	<div id="winAdd" class="easyui-window" title="添加用户" style="width:380px;height:240px"   
	        data-options="iconCls:'icon-save',modal:true,closed:true">   
		    
	        <form id="formAdd" method="post">
				<!-- <TABLE cellSpacing=0 cellPadding=5  border=0>
				<TR>
					<td>填写账号：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="usercode">
					</td>
					
				</TR>
				<TR>
					<td>用户名称：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="username">
					</td>
				</TR>
				<TR>
					<td>用户密码 ：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="password">
					</td>
					
				</TR>
				<TR>
					<td>加盐格式 ：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="salt">
					</td>
				</TR>
				<TR>
					<td>账号是否锁定 ：</td>
					<td>
						<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="locked">
					</td>
				</TR> -->
				<table>
				<tr>
					<td>用户名称:</td>
					<td><input type="text" name="username" class="easyui-validatebox" required=true  missingMessage="用户名必填!" invalidMessage="用户名必须在1到20个字符之间!"  value="" /></td>
				</tr>
				<tr>
					<td>用户账号：</td>
					<td><input type="text" name="usercode" class="easyui-validatebox" required=true validType="midLength[1,50]" missingMessage="用户账号必填!" invalidMessage="作者姓名必须在1到5个字符之间!"  value="" /></td>
				</tr>
				<tr>
					<td>用户密码 ：</td>
					<td><input type="text" name="password" class="easyui-validatebox" required=true validType="midLength[1,20]" missingMessage="用户密码必填!" invalidMessage="作者姓名必须在1到5个字符之间!"  value="" /></td>
				</tr>
				<tr>
					<td>加盐格式 ：</td>
					<td><input type="text" name="salt" class="easyui-validatebox" required=true validType="midLength[1,50]" value="" /></td>
				</tr>
				<tr>
					<td>账号是否锁定 ：</td>
					<td><input id="publishdate" style="width:160px;"  type="text" name="locked" value="" /></td>
				</tr>
				<TR>
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
	<!-- 修改用户的表单，默认是隐藏的 -->
	<div id="UpDialog" class="easyui-window" title="添加用户" style="width:380px;height:300px"   
	        data-options="iconCls:'icon-save',modal:true,closed:true">
    	<form id="myform" method="post">
			<input type="hidden" name="id" value="" />
			<table>
				<tr>
					<td>用户名称:</td>
					<td><input type="text" name="username" class="easyui-validatebox" validType="midLength[1,20]" value="" /></td>
				</tr>
				<tr>
					<td>用户账号：</td>
					<td><input type="text" name="usercode" class="easyui-validatebox" validType="midLength[1,50]" value="" /></td>
				</tr>
				<tr>
					<td>用户密码 ：</td>
					<td><input type="text" name="password" class="easyui-validatebox" validType="midLength[1,20]" value="" /></td>
				</tr>
				<tr>
					<td>加盐格式 ：</td>
					<td><input type="text" name="salt" class="easyui-validatebox"  validType="midLength[1,50]"   value="" /></td>
				</tr>
				<tr>
					<td>账号是否锁定 ：</td>
					<td><input id="publishdate" style="width:160px;"  type="text" name="locked" value="" /></td>
				</tr>
				
				<tr align="center">
					<td colspan="2">
						<br>
						<a id="btn1" class="easyui-linkbutton" onclick="edit()">确定</a>
						<!-- <a id="btn2" class="easyui-linkbutton">关闭</a> -->
					</td>
				</tr>   					 					    					    					    					    					    					    					    					
			</table>
   		</form>
    
    </div>
  </body>
  <script type="text/javascript">
  		$(function(){
  			$('#dg').datagrid({    
			    url:"<%=request.getContextPath() %>/userlist",
			       
			    columns:[[
			    	{field:"yyy",checkbox:true},    
			        {field:"id",title:'ID',width:50},    
			        {field:"usercode",title:'账号',width:80},    
			        {field:"username",title:'姓名',width:120,align:'left'},
			        {field:"password",title:'密码',width:120,align:'left'},
			        {field:"salt",title:'加盐',width:120,align:'left'},
			        {field:"locked",title:'账号是否锁定',width:120,align:'left'},
			        {field:"xxx",title:'操作',width:100,formatter: function(value,row,index){
					return "<a href='javascript:void(0)' id='up'>编辑</a> | <a href='#' onclick='del("+row.cust_id+")'>删除</a>";}    
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
		            	//获取选中行
		            	var arr =$('#dg').datagrid('getSelections');
		            	//判断是否选中记录
						if(arr.length < 1){
							$.messager.show({
								title:'提示信息!',
								msg:'必须选择一行数据!'
									});
						} else {
							//弹出提示框框
							$.messager.confirm('提示信息' , '确认删除?' , function(r){
								if(r){
									var ids = '';
									for(var i =0 ;i<arr.length;i++){
										ids += arr[i].id + ',' ;
									}
									ids = ids.substring(0 , ids.length-1);
									$.post('<%=request.getContextPath()%>/delUsers' , {id:ids} , function(result){
										
										alert(result);
										//1 刷新数据表格 
										$('#dg').datagrid('reload');
										//2 清空idField   
										$('#dg').datagrid('unselectAll');
										
										$.messager.show({
											title:'提示信息!', 
											msg:"删除成功！！"
										});
										
									});
								} else {
									return ;
								}
							});
							 
						}
		            	
/* 		                $("#winDel").window('open');
 */		                
		            }
		        }, '-', {
		            id : 'update',
		            text : '修改',
		            iconCls : 'icon-edit',
		            height : 50,
		            handler : function() {
		                //判斷方法
			    		flag = 'edit';
						var arr =$('#dg').datagrid('getSelections');
							if(arr.length != 1){
								$.messager.show({
									title:'提示信息!',
									msg:'只能选择一行记录进行修改!'
								});
							} else {
								$('#UpDialog').dialog({
									title:'修改用户'
								});
								$('#UpDialog').dialog('open'); //打开窗口
								//$('#myform').get(0).reset();   //清空表单数据 
							   $('#myform').form('clear');
							   $('#myform').form('load',{	   //调用load方法把所选中的数据load到表单中,非常方便
									id:arr[0].id,
									usercode:arr[0].usercode,
									username:arr[0].username ,
									password:arr[0].password ,
									salt:arr[0].salt ,
									locked:arr[0].locked ,
									
								});	
							}
		            }
		        }, '-', {
		            id : '刷新',
		            text : '刷新',
		            iconCls : 'icon-undo',
		            height : 50,
		            handler : function() {
		               $("#dg").datagrid("reload");
		            }
		        },'-',
		            {
		            text:'搜索',
			    	iconCls:'icon-search',
			    	handler:function(){
			    		$('#mysearch').form('clear');
			    	 	$('#lay').layout('expand' , 'north');
			    		}
			   	}]       
		    
			}); 
  		
  		});
  		
  		//添加
  		function save(){
  		$("#formAdd").form("submit",{
				url:"<%=request.getContextPath() %>/addUsers",
				success:function(data){    
			       /* var jsonData = eval("("+data+")"); */
			       $.messager.show({
			    		title:'提示消息',
			    		msg:data,
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
  		//修改的提交方法
  		function edit(){
  		$("#myform").form("submit",{
				url:"<%=request.getContextPath() %>/editUsers",
				success:function(data){    
			       /* var jsonData = eval("("+data+")"); */
			       $.messager.show({
			    		title:'提示消息',
			    		msg:data,
			    		timeout:3000,
			    		showType:'slide'
			    	});
			    	// 关闭窗口:
			    	
			    	$("#UpDialog").window("close");
			    	// 重新加载数据:
			    	$("#dg").datagrid("reload");
		    }
			}); 
  		
  		}
  		
  		
  		
  </script>
</html>
