<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.landscape.model.*"%>

<%
	LandscapeVO landscapeVO = (LandscapeVO) request.getAttribute("landscapeVO"); //EmpServlet.java (Concroller) �s�Jreq��landscapeVO���� (�]�A�������X��landscapeVO, �]�]�A��J��ƿ��~�ɪ�landscapeVO����)
%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>���u��ƭק� - update_emp_input.jsp</title>

<style>
table#table-1 {
	background-color: #CCCCFF;
	border: 2px solid black;
	text-align: center;
}

table#table-1 h4 {
	color: red;
	display: block;
	margin-bottom: 1px;
}

h4 {
	color: blue;
	display: inline;
}
</style>

<style>
table {
	width: auto;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
}

table, th, td {
	border: 0px solid #CCCCFF;
}

th, td {
	padding: 1px;
}
</style>

</head>
<body>

	<%-- ���~��C --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">�Эץ��H�U���~:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>
	<div style="display: flex; font-family: Microsoft JhengHei;">
		<div>
			<jsp:include page="/back-end/landscape/Landscapebar.jsp" flush="true" />
		</div>
		<diV style="width: 100%">
			<jsp:include page="/back-end/portal/header.jsp" flush="true" />

			<div
				style="background-color: #c4e1e1; height: 50px; width: 100%; line-height: 50px">
				<strong style="margin-left: 20px;">�Ҧ����I���</strong>
			</div>

			<FORM METHOD="post" ACTION="LandscapeServlet.do" name="form1">
				<div style="display: flex;justify-content: center;">
					<table style="margin-top:50px; margin-bottom:30px">
						<tr>
							<td>���I�s��:<font color=red></font></td>
							<td><%=landscapeVO.getLandscape_no()%></td>
						</tr>
						<tr>
							<td>���I�W:</td>
							<td><input class="form-control" type="TEXT"
								name="landscape_name" size="45"
								value="<%=landscapeVO.getLandscape_name()%>" /></td>
						</tr>
						<tr>
							<td>�g��:</td>
							<td><input class="form-control" type="TEXT"
								name="landscape_lng" size="45"
								value="<%=landscapeVO.getLandscape_lng()%>" /></td>
						</tr>
						<tr>
							<td>�n��:</td>
							<td><input class="form-control" type="TEXT"
								name="landscape_lat" size="45"
								value="<%=landscapeVO.getLandscape_lat()%>" /></td>
						</tr>
						<tr>
							<td>���I���A:</td>
							<td><input class="form-control" type="TEXT"
								name="landscape_status" size="45"
								value="<%=landscapeVO.getLandscape_status()%>" /></td>
						</tr>
						<tr>
							<td>���I�a�}:</td>
							<td><input class="form-control" type="TEXT"
								name="landscape_add" size="45"
								value="<%=landscapeVO.getLandscape_add()%>" /></td>
						</tr>


					</table>                 
				</div>
				<div style="text-align:center">
				 	<input type="hidden" name="action" value="update">
						<input type="hidden" name="landscape_no"
					value="<%=landscapeVO.getLandscape_no()%>"> 			
			  		<input class="btn btn-outline-secondary" type="submit" value="�e�X�ק�">
			   </div>
			</FORM>
		</div>
	</diV>

</body>










</html>