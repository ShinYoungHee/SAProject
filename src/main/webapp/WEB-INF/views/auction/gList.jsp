<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<div
		style="width: 1200px; height: 1000px; float: left; background-color: #FFD800;">
		<!-- ���࿩�� �̹��� -->
		
		<!-- ������� ���-->
		<h2 style="margin: 0px 10px;"><img src="assets/images/Tulips.jpg" width="80" height="40" style="margin: 10px 0px 0px 0px;"> ��� ���� : ������</h2>
		<div style="position: relative; width: 49%; height: 90%; background-color: yellow; float: left; margin: 5px;">
			<!-- ��Ż��� ��� -->
			<div style="text-align: center; margin-top: 30px;">
				<img src="assets/images/Tulips.jpg" width="400">
			</div>
			<!-- ��Ż��� �� �� ��� -->
			<p style="text-align: center;">���� �����Դϴ�.</p>
			<!-- ��ǰ���� ��� -->
			<div style="position: absolute; bottom: 10px; margin: 0px 10px;">

				<!-- �۹���, ǰ��, �����, ����, ���, ��Ȯ����, ���ð���, �������� -->
				<p>��ǰ����</p>
				<hr>
				<p>�۹��� | ƫ��</p>
				<p>ǰ�� |</p>
				<p>����� |</p>
				<p>���� |</p>
				<p>��� |</p>
				<p>��Ȯ���� |</p>
				<p>���ð��� |</p>
				<p>�������� |</p>
			</div>

		</div>
		<div style="width: 49%; height: 90%; background-color: gray; float: right; margin: 5px;">
			<div style="width: 100%; height: 60%; float: left; ">
				<!-- ���� �ð� ��� -->
				<h3 style="text-align: center;">�ӽ� �ð�</h3>
				<!-- ������� ��� -->
				<!-- ��Ͼ��̵�, �ְ���, ��ó�����, �����Ǽ�, �������� -->
				<div style="margin: 0px 10px;">
					<hr>
					<p>��Ͼ��̵� |</p>
					<p>�ְ��� | </p>
					<p>��ó����� |</p>
					<p>�����Ǽ� |</p>
					<p>�������� |</p>
				</div>
				
				<button type="submit" style="float:right; margin: 0px 10px; ">�ڼ�������</button><br>
				
				<!-- ���� ���� -->
				<!-- ���̺�� 5�Ǳ��� -->
				<br>
				<table style="border: 2px solid #444444; margin: 0px 10px;">
					<thead>
						<tr>
							<th width="45px">����</th>
							<th width="125px">������</th>
							<th width="200px">������</th>
							<th width="200px">�����Ͻ�</th>
						</tr>
					</thead>
					<tbody style="text-align: center;">
						<%
						out.println("<tr><td>�ȳ�</td><td>�ȳ�2</td><td>�ȳ�3</td><td>�ȳ�4</td></tr>");
						out.println("<tr><td>�ȳ�</td><td>�ȳ�2</td><td>�ȳ�3</td><td>�ȳ�4</td></tr>");
						out.println("<tr><td>�ȳ�</td><td>�ȳ�2</td><td>�ȳ�3</td><td>�ȳ�4</td></tr>");
						out.println("<tr><td>�ȳ�</td><td>�ȳ�2</td><td>�ȳ�3</td><td>�ȳ�4</td></tr>");
						out.println("<tr><td>�ȳ�</td><td>�ȳ�2</td><td>�ȳ�3</td><td>�ȳ�4</td></tr>");
						%>
					</tbody>
				</table>
				<br>
				<button type="submit" style="margin: 0px 10px; width:40%; height:7%; ">���ɵ��</button>
				<button type="submit" onClick="location.href='gWrite'" style="float:right; margin: 0px 10px; width:40%; height:7%; ">����</button>
			</div>
			<div style="width: 100%; height: 35%; background-color: red; float: left;">
				<!-- �������� ��� -->
			</div>
		</div>
	</div>
</body>
</html>