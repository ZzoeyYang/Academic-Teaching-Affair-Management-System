<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix='s' uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>新增成绩</title>
</head>
<body>
	<center>
		<h1>湖南大学学生管理系统</h1>
		<a href="mainAdmin.jsp">返回首页</a>
		<s:form action="AddGrade" method="post" theme="simple">
			<p>
				学号：
				<s:textfield name="grade.sid"></s:textfield>
			<p>
				学生姓名：
				<s:textfield name="grade.sname"></s:textfield>
			<p>
				课程号：
				<s:textfield name="grade.cid"></s:textfield>
			<p>
				课程名：
				<s:textfield name="grade.cname"></s:textfield>
			<p>
				教师姓名：
				<s:textfield name="grade.tname"></s:textfield>
			<p>
				成绩：
				<s:textfield name="grade.total"></s:textfield>
			<p>
				<s:submit value="确定"></s:submit>
				<s:reset value="重置"></s:reset>
		</s:form>

		<s:fielderror></s:fielderror>
		<p>Designed by 304&306</p>
	</center>
</body>
</html>