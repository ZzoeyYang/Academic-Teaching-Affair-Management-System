<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=GBK">
	<title>登录</title>
	<style type="text/css"> 
	#container{
	width:1062px;
	margin:0 auto;
	}
	#topframe{
	width:100%;
	}
	#topframe_01{
	width:100%;
	height:95px;
	}
	#topframe_02{
	width:100%;
	height:103px;
	background:#F53D05 url(images/logo.jpg) no-repeat 20px center;
	}
	#mainframe {
	width:1062px;
	margin:0 auto;
	margin-top:25px;
	}
	#mainframe:after{
	content:".";
	display:block;
	height:0;
	clear:both;
	visibility:hidden;	
	}
	#botframe {
	clear:both;
	margin:0 auto;
	margin-top:40px;
	width:100%;
	padding-bottom:30px;
	}
	#mainframe_01 {
	width:712px;
	height:334px;
	float:left;
	background:url(images/p3.png) no-repeat left top;
	}
	#mainframe_02{
	width:342px;
	height:333px;
	float:right;
	border:1px solid #D5D5D5;
	border-top:none;
	position:relative;
	}
	.caLogin {
	width:100%;
	margin:10px;
	background:url(images/loginhead.jpg) no-repeat left top;
	padding-top:40px;
	position:relative;
	}
	tr{
	height:40px;
	}
	</style>
</head>

<body>
	<div id="container">
		<div id="topframe">
			<div id="topframe_01">
			</div>
			<div id="topframe_02">
			</div>
		</div>
	
		<div id="mainframe">
			<div id="mainframe_01">
			
			</div>
			
			<div id="mainframe_02">
				
		<s:form action="Login2" method="post" theme="simple">
			<p width="40px"/>
			<table align="center">
				<tr>
					<td>身份：</td>
					<td><s:select  list="{'学生','管理员'}" name="test" headerValue="请选择" ></s:select></td>
				</tr>
				<tr>
					<td>账号：</td>
					<td><s:textfield name="login.name" size="10"></s:textfield></td>
				</tr>

				<tr>
					<td>密码:</td>
					<td><s:password name="login.password" size="10"></s:password></td>
				</tr>

				<tr>
					<td><s:submit value="登录"></s:submit></td>
					<td><s:reset value="重置"></s:reset></td>
				</tr>
			</table>
		</s:form>
		<s:fielderror></s:fielderror>
		
		   </div>
			
		</div>
		
		<div id="botframe">
		
		</div>
		
	</div>
</body>
</html>