<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>薪酬标准查询</title>
	
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
  		
  		#_from{
  			
  			width:1000px;
  			height:790px;
  			margin:0 auto;
  			
  		
  		}
  	
  	
</style>
  	<script type="text/javascript">
  		$
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	</script>
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
 <body>
  			<div class="body">
  				
  				<div id="_body">
  				<p>薪酬管理&gt;&gt;薪酬标准管理</p>
  					<form action="" method="post" id="_from">
  						<table  style="line-height:70px;margin-left:20px;" >
  								<tr>
  								<td>薪酬标准编号</td>
  								<td><input class="easyui-textbox" type="text" name="salaryid"  /></td>
  								<td>审核状态</td>
  								<td>
  								<select id="cc" class="easyui-combobox" name="dept" style="width:173px;">
    								
    								<option checked>---</option>
    								<option>审核中</option>
    								<option>审核通过</option>
    								
									</select>
								</td>
  								<td>登记时间</td>
  								<td>
  								<input class="easyui-datetimebox"  style="width:173px;">
  								</td>
  								
  								
  								<td>至</td>
  								<td><input class="easyui-datetimebox"  style="width:173px;"></td>
  								
  								</tr>
  						</table>
  						<a href="#" class="easyui-linkbutton c8" style="width:100px">查询</a>
  						
  						<a href="#" class="easyui-linkbutton c8" style="width:100px">标准登记</a>
				  		<table  id="tt" border="1"  cellspacing="0" style="width:842px;height:400px;text-align:center;border-color:#95B8E7;margin-left:30px;margin-top:100px;">
							<thead>
								<tr>
									<th field="薪酬标准编码" width="100" align="center">薪酬标准编码</th>
									<th field="薪酬标准名称" width="160" align="center">薪酬标准名称</th>
									<th field="审核状态" width="200" align="center" >审核状态</th>
									<th field="登记时间" width="120" align="center">登记时间</th>
									<th field="操作" width="230" align="center">操作</th>
								</tr>
								<tr>
								<td>1</td>
								<td>1</td>
								<td></td>
								<td></td>
								<td></td>
								</tr>
								<tr>
								<td>2</td>
								<td>1</td>
								<td></td>
								<td></td>
								<td></td>
								</tr>
								<tr>
								<td>3</td>
								<td>1</td>
								<td></td>
								<td></td>
								<td></td>
								</tr>
								<tr>
								<td>4</td>
								<td>1</td>
								<td></td>
								<td></td>
								<td></td>
								</tr>
								
							</thead>
						</table>
  					
  					
  			</form>
  				
  				
  				
  				
  				
  				
  				
  				</div>
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			</div>
  
  
  			
    
  </body>
</html>
