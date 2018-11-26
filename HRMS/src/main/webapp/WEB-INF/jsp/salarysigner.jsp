<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>薪酬登记</title>
	
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
  	
  	
 <body>
  			<div class="body">
  				
  				<div id="_body">
  				<p>薪酬管理&gt;&gt;薪酬标准管理&gt;&gt;标准登记</p>
  					<form action="" method="post" id="_from">
  						<table  style="line-height:70px;margin-left:20px;" >
  								<tr>
  								<td>薪资标准编号：</td>
  								<td><input class="easyui-textbox" type="text" name="salaryid"  /></td>
  								<td>薪资标准名称：</td>
  								<td><input class="easyui-textbox" type="text" name="salaryname"  /></td>
  								<td>薪资总额</td>
  								<td><input class="easyui-textbox" type="text" name="salarysum"  /></td>
  								</tr>
  								<tr>
  								<td>制定人：</td>
  								<td><input class="easyui-textbox" type="text" name="zhidingren"  /></td>
  								<td>登记人：</td>
  								<td><input class="easyui-textbox" type="text" name="dengjiren"  /></td>
  								<td>登记时间：</td>
  								<td><input class="easyui-datetimebox"  style="width:173px;"></td>
  							</tr>
  						</table>
  						
				  		<table  id="tt" border="1"  cellspacing="0" style="width:842px;height:400px;text-align:center;border-color:#95B8E7;margin-left:30px;margin-top:100px;">
							<thead>
								<tr>
									<th field="序号" width="190" align="center">序号</th>
									<th field="薪酬项目名称" width="250" align="center">薪酬项目名称</th>
									<th field="金额" width="400" align="center" >金额</th>
									
								</tr>
								<tr>
								<td>1</td>
								<td>基本工资</td>
								<td><input class="easyui-textbox" type="text" name="zhidingren"  /></td>
								</tr>
								<tr>
								<td>2</td>
								<td>绩效奖金</td>
								<td><input class="easyui-textbox" type="text" name="zhidingren"  /></td>
								</tr>
								<tr>
								<td>3</td>
								<td>交通补助</td>
								<td><input class="easyui-textbox" type="text" name="zhidingren"  /></td>
								</tr>
								<tr>
								<td>4</td>
								<td>通讯补助</td>
								<td><input class="easyui-textbox" type="text" name="zhidingren"  /></td>
								</tr>
								<tr>
								<td>5</td>
								<td>餐补</td>
								<td><input class="easyui-textbox" type="text" name="zhidingren"  /></td>
								</tr>
								<tr>
								<td>6</td>
								<td>住房补助</td>
								<td><input class="easyui-textbox" type="text" name="zhidingren"  /></td>
								</tr>
								<tr>
								<td>7</td>
								<td>出差补助</td>
								<td><input class="easyui-textbox" type="text" name="zhidingren"  /></td>
								</tr>
								<tr>
								<td>8</td>
								<td>加班补助</td>
								<td><input class="easyui-textbox" type="text" name="zhidingren"  /></td>
								</tr>
							</thead>
						</table>
  					
  					
  					
  					
  					
  					
  					
  					<div style="margin:140px auto 0 300px ">
						
						<a href="#" class="easyui-linkbutton c8" style="width:100px">保存</a>
						<a href="#" class="easyui-linkbutton c8" style="width:100px">审核复核</a>
						<a href="#" class="easyui-linkbutton c8" style="width:100px">返回</a>
					</div>
  					
  					
  					
  					</form>
  				
  				
  				
  				
  				
  				
  				
  				</div>
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			</div>
  
  
  			
    
  </body>
</html>
