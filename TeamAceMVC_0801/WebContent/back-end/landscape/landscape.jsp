<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.landscape.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
	LandscapeService landscapeSvc = new LandscapeService();
	List<LandscapeVO> list = landscapeSvc.getAll();
	pageContext.setAttribute("list", list);
%>


<html>
<head>
<title>�Ҧ����u��� - listAllEmp.jsp</title>

<style>

</style>

<style>

table, th, td {
	border-bottom: 1px solid #aaa;
}

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
		<div style="width:100%; display:flex; flex-direction:column; justify-content:center">
			<jsp:include page="/back-end/portal/header.jsp" flush="true" />

			<div style="background-color:#c4e1e1; height:50px; width:100%; line-height:50px">
				<h5 style="line-height:50px; margin-left:10px">�Ҧ����I</h5>
			</div>
            
			<table style="margin-top:50px">
				<tr style="line-height: 42px; text-align: center; border-bottom: 1px solid #aaa;">
					<th>���I�s��</th>
					<th>�g��</th>
					<th>�n��</th>
					<th>���I�W</th>
					<th>���I���A</th>
					<th>���I�a�}</th>
					<th></th>
					<th></th>
				</tr>
				<%@ include file="page1.file"%>
				<c:forEach var="landscapeVO" items="${list}" begin="<%=pageIndex%>"
					end="<%=pageIndex+rowsPerPage-1%>">
					<tr>
						<td>${landscapeVO.landscape_no}</td>
						<td>${landscapeVO.landscape_lng}</td>
						<td>${landscapeVO.landscape_lat}</td>
						<td>${landscapeVO.landscape_name}</td>
						<td>${landscapeVO.landscape_status}</td>
						<td>${landscapeVO.landscape_add}</td>
						<td>
							<FORM METHOD="post"
								ACTION="<%=request.getContextPath()%>/back-end/landscape/LandscapeServlet.do"
								style="margin-bottom: 0px;">
								<input class="btn btn-outline-secondary"  type="submit" value="�ק�"> <input type="hidden"
									name="landscape_no" value="${landscapeVO.landscape_no}">
								<input type="hidden" name="action" value="getOne_For_Update">
							</FORM>
						</td>
						<td>
							<FORM METHOD="post"
								ACTION="<%=request.getContextPath()%>/back-end/landscape/LandscapeServlet.do"
								style="margin-bottom: 0px;">
								<input class="btn btn-outline-secondary" type="submit" value="�R��"> <input type="hidden"
									name="landscape_no" value="${landscapeVO.landscape_no}">
								<input type="hidden" name="action" value="delete">
							</FORM>
						</td>
					</tr>
				</c:forEach>
			</table>
			<%@ include file="page2.file"%>
		</div>
	</div>
</body>
</html>