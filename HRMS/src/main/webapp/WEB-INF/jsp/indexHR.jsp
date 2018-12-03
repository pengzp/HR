<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String name = request.getSession().getAttribute("uname").toString();

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>indexHR.jsp</title>
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
     <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/index.css">
     
  </head>
  
  <body class="easyui-layout">
    <div data-options="region:'north',border:false" style="height:60px;background:url('<%=request.getContextPath() %>/static/images/back1.jpg') no-repeat;padding:10px;font-size:18px;line-height: 40px;position: relative">
    	<span style="margin-left:40px;font-size: 22px;line-height: 40px;color:white">人力资源系统管理</span>
		
		<a id="btn" href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-man'" style="margin-left:950px;">欢迎&nbsp;<span><%=name %></span>&nbsp;登录</a>  
		
		 
		
		<a id="btn" href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-undo'">退出登录</a>  

    	
    </div>
    <div data-options="region:'west',split:true,title:'系统功能菜单'" style="width:240px;padding: 0">
        <div id="aa" class="easyui-accordion" data-options="fit:true" style="background:url('<%=request.getContextPath() %>/static/images/back3.jpg') no-repeat">
            <div title="系统设置" data-options="iconCls:'icon-save'">
                <ul id="tree" class="easyui-tree" style="color:white">
                    <li>
                        <a href="<%=path %>/userManager" class="menuA">用户管理</a>
                    </li>
					<li>
                        <a href="<%=path %>/deptManager" class="menuA">组织结构设置</a>
                    </li>
                    <li>
                        <a href="<%=path %>" class="menuA">职位设置</a>
                    </li>
                    <li>
                        <a href="<%=path %>" class="menuA">职称设置</a>
                    </li>
                    <li>
                        <a href="<%=path %>/" class="menuA">题库管理设置</a>
                    </li>
                    <li>
                        <a href="<%=path %>/" class="menuA">公共属性设置</a>
                    </li>
                    <li>
                        <a href="<%=path %>/" class="menuA">薪酬项目设置</a>
                    </li>
                </ul>
            </div>
            <div title="人事管理" data-options="iconCls:'icon-user'" style="padding:0px;">                
				<ul id="tree" class="easyui-tree">
                    <li>
                        <a href="<%=path %>/empManager" class="menuA">人事档案登记</a>
                    </li>
					<li>
                        <a href="<%=path %>/empCompound1" class="menuA">人事档案复核</a>
                    </li>
                    <li>
                        <a href="<%=path %>/empQueryList" class="menuA">人事档案查询</a>
                    </li>
                    <li>
                        <a href="<%=path %>" class="menuA">人事档案变更</a>
                    </li>
                    <li>
                        <a href="<%=path %>" class="menuA">人事档案删除管理</a>
                    </li>
                </ul>
            </div>
            <div title="招聘管理" data-options="iconCls:'icon-reload'">               
                <ul id="tree" class="easyui-tree">
                    <li>
                        <a href="customer.html" class="menuA">职位发布管理</a>
                    </li>

                </ul>
            </div>
            <div title="培训管理" data-options="iconCls:'icon-reload'">               
                <ul id="tree" class="easyui-tree">
                    <li>
                        <a href="customer.html" class="menuA">培训计划</a>
                    </li>

                </ul>
            </div>
            <div title="薪酬管理" data-options="iconCls:'icon-reload'">               
                <ul id="tree" class="easyui-tree">
                    <li>
                        <a href="<%=path %>/salarysign" class="menuA">薪酬标准管理</a>
                        
                    </li>
                     <li>
                    	<a href="<%=path %>/salaryupdate" class="menuA">薪酬标准登记修改</a>
                    </li>
                     <li>
                    	<a href="<%=path %>/salarystrandupdate" class="menuA">薪酬标准查询</a>
                    </li>
                    <li>
                    	<a href="<%=path %>/salarysearch" class="menuA">薪酬发放查询</a>
                    </li>
                   

                </ul>
            </div>
            <div title="数据分析" data-options="iconCls:'icon-reload'">
                <ul id="tree" class="easyui-tree">
                    <li>
                        <a href="customer.html" class="menuA">职工明细表</a>
                    </li>

                </ul>
            </div>
            <div title="待办列表" data-options="iconCls:'icon-reload'">
                <ul id="tree" class="easyui-tree">
                    <li>
                        <a href="<%=path %>/sendEmail" class="menuA">发送邮件</a>
                    </li>

                </ul>
            </div>
        </div>

    </div>
    <div data-options="region:'east',split:true,title:'我的工作平台'" style="width:150px;padding:10px;background:url('<%=request.getContextPath() %>/static/images/back3.jpg') no-repeat">
    	<a id="btn" href="<%=path%>/outlogin" class="easyui-linkbutton" data-options="iconCls:'icon-man'">切换登录</a>  
		<br>
		<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-lock'">修改密码</a>  
		
		 
    	
    </div>
    <div data-options="region:'south',border:false" style="height:50px;background:url('<%=request.getContextPath() %>/static/images/back3.jpg') no-repeat;padding:10px;color:white">企业人力资源管理</div>
    <div data-options="region:'center'">
        <div id="tt" class="easyui-tabs" data-options="fit:true"  style="background:#F3FDF6">
            <div title="首页" data-options="closable:true" style="overflow:auto;padding:20px;background:#F3FDF6">
              	<table width="100%" border="0" cellpadding="0" cellspacing="0">
				  <tr>
				    <td align="center"><img src="<%=request.getContextPath() %>/static/images/welcome.gif" width="290" height="92" /></td>
				  </tr>
				</table>
            </div>
        </div>

    </div>
    </body>

 	<script type="text/javascript">

        $(function () {
         
        	
            $(".menuA").click(function () {
                //获得超链接的文本内容
                var title = $(this).text();
                //获取请求的路径
                var url = $(this).attr("href");
                //创建选项卡
                createTabs(title,url);
                //让超链接不跳转
                return false;
            });
            //创建选项卡
            function createTabs(title,url) {
                //判断选项卡是否存在
                var flag = $("#tt").tabs("exists",title);
                if(flag){//存在,选中选项卡
                    $("#tt").tabs("select",title)
                }else{//不存在,创建选项卡
                    $("#tt").tabs("add",{
                        title:title,
                        content:createUrl(url),
                        closable:true,
                    })
                }
            }

            //创建iframe
            function createUrl(url){
                return "<iframe src='"+url+"' style='border: 0;width: 100%;height: 95%;'></iframe>"
            }
            
            
            $("#del").click(
	            function(){
	            	$.messager.confirm('确认','您确认想要删除记录吗？',function(r){    
					    if (r){    
					        alert('确认删除');    
						}    
					});  
				})
            
        	})

    </script>
</html>
