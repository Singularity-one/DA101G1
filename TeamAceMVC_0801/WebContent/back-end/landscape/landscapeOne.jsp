<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.landscape.model.*"%>

<%LandscapeVO landscapeVO = (LandscapeVO) request.getAttribute("landscapeVO");%>

<html>
<head>
<title>���I��� </title>

<style>

</style>

<style>

td {
	padding: 5px;
	text-align: center;
	margin:20px;

}
tr{
	padding: 5px;
	text-align: center;
	margin:20px;
	
}
</style>

</head>
<body>
<div class="container" style="display: flex; font-family: Microsoft JhengHei;">
<table style="margin-top:50px">
	<tr style="line-height: 42px; text-align: center; border-bottom: 1px solid #aaa;">
		<th>���I�s��</th>
		<th>���I�W</th>
		<th>�g��</th>
		<th>�n��</th>
		<th>���I���A</th>
		<th>���I�a�}</th>
	</tr>
	<tr style="line-height: 42px; text-align: center; border-bottom: 1px solid #aaa;">
		<td><%=landscapeVO.getLandscape_no()%></td>
		<td><%=landscapeVO.getLandscape_lng()%></td>
		<td><%=landscapeVO.getLandscape_lat()%></td>
		<td><%=landscapeVO.getLandscape_name()%></td>
		<td><%=landscapeVO.getLandscape_status()%></td>
		<td><%=landscapeVO.getLandscape_add()%></td>
	</tr>
</table>
</div>
</body>
</html>