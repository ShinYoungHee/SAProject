<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page contentType="text/html; charset=EUC-KR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="assets/css/boardStyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�� ����</title>
</head>
<body>
<div id="s_left"></div>
<div id="contents">
<center>
	<h1>�Խñ� �����ϱ�</h1>
	<hr>
	<form action="updateBoard" method="post">
	<table border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td bgcolor="orange">����</td>
		</tr>
		<tr>
			<td bgcolor="orange">�ۼ���</td>
			<td align="left">${board.writer }</td>
		</tr>
		<tr>
			<td bgcolor="orange">����</td>
			<td align="left"><textarea name="content" cols="80" rows="20"></textarea></td>
		</tr>
		<tr>
			<td bgcolor="orange">�����</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="�� ����">
			</td>
		</tr> 
	</table>
	</form>
	<hr>
	<center>
		<a href="insertBoard">�� ���</a>&nbsp;&nbsp;&nbsp;
		<a href="deleteBoard">�� ����</a>&nbsp;&nbsp;&nbsp;
		<a href="BoardList">�� ���</a>
	</center>
</center>
</div>
<div id=s_right></div>

</body>
</html>