<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>显示课程信息</title>
</head>
<body>
	<center>
		<h1>湖南大学学生管理系统</h1>
		<a href="mainStudent.jsp">首页</a>
		<table align="center" border="1">
			<tr>
				<th>课程号</th>
				<th>课程名</th>
				<th>开课学期</th>
				<th>课程学时</th>
				<th>课程学分</th>
				<th>选课</th>
			</tr>
			<s:iterator value='courses'>
				<tr>
					<td><s:property value="cid" /></td>
					<td><s:property value="cname" /></td>
					<td><s:property value='kkxq' /></td>
					<td><s:property value="xs" /></td>
					<td><s:property value="xf" /></td>
					<td><a
						href="AddMyCourse.action?course.cid=<s:property value="cid"/>&course.cname=<s:property value="cname"/>">增选</a></td>
				</tr>
			</s:iterator>
		</table>
	</center>
	<p align="center">Designed by 304&306
</body>
</html>