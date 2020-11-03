<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="assets/css/boardStyle.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խñ�</title>
</head>
<body>
<div id="s_left"></div>
<div id="contents">
	<center><h1>�Խñ�</h1></center>
	<hr>
	${QnA.heading } ${QnA.title }<br/>
	${QnA.enrolledDate }<br/>
	<table border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td bgcolor="orange">����</td>
			<td align="left"><textarea name="content" cols="100" rows="20" readonly="readonly" style="resize:none;">${QnA.content}</textarea></td>
		</tr>
	</table>
	<hr>
	<form action="enroll_comment?postNum=${QnA.postNum }" method="post">
		<textarea name="comment" cols="105" rows="5" placeholder="����� ���ܺ�����"></textarea><br/>
	<input type="submit" align="right" value="���"><br/>
	</form>
	<hr/>
	<table border="1" cellpadding="0" cellspacing="0">
	<c:forEach items="${comment }" var="cmt">
	<tr>
		<td>${cmt.writer }</td>
		<td><textarea cols="100" readonly="readonly" style="resize:none;">${cmt.comment }</textarea></td>
	</tr>
	</c:forEach>
	</table>
	<hr/>
	<center>
		<a href="insertBoard">�� ���</a>&nbsp;&nbsp;&nbsp;
		<a href="BoardList">�� ���</a>
	</center>
</div>
<div id="s_right"></div>

</body>
</html>