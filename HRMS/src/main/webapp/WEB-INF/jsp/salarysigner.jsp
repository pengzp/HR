<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
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
	<script type="text/javascript">
		$(document).ready(function(){
		
			
		$("#btn").click(function(){
		
		var sval = $("#_from").serialize()
		 $.ajax({
			url:"<%=request.getContextPath()%>/Salarysign",
			data:sval,
			type:"post",
			dataType:"json",
			success:function(val){
				alert(val);
			}
			
			
			})
			
			
		});
		
				
				
				
				
				
  					
			
			
		
		
		
		
			
		
});
	
	
	
	</script>
	

	
 <body>
  			<div class="body">
  				
  				<div id="_body">
  				<p>薪酬管理&gt;&gt;薪酬标准管理&gt;&gt;标准登记</p>
  					<form  method="post" id="_from">
  						<table  style="line-height:70px;margin-left:20px;" >
  								<tr>
  								<td>薪资标准编号：</td>
  								<td><input class="easyui-textbox" id="Sid" type="text" name="salary_id"  value=""/></td>
  								<td>薪资标准名称：</td>
  								<td><input class="easyui-textbox" type="text" name="salary_strandname"  /></td>
  								<td>薪资总额</td>
  								<td><input class="easyui-textbox" id="moneycount" type="text" name="sum_money"  /></td>
  								</tr>
  								<tr>
  								<td>制定人：</td>
  								<td><input class="easyui-textbox" type="text" name="maker"  /></td>
  								<td>登记人：</td>
  								<td><input class="easyui-textbox" type="text" name="signer"  /></td>
  								<td>登记时间：</td>
  								<td><input class="easyui-datetimebox" name="sign_time"  style="width:173px;"></td>
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
								<td><input class="easyui-textbox" id="A" type="text" name="basic_salary"  /></td>
								</tr>
								<tr>
								<td>2</td>
								<td>绩效奖金</td>
								<td><input class="easyui-textbox" id="B" type="text" name="jixiao_jiangjin"  /></td>
								</tr>
								<tr>
								<td>3</td>
								<td>交通补助</td>
								<td><input class="easyui-textbox" id="C" type="text" name="trans_help"  /></td>
								</tr>
								<tr>
								<td>4</td>
								<td>通讯补助</td>
								<td><input class="easyui-textbox" id="D" type="text" name="relation_help"  /></td>
								</tr>
								<tr>
								<td>5</td>
								<td>餐补</td>
								<td><input class="easyui-textbox" id="E" type="text" name="food_help"  /></td>
								</tr>
								<tr>
								<td>6</td>
								<td>住房补助</td>
								<td><input class="easyui-textbox" id="F" type="text" name="house_help"  /></td>
								</tr>
								<tr>
								<td>7</td>
								<td>出差补助</td>
								<td><input class="easyui-textbox" id="G" type="text" name="chuchai_help"  /></td>
								</tr>
								<tr>
								<td>8</td>
								<td>加班补助</td>
								<td><input class="easyui-textbox" id="H" type="text" name="working_help"  /></td>
								</tr>
							</thead>
						</table>
  					
  					
  					
  					
  					
  					
  					
  					<div style="margin:140px auto 0 300px ">
							<input id="btn" type="submit" style="width:100px;background:#2685FC;" value="保存" >
							<input id="btn" type="submit" style="width:100px;background:#2685FC;" value="审核复核" >
							<input id="btn1" onclick="window.close();" type="button" style="width:100px;background:#2685FC;" value="返回" >
						
					</div>
  					
  					
  					
  					</form>
  				
  				
  				
  				
  				
  				
  				
  				</div>
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			</div>
  
  
  			
    
  </body>
</html>
