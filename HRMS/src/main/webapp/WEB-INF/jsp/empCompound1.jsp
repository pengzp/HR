<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'empCompound1.jsp' starting page</title>
    
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
    <div id="tb_box" style="width:1200px;height:500px;margin:20px auto">
    	<div><h2>待审核的名单</h2></div>
    	<table id="dg"></table>
    	
    	<!-- 修改用户的表单，默认是隐藏的 -->
	<div id="UpDialog" class="easyui-window" title="审核信息" style="width:950px;height:650px"   
	        data-options="iconCls:'icon-save',modal:true,closed:true">
    	<form method="post" id="upfrom" action="">  
    	<input type="hidden" name="emp_id" value="" /> 
    	<input type="hidden" name="job_id" value="" />	
    	<table width="100%">			
                <tr>
                    <td>所属部门：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="dept_name" value=""></td>
                    <td>档案状态：</td>
                    <td><select class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="dangan">
                            <option value="审核通过" selected>审核通过</option>
                            <option value="离职">离职</option>
                           
                        </select>
                    </td>
                    <td colspan="2" rowspan="5">
                        <div  style="border: 1px solid grey;width: 180px;height: 180px">
							
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>职位名称：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="job_name" value=""></td>
                    <td>职位编码：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="job_num" value=""></td>
                </tr>
                <tr>
                    <td>姓名:</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="emp_name" value=""></td>
                    <td>性别：</td>
                    <td><select class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="sex">
                            <option value="0" selected>女</option>
                            <option value="1" selected>男</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>EMAIL:</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="email" value=""></td>
                    <td>联系电话：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="phone" value=""></td>
                </tr>
                <tr>
                    <td>住址：</td>
                    <td colspan="3"><INPUT class=textbox id=sChannel2 style="WIDTH: 480px;HEIGHT:22px" maxLength=50 name="address" value=""></td>
                </tr>
                <tr></tr>
                <tr>
                    <td>身份证号：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="idcard" value=""></td>
                    <td>户口所在地：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="registry" value=""></td>
                    <td>政治面貌：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="polity" value=""></td>
                </tr>
                <tr>
                    <td>毕业院校：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="university" value=""></td>
                    <td>专业：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="specialty" value=""></td>
                    <td>学历：</td>
                    <td>
                        <select class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="Education">
                            <option value="硕士">硕士</option>
                            <option value="本科" selected>本科</option>
                            <option value="大专">大专</option>
                            <option value="中专">中专</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>薪酬标准：</td>
                    <td>
                        <select class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="salary" value="">
                            <option value="3000">3000</option>
                            <option value="4500">4500</option>
                            <option value="5500" selected>5500</option>
                            <option value="6500">6500</option>
                            <option value="7500">7500</option>
                            <option value="8500">8500</option>
                            <option value="10000">10000</option>
                        </select>
                    </td>
                    <td>开户行：</td>
                    <td>
                        <select class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="banker" value="">
                            <option value="工商银行">工商银行</option>
                            <option value="建设银行">建设银行</option>
                            <option value="中国银行">中国银行</option>
                            <option value="农业银行">农业银行</option>
                        </select>
                    </td>
                    <td>银行卡号：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="bank" value=""></td>
                </tr>
                <tr>
                    <td>社保卡号：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="social_security" value=""></td>
                    <td>登记人：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="booker" value=""></td>
                    <td>建档时间</td>
                    <td><INPUT id="tt" type="text" class=textbox  style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="booker_date" value=""></td>
                </tr>
                <tr>
                    <td>个人履历：</td>
                    <td colspan="5" rowspan="2"><textarea cols="119" rows="5" class=textbox id=sChannel2 maxLength=50 name="content" value=""></textarea></td>
                </tr>
                <tr></tr>
                <tr>
                    <td>家庭关系：</td>
                    <td colspan="5" rowspan="2"><textarea cols="119" rows="5" class=textbox id=sChannel2 maxLength=50 name="family" value=""></textarea></td>
                </tr>
                <tr></tr>
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
    </div>
  </body>
  <script type="text/javascript">
  		$(function(){
  			$('#dg').datagrid({    
			    url:"<%=request.getContextPath() %>/compound_dangan",
			       
			    columns:[[
			    	{field:"yyy",checkbox:true},    
			        {field:"emp_id",title:'员工ID',width:50},    
			        {field:"emp_name",title:'员工姓名',width:80},
			        {field:"dept_id",title:'部门编号',width:80},
			        {field:"dept_name",title:'所属部门',width:120,align:'left'},
			        {field:"job_name",title:'职称',width:80,align:'left'},
			        {field:"job_id",title:'职位id',width:80},
			        {field:"job_num",title:'职位编码',width:120,align:'left'},
			        {field:"dangan",title:'档案状态',width:120,align:'left'},
			        {field:"sex",title:'性别',width:80},
			        {field:"email",title:'Email',width:150},
			        {field:"phone",title:'联系电话',width:150},
			        {field:"idcard",title:'idcard',width:150},
			        {field:"address",title:'住址',width:150},
			        {field:"registry",title:'户籍',width:150},
			        {field:"university",title:'毕业大学',width:150},
			        {field:"Education",title:'学历',width:150},
			        {field:"specialty",title:'专业',width:150},
			        {field:"salary",title:'薪酬',width:150},
			        {field:"bank",title:'银行账号',width:150},
			        {field:"banker",title:'开户银行',width:150},
			        {field:"booker",title:'登记人',width:150},
			        {field:"booker_date",title:'登记时间',width:150},
			        {field:"social_security",title:'社保账号',width:150},
			        {field:"polity",title:'政治面貌',width:150},
			        {field:"xxx",title:'操作',width:100,formatter: function(value,row,index){
					return "<a href='javascript:void(0)' onclick='del("+row.cust_id+")'>审核</a>";}    
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
		        
		         toolbar : [
		         	{
		            id : 'update',
		            text : '审核',
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
							   $('#upfrom').form('clear');
							   $('#upfrom').form('load',{	   //调用load方法把所选中的数据load到表单中,非常方便
									emp_id:arr[0].emp_id,
									emp_name:arr[0].emp_name,
									sex:arr[0].sex ,
									email:arr[0].email ,
									phone:arr[0].phone ,
									idcard:arr[0].idcard ,
									address:arr[0].address,
									registry:arr[0].registry,
									university:arr[0].university ,
									Education:arr[0].Education ,
									specialty:arr[0].specialty ,
									salary:arr[0].salary ,
									bank:arr[0].bank,
									booker:arr[0].booker,
									booker_date:arr[0].booker_date ,
									social_security:arr[0].social_security ,
									banker:arr[0].banker ,
									content:arr[0].content ,
									family:arr[0].family,
									polity:arr[0].polity,
									dept_id:arr[0].dept_id ,
									dept_name:arr[0].dept_name ,
									job_id:arr[0].job_id ,
									job_num:arr[0].job_num ,
									job_name:arr[0].job_name ,
									dangan:arr[0].dangan ,
								});	
							}
		            }
		        }]
			}); 
  		
  		});
  		
  		//审核修改的提交方法
  		function edit(){
  		$("#upfrom").form("submit",{
				url:"<%=request.getContextPath() %>/updateEmps",
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
