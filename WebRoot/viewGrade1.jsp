<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>��ʾ�ɼ���Ϣ</title>
</head>
<body>
	<center>
		<h1>���ϴ�ѧѧ������ϵͳ</h1>
		<a href="mainStudent.jsp">��ҳ</a>
		<table align="center" border="1">
			<tr>
				<th>ѧ��</th>
				<th>ѧ������</th>
				<th>�γ̱��</th>
				<th>�γ���</th>
				<th>��ʦ����</th>
				<th>�ɼ�</th>
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
	<p align="center">Designed by 304&306
</body>
</html>