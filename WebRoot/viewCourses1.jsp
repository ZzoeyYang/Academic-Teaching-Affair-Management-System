<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>��ʾ�γ���Ϣ</title>
</head>
<body>
	<center>
		<h1>���ϴ�ѧѧ������ϵͳ</h1>
		<a href="mainStudent.jsp">��ҳ</a>
		<table align="center" border="1">
			<tr>
				<th>�γ̺�</th>
				<th>�γ���</th>
				<th>����ѧ��</th>
				<th>�γ�ѧʱ</th>
				<th>�γ�ѧ��</th>
				<th>ѡ��</th>
			</tr>
			<s:iterator value='courses'>
				<tr>
					<td><s:property value="cid" /></td>
					<td><s:property value="cname" /></td>
					<td><s:property value='kkxq' /></td>
					<td><s:property value="xs" /></td>
					<td><s:property value="xf" /></td>
					<td><a
						href="AddMyCourse.action?course.cid=<s:property value="cid"/>&course.cname=<s:property value="cname"/>">��ѡ</a></td>
				</tr>
			</s:iterator>
		</table>
	</center>
	<p align="center">Designed by 304&306
</body>
</html>