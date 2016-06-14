<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>登录</title>
<style type="text/css">
body {background-color:#F6D8CE;}
img {width:250px;height:200px;opacity:0.5;float:left;margin:0px;padding:0px;}
</style>
</head>
<body>

   <div id="title">
	<p align="center">
		<img src="images/login.jpg" height="200px"  />
	    <img src="images/hnu.jpg" height="200px"  />
		<img src="images/login.jpg" height="200px"  />
   </div>
	
	<div id;"contex">
	<h1 align="center">湖南大学学生管理系统</h1>
	<p>
		<s:form action="Login2" method="post" theme="simple">
			
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
		
		<div id="foot">
		<p align="center">Designed by 304&306
		</div>
	
</body>
</html>