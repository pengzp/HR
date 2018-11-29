<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'empManager.jsp' starting page</title>
    
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
  	
  	<style type="text/css">
  		body{
  			background:url("<%=request.getContextPath() %>/static/images/emp1.png") no-repeat;
  		}
  	</style>
  
  </head>
  
  <body>
  	
    <div id="tb_box" style="width: 900px;height: 800px;margin:20px auto">
   	 	<div>人事管理>>人事档案管理>>档案登记</div>
   	 	<br>
        <table width="100%">
            <form method="post" id="upfrom" action="">
                <tr>
                    <td>所属部门：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 480px;HEIGHT:22px" maxLength=50 name="dept_name" ></td>
                    <td>档案状态：</td>
                    <td><select class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="dangan">
                            <option value="1">待审核</option>
                            <option value="2" selected>在职</option>
                           
                        </select>
                    </td>
                    <td colspan="2" rowspan="5">
                        <div  style="border: 1px solid grey;width: 180px;height: 180px">
							
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>职位名称：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 480px;HEIGHT:22px" maxLength=50 name="job_name"></td>
                    <td>职位编码：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="job_num"></td>
                </tr>
                <tr>
                    <td>姓名:</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="emp_name"></td>
                    <td>性别：</td>
                    <td><select class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="sex">
                            <option value="0" selected>女</option>
                            <option value="1" selected>男</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>EMAIL:</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="email"></td>
                    <td>联系电话：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="phone"></td>
                </tr>
                <tr>
                    <td>住址：</td>
                    <td colspan="3"><INPUT class=textbox id=sChannel2 style="WIDTH: 480px;HEIGHT:22px" maxLength=50 name="address"></td>
                </tr>
                <tr></tr>
                <tr>
                    <td>身份证号：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="idcard"></td>
                    <td>户口所在地：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="registry"></td>
                    <td>政治面貌：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="polity"></td>
                </tr>
                <tr>
                    <td>毕业院校：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="university"></td>
                    <td>专业：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="specialty"></td>
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
                        <select class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="salary">
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
                        <select class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="banker">
                            <option value="工商银行">工商银行</option>
                            <option value="建设银行">建设银行</option>
                            <option value="中国银行">中国银行</option>
                            <option value="农业银行">农业银行</option>
                        </select>
                    </td>
                    <td>银行卡号：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="bank"></td>
                </tr>
                <tr>
                    <td>社保卡号：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="social_security"></td>
                    <td>登记人：</td>
                    <td><INPUT class=textbox id=sChannel2 style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="booker"></td>
                    <td>建档时间</td>
                    <td><INPUT id="tt" type="DATE" class=textbox  style="WIDTH: 160px;HEIGHT:22px" maxLength=50 name="booker_date"></td>
                </tr>
                <tr>
                    <td>个人履历：</td>
                    <td colspan="5" rowspan="2"><textarea cols="119" rows="5" class=textbox id=sChannel2 maxLength=50 name="content"></textarea></td>
                </tr>
                <tr></tr>
                <tr>
                    <td>家庭关系表：</td>
                    <td colspan="5" rowspan="2"><textarea cols="119" rows="5" class=textbox id=sChannel2 maxLength=50 name="family"></textarea></td>
                </tr>
                <tr></tr>
                <tr align="center">
					<td colspan="2">
						<br>
						<a id="btn1" class="easyui-linkbutton">确定</a>
						<!-- <a id="btn2" class="easyui-linkbutton">关闭</a> -->
					</td>
				</tr>  
            </form>
        </table>
    </div>
  </body>
  <script type="text/javascript">
  		$(document).ready(function(){
  			
  		
  		})  	
  </script>
  
</html>
