<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix='s' uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�����ɼ�</title>
</head>
<body>
	<center>
		<h1>���ϴ�ѧѧ������ϵͳ</h1>
		<a href="mainAdmin.jsp">������ҳ</a>
		<s:form action="AddGrade" method="post" theme="simple">
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
				<s:reset value="����"></s:reset>
		</s:form>

		<s:fielderror></s:fielderror>
		<p>Designed by 304&306</p>
	</center>
</body>
</html>