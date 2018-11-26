<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <title>My JSP 'jobissue.jsp' starting page</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/themes/icon.css">
     <link rel="stylesheet" href="<%=request.getContextPath() %>/static/themes/default/easyui.css">
     <script src="<%=request.getContextPath() %>/static/js/jquery.min.js"></script>
     <script src="<%=request.getContextPath() %>/static/js/jquery.easyui.min.js"></script>
     <script src="<%=request.getContextPath() %>/static/locale/easyui-lang-zh_CN.js"></script>
     <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/index.css">
  </head>
  
  <body>
  
  	<table id="dg" data-options="fit:true"></table>  
    
    <!--新增发布信息的表单，默认是隐藏的 -->
	<div id="winAdd" class="easyui-window" title="发布招聘信息" style="width:600px;height:400px"   
	        data-options="iconCls:'icon-save',modal:true,closed:true">   
		    
	        <form id="formAdd" method="post">
				<TABLE cellSpacing=0 cellPadding=5  border=0>
					<TR>
						<td>部     门</td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_name">
							</td>
						<td>招聘类型 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_level">
							</td>
					</TR>
					
					<TR>
						<td>职位编码 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_source">
							</td>
						<td>职位分类</td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_industry">
							</td>
					</TR>
				
					<TR>
						<td>职位名称 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_phone">
							</td>
						<td>招聘人数 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_mobile">
							</td>
					</TR>
					
					<TR>
						<td>截止日期 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_phone">
							</td>
						<td>职位描述 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_mobile">
							</td>
					</TR>
					
					<TR>
						<td>招聘要求 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_phone">
							</td>
						<td>发布时间 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_mobile">
							</td>
					</TR>
					<tr>
						<td rowspan=4>
							<button id="customerBtn" style="WIDTH:120px;align:center" type="button" onclick="save()">发布</button>
						</td>
					</tr>
				</TABLE>   
			</form>
		</div>
		<!-- 删除客户的表单，默认是隐藏的 -->
	<div id="winDel" class="easyui-window" title="删除招聘信息" style="width:400px;height:100px"   
	        data-options="iconCls:'icon-save',modal:true,closed:true">
	        <p>确定删除吗？</p>
	</div>
	<!-- 修改发布信息的表单，默认是隐藏的 -->
	<div id="winUp" class="easyui-window" title="修改招聘信息" style="width:600px;height:400px"   
	        data-options="iconCls:'icon-save',modal:true,closed:true">   
		    
	        <form id="formAdd" method="post">
				<TABLE cellSpacing=0 cellPadding=5  border=0>
					<TR>
						<td>部     门</td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_name">
							</td>
						<td>招聘类型 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_level">
							</td>
					</TR>
					
					<TR>
						<td>职位编码 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_source">
							</td>
						<td>职位分类</td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_industry">
							</td>
					</TR>
				
					<TR>
						<td>职位名称 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_phone">
							</td>
						<td>招聘人数 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_mobile">
							</td>
					</TR>
					
					<TR>
						<td>截止日期 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_phone">
							</td>
						<td>职位描述 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_mobile">
							</td>
					</TR>
					
					<TR>
						<td>招聘要求 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_phone">
							</td>
						<td>发布时间 </td>
							<td>
								<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_mobile">
							</td>
					</TR>
					
					<tr>
						<td rowspan=2>
							<button id="customerBtn" style="WIDTH:120px;align:center" type="button" onclick="update()">修改</button>
						</td>
					</tr>
				</TABLE>   
			</form>
		</div>
  </body>
</html>
<script type="text/javascript">
  		$(function(){
  			$('#dg').datagrid({    
			    url:"<%=path%>/listJobIssue",
			    columns:[[
			    	{field:"yyy",checkbox:true},    
			        {field:"id",title:'ID',width:50},     
			        {field:"deptname",title:'部门名',width:80},    
			        {field:"jobstyle",title:'招聘类型',width:80,align:'left'},
			        {field:"jobno",title:'职位编码',width:80},    
			        {field:"jobsort",title:'职位分类',width:80,align:'left'},
			        {field:"jobname",title:'职位名称',width:80},    
			        {field:"recruitnum",title:'招聘人数',width:80,align:'left'},
			        {field:"enddate",title:'截止日期',width:120},    
			        {field:"jobdescribe",title:'职位描述',width:120,align:'left'},
			        {field:"jobrequire",title:'招聘要求',width:120},   
			        {field:"registerdate",title:'招聘发布时间',width:120},   
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
		                $("#winUp").window('open');
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
				url:"<%=path%>/jobIssueAdd",
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