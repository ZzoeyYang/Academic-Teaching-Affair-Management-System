<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>��ʾ��ʦ��Ϣ</title>
</head>
<body>
	<center>
		<h1>���ϴ�ѧѧ������ϵͳ</h1>
		<a href="mainStudent.jsp"></a> <a href="mainStudent.jsp">��ҳ</a>
		<table align="center" border="1">
			<tr>
				<th>��ʦְ����</th>
				<th>��ʦ����</th>
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