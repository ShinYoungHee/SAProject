<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page contentType="text/html; charset=EUC-KR"%>    
   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�� ���</title>
</head>
<body>
<center>
	<h1>�Խ���</h1>
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="orange" width="100">��ȣ</th>
				<th bgcolor="orange" width="200">����</th>
				<th bgcolor="orange" width="150">�ۼ���</th>
				<th bgcolor="orange" width="150">�����</th>
			</tr>
			
			<c:forEach items="${QnAList }" var="qna">
			<tr>
				<td>${qna.postNum }</td>
				<td align="left"><a href="findBoard?postNum=${qna.postNum}">${qna.heading} ${qna.title }</a></td>
				<td>${qna.writer }</td>
				<td>${qna.enrolledDate }</td>
			</tr>
			</c:forEach>
			<tr>
			<td colspan="4">
				<a href="BoardList">[ù ��������]</a>
					<c:forEach var="i" begin="1" end="${pageCnt }">
						<a href="boardList.bbs?curPage=${i }">[${i }]</a>
					</c:forEach>
			</td>
		</tr>
		</table>
		<br>
		<a href="insertBoard">�� �� ���</a>
	
</center>

</body>
</html>