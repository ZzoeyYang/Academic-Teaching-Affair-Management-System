<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>显示成绩信息</title>
</head>
<style type="text/css">
			.tablecss{
				background:#00FF7F url(images/star.jpg);
				background-size:870px auto
				opacity:0.55;
				width:870px;
			}
</style>
<body>
	<center>
		<h1>湖南大学学生管理系统</h1>
		<a href="mainStudent.jsp">首页</a>
		<table align="center" border="1" cellpadding="5" class="tablecss" >
			<tr>
				<th style="text-align: center">学号</th>
				<th style="text-align: center">学生姓名</th>
				<th style="text-align: center">课程编号</th>
				<th style="text-align: center">课程名</th>
				<th style="text-align: center">教师姓名</th>
				<th style="text-align: center">成绩</th>
			</tr>
			<s:iterator value='grade'>
				<tr>
					<td><s:property value="sid" /></td>
					<td><s:property value="sname" /></td>
					<td><s:property value='cid' /></td>
					<td><s:property value="cname" /></td>
					<td><s:property value="tname" /></td>
					<td><s:property value="total" /></td>
				</tr>
			</s:iterator>
		</table>
	</center>
</body>
</html>