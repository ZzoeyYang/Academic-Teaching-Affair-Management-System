<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>显示成绩信息</title>
</head>
<body>
	<center>
		<h1>湖南大学学生管理系统</h1>
		<a href="mainAdmin.jsp">首页</a>
		<table align="center" border="1">
			<tr>
				<th>学号</th>
				<th>学生姓名</th>
				<th>课程编号</th>
				<th>课程名</th>
				<th>教师姓名</th>
				<th>成绩</th>
				<th>修改</th>
				<th>删除</th>
			</tr>
			<s:iterator value='grade'>
				<tr>
					<td><s:property value="sid" /></td>
					<td><s:property value="sname" /></td>
					<td><s:property value='cid' /></td>
					<td><s:property value="cname" /></td>
					<td><s:property value="tname" /></td>
					<td><s:property value="total" /></td>
					
					<td><a
						href="ModifyGrade.action?grade.id=<s:property value="id"/>">修改</a></td>
					<td><a
						href="DeleteGrade.action?grade.id=<s:property value="id"/>">删除</a></td>
				
				</tr>
			</s:iterator>
		</table>
		<a href="addGrade.jsp">新增课程信息</a>
	</center>
	<p align="center">Designed by 304&306
</body>
</html>