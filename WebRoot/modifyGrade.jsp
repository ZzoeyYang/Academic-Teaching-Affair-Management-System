<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>修改成绩信息</title>
</head>
<body>
	<center>
		<h1>湖南大学学生管理系统</h1>
		<s:form action="ModifyGrade1" method="post" theme="simple">
			<s:hidden name="grade.id"></s:hidden>
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
				<s:reset value="重改"></s:reset>
		</s:form>
		<s:fielderror></s:fielderror>
		<a href="mainAdmin.jsp">返回首页</a> <a href="ViewGrade.action">查看成绩信息</a>
	</center>
	<p align="center">Designed by 304&306
</body>
</html>