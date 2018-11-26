<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
    <div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px;font-size: 18px;line-height: 40px">人力资源管理系统</div>
    <div data-options="region:'west',split:true,title:'菜单'" style="width:260px;padding:10px;padding: 0">
        <div id="aa" class="easyui-accordion" data-options="fit:true">
            <div title="系统设置" data-options="iconCls:'icon-save'" style="overflow:auto;padding:0;">
                <ul id="tree" class="easyui-tree">
                    <li>
                        <a href="<%=path %>/userManager" class="menuA">用户管理</a>
                    </li>

                </ul>
            </div>
            <div title="人事管理" data-options="iconCls:'icon-reload'" style="padding:10px;">                
				<ul id="tree" class="easyui-tree">
                    <li>
                        <a href="customer.html" class="menuA">人事档案登记</a>
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
                        <a href="customer.html" class="menuA">薪酬管理</a>
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
        </div>

    </div>
    <div data-options="region:'east',split:true,title:'East'" style="width:100px;padding:10px;">east region</div>
    <div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
    <div data-options="region:'center'">
        <div id="tt" class="easyui-tabs" data-options="fit:true">
            <div title="首页" data-options="closable:true" style="overflow:auto;padding:20px">
              
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
        })

    </script>
</html>
