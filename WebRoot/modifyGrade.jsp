<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�޸ĳɼ���Ϣ</title>
</head>
<body>
	<center>
		<h1>���ϴ�ѧѧ������ϵͳ</h1>
		<s:form action="ModifyGrade1" method="post" theme="simple">
			<s:hidden name="grade.id"></s:hidden>
			<p>
				ѧ�ţ�
				<s:textfield name="grade.sid"></s:textfield>
			<p>
				ѧ��������
				<s:textfield name="grade.sname"></s:textfield>
			<p>
				�γ̺ţ�
				<s:textfield name="grade.cid"></s:textfield>
			<p>
				�γ�����
				<s:textfield name="grade.cname"></s:textfield>
			<p>
				��ʦ������
				<s:textfield name="grade.tname"></s:textfield>
			<p>
				�ɼ���
				<s:textfield name="grade.total"></s:textfield>
			<p>
				<s:submit value="ȷ��"></s:submit>
				<s:reset value="�ظ�"></s:reset>
		</s:form>
		<s:fielderror></s:fielderror>
		<a href="mainAdmin.jsp">������ҳ</a> <a href="ViewGrade.action">�鿴�ɼ���Ϣ</a>
	</center>
	<p align="center">Designed by 304&306
</body>
</html>