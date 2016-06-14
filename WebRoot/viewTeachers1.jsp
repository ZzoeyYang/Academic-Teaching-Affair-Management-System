<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>显示教师信息</title>
</head>
<body>
	<center>
		<h1>湖南大学学生管理系统</h1>
		<a href="mainStudent.jsp"></a> <a href="mainStudent.jsp">首页</a>
		<table align="center" border="1">
			<tr>
				<th>教师职工号</th>
				<th>教师姓名</th>
			</tr>
			<s:iterator value="teachers">
				<tr>
					<td><s:property value="tid" /></td>
					<td><s:property value="tname" /></td>
					</tr>
			</s:iterator>
		</table>
	</center>
	<p align="center">Designed by 304&306
</body>
</html>