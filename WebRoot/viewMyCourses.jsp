<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>显示选课信息</title>
</head>
<body>
	<center>
		<h1>湖南大学学生管理系统</h1>
		<a href="mainStudent.jsp">首页</a>
		<table align="center" border="1">
			<tr>
				<th>学号</th>
				<th>姓名</th>
				<th>课程编号</th>
				<th>课程</th>
				<th>删除</th>
			</tr>
			<s:iterator value='myCourses'>
				<tr>
					<td><s:property value="sid" /></td>
					<td><s:property value="sname" /></td>
					<td><s:property value="cid" /></td>
					<td><s:property value="cname" /></td>
					<td><a
						href="DeleteMyCourse.action?myCourse.id=<s:property value="id"/>">删除</a></td>
				</tr>
			</s:iterator>
		</table>

	</center>
	<p align="center">Designed by 304&306
</body>
</html>