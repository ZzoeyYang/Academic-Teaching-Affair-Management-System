<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>��ʾ�ɼ���Ϣ</title>
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
		<h1>���ϴ�ѧѧ������ϵͳ</h1>
		<a href="mainStudent.jsp">��ҳ</a>
		<table align="center" border="1" cellpadding="5" class="tablecss" >
			<tr>
				<th style="text-align: center">ѧ��</th>
				<th style="text-align: center">ѧ������</th>
				<th style="text-align: center">�γ̱��</th>
				<th style="text-align: center">�γ���</th>
				<th style="text-align: center">��ʦ����</th>
				<th style="text-align: center">�ɼ�</th>
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