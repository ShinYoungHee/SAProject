<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!-- jstl�� ����� ��¥ ���/���� -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date" %>

<!-- ���� ��¥ (60*24*1000�� �ѽð� ��)-->
<c:set var="end" value="<%=new Date(new Date().getTime()+60*60*24*1000) %>" />
<fmt:formatDate value="${end}" type="DATE" pattern="yyyy-MM-dd HH:mm:ss" var="endDay"/>

<!-- ���� ��¥ -->
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="startDay" />


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	table{
		border-collapse:collapse;
	}
	th{
		color: white;
		text-align:center;
		background-color: #777777;
	}
	td{
	color: white;
	background-color: #666666;
	border-top: 1px solid #585858;
	border-bottom: 1px solid #585858;
	}
</style>
</head>
<body>
	<form method="POST" action="gWriteCheck" enctype="multipart/form-data">
	<table>
	<tbody>
		<tr>
		<td align=center width=75>���� : </td>
		<td align=center><input type='text' size=60 name=gTitle maxlength=50 placeholder='����' required></td></tr>
		<tr>
		<td align=center>�۹��� : </td>
		<td align=center><input type='text' size=60 name=gJack maxlength=50 placeholder='�۹���' required></td></tr>
		<tr>
		<td align=center>ǰ�� : </td>
		<td align=center><input type='text' size=60 name=gPoom maxlength=50 placeholder='ǰ��' required></td></tr>
		<tr>
		<td align=center>����� : </td>
		<td align=center><input type='text' size=60 name=gPoom maxlength=50 placeholder='�����' required></td></tr>
		<tr>
		<td align=center>���� : </td>
		<td align=center><input type='text' size=60 name=gWeight maxlength=50 placeholder='����' required></td></tr>
		<!-- �ð� -->
		<tr>
		<td align=center>���۽ð� : </td>
		<td align=center><input type='text' size=60 name=gStartTime value='${startDay}' readonly/></td></tr>
		<tr>
		<td align=center>����Ⱓ : </td>
		<td align=center><input type='text' size=60 name=gStartTime value='${endDay}' readonly/></td></tr>
		<!-- ������ -->
		<tr>
		<td align=center>���ð��� : </td>
		<td align=center><input type='text' size=60 name=gM maxlength=50 placeholder='���ð���' required></td></tr>
		<tr>
		<tr><td align=center>�̹��� :</td><td><input type="file" name="upfile" id="upfile"></td></tr>
		<tr><td colspan=2 align=right>
		<input type="submit" value="����ϱ�">
		<button type="button" onclick="location.href='gList'">���</button>
		</td></tr>
	</tbody>
	</table>
	</form>
</body>
</html>