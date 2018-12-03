<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>薪酬标准查询</title>
	<script type="text/javascript" src="static/js/jquery-1.8.3.js"></script>
    <link rel="stylesheet" type="text/css" href="static/themes/default/easyui.css">
   	<link rel="stylesheet" type="text/css" href="static/themes/icon.css">
   	<link rel="stylesheet" type="text/css" href="static/themes/color.css">
   	<script type="text/javascript" src="static/js/jquery.easyui.min.js"></script>
   	
   	
	
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
  		#tt tr td{
  			width:200px;
  			height:30px;
  		}
  	

</style>
  	<script type="text/javascript">
  		$(document).ready(function(){
  		
  			$("#search").click(function(){
  					var x = $("#salaryid").val();
  					
  				$.ajax({
  					url:"<%=request.getContextPath()%>/chaxun",
  					data:{"salary_id":$("#salaryid").val(),
  					"check_status":$("#cc").val()
  					},
  					dataType:"json",
  					type:"post",
  					success:function(val){
  					alert("查询成功！");
  					
  						$("table tr").eq(0).nextAll().remove();
  						
  					/* var num = eval('('+val+')');*/
  						$.each(val,function(key,value){
	  						var tr = "<tr><td>"+value.salary_id+"</td>"+
		  						"<td>"+value.salary_strandname+"</td>"+
		  						"<td>"+value.check_status+"</td>"+
		  						"+<td>"+value.sign_time+"</td>"+
		  						"<td><a href='#' id='up' value='"+value.salary_id+"'>修改</a><a  href='#' id='del' value='"+value.salary_id+"'>删除</a></td>"+"</tr>";
		  						
		  						$("#tt").append(tr);
		  						$("value").append(tr);
		  						$("#del").css({'margin-left':'10px','text-decoration':'none'});
		  						$("#up").css('text-decoration','none')
		  					
	  					}) 
  					
  		
  					}
  			
  				})
  				
			});
			
	
			$("#del").live("click",function(){
				var x =$("#del").attr("value");
				alert(x+"-----------");
					$.ajax({
						url:"<%=request.getContextPath()%>/delData",
						data:{"salary_id":$("#del").attr("value")},
						dataType:"text",
						type:"post",
						success:function(){
							
							
						}
					
					})
				
				
				flash();
				
			})
			$("#up").live("click",function(){
				$('#win').window('open');
				alert("***************");
				var a =$("#up").attr("value");
				$.ajax({
					url:"<%=request.getContextPath()%>/updateData",
					data:{"salary_id":$("#up").attr("value")},
					dataType:"json",
					type:"post",
					success:function(val){
					
							alert("111111111");
							
							$.each(val,function(key,value){
							
								var tb = "<input type='text' value='"+value.salary_id+"'>";
							
								$("#_form").append(tb);
							
							
							
							
							
							
							})
							
					
					
					
					}
				
				
				
				
				
				})
				
				
					
			})
				
				
				
			
			function flash(){
			
				window.location.reload();
			}
	
			
});
  	

  	</script>
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
  	
 <body>
  			<div class="body">
  				<div id="_body">
  				<p>薪酬管理&gt;&gt;薪酬标准管理</p>
  					<form action="" method="post" id="_from">
  						<table  style="line-height:70px;margin-left:20px;" >
  								<tr>
  								<td>薪酬标准编号</td>
  								<td><input class="easyui-textbox" id="salaryid" type="text" name="salaryid"  /></td>
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
  								<input class="easyui-datetimebox" id="sign_time"  style="width:173px;">
  								</td>
  								<td>至</td>
  								<td><input class="easyui-datetimebox" id="end"  style="width:173px;"></td>
  								
  								</tr>
  						</table>
  						<a href="#" id="search" class="easyui-linkbutton c8" style="width:100px">查询</a>
  						
  						<a href="#" id="add" class="easyui-linkbutton c8" style="width:100px ">标准登记</a>
				  		<table  id="tt" border="1"  cellspacing="0" style="text-align:center;border-color:#95B8E7;margin-left:30px;margin-top:100px;">
							<tr>
									<td>薪酬标准编码</td>
									<td>薪酬标准名称</td>
									<td>审核状态</td>
									<td>登记时间</td>
									<td>操作</td>
							</tr>
						</table>
  			</form>
  		</div>
  </div>
  			
  			
  	<!-- 修改弹出框 -->
  	<div id="win" class="easyui-window" title="薪酬标准修改" style="width:1000px;height:600px"
    data-options="iconCls:'icon-save',modal:true,closed:true">
    <div class="easyui-layout" data-options="fit:true">
		<form action="" method="post" id="_from">
  						<table  style="line-height:70px;margin-left:20px;" >
  								<tr>
  								<td>薪资标准编号：</td>
  								<td><input class="easyui-textbox" id="id" type="text" name="salaryid"  /></td>
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
  						
				  		<table  id="tt" border="1"  cellspacing="0" style="width:842px;height:400px;text-align:center;border-color:#95B8E7;margin-left:30px;margin-top:40px;">
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
