<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>显示课程信息</title>
<style type="text/css">
			.tablecss{
				background:#00FF7F url(images/star.jpg);
				background-size:870px auto
				opacity:0.55;
				width:870px;
			}
		</style>
</head>
<body>
	<center>
		<h1>湖南大学学生管理系统</h1>
		<a href="mainStudent.jsp">首页</a>
		<table align="center" border="1" cellpadding="5" class="tablecss">
			<tr>
				<th style="text-align">课程号</th>
				<th style="text-align">课程名</th>
				<th style="text-align">开课学期</th>
				<th style="text-align">课程学时</th>
				<th style="text-align">课程学分</th>
				<th style="text-align">选课</th>
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
</body>
</html>