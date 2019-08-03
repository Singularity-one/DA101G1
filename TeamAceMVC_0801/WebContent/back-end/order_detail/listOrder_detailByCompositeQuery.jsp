<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="com.order_detail.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%-- �U�νƦX�d��-�i�ѫȤ��select_page.jsp�H�N�W�����Q�d�ߪ���� --%>
<%-- �����u�@���ƦX�d�߮ɤ����G�m�ߡA�i���ݭn�A�W�[�����B�e�X�ק�B�R�����\��--%>

<%-- <jsp:useBean id="listOrder_detailByCompositeQuery" scope="request" type="java.util.List<Order_detailVO>" /> <!-- ��EL����i�ٲ� --> --%>




<html>
<head>
<title>�ƦX�d�� - listEmps_ByCompositeQuery.jsp</title>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">


<style>
.content {
	display: flex;
	width: 100%;
	margin: 0;
	padding: 0;
	background-size: cover;
	margin-bottom: 50px;
}

.status {
	flex-direction: colum;
	text-align: center;
	margin-top: 30px;
	margin-right: 15px;
	margin-left: 15px;
	margin-bottom: 30px;
	background-color: #fff;
}

</style>

<style>
table {
	width: auto;
	margin-top: 5px;
	margin-bottom: 5px;
}

table, th, td {
	
}

th, td {
	padding: 5px;
	text-align: center;
}
</style>


</head>

<body bgcolor='white'>
	<div style="display: flex; font-family: Microsoft JhengHei;">
		<div>
			<jsp:include page="/back-end/order_detail/Order_detailbar.jsp"
				flush="true" />
		</div>

		<div style="width:100%">
		   <jsp:include page="/back-end/portal/header.jsp" flush="true" />
			<div
				style="background-color: #cf9e9e; height: 50px; width: 100%; line-height: 50px">
				<h5 style="line-height: 50px; margin-left: 10px">�d�߭q��</h5>
			</div>

			<div class="content container">
				<table style="margin-top:50px">
					<tr style="line-height: 42px; text-align: center; border-bottom: 1px solid #aaa;">
						<th>�q��s��</th>
						<th>�|���s��</th>
						<!-- 		<th>�t�ӽs��</th> -->
						<th>�q�檬�A</th>
						<th>�q���`���B</th>
						<th>�q��ɶ�</th>
						<th>���f�a�}</th>
						<th>����H�m�W</th>
						<th>����H�q��</th>
						<th></th>
						<th></th>
					</tr>
					<%-- 	<%@ include file="/pages/page1_ByCompositeQuery.file" %> --%>
					<%-- 	<c:forEach var="empVO" items="${listEmps_ByCompositeQuery}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>"> --%>
					<c:forEach var="order_detailVO"
						items="${listOrder_detailByCompositeQuery}">
						<tr style="line-height: 42px; text-align: center; border-bottom: 1px solid #aaa;" align='center' valign='middle'
							${(order_detailVO.order_no==param.order_no) ? 'bgcolor=#CCCCFF':''}>
							<!--�N�ק諸���@���[�J����Ӥw-->
							<%-- 			<td>${order_detailVO.order_no}</td> --%>
							<td><A
								href="<%=request.getContextPath()%>/Order_listServlet1?order_no=${order_detailVO.order_no}&action=getOne_From06">${order_detailVO.order_no}</a></td>
							<td>${order_detailVO.mem_no}</td>
							<%-- 			<td>${order_detailVO.merchant_no}</td> --%>
							<td><c:set var="order_status"
									value="${order_detailVO.order_status}" /> <c:if
									test="${order_status == 'O1'}">
									<%="�߳f"%>
								</c:if> <c:if test="${order_status == 'O2'}">
									<%="�w�X�f"%>
								</c:if> <c:if test="${order_status == 'O3'}">
									<%="�����q��"%>
								</c:if> <c:if test="${order_status == 'O4'}">
									<%="�h�f"%>
								</c:if></td>
							<td>${order_detailVO.order_amosum}</td>
							<td><fmt:formatDate value="${order_detailVO.order_time}"
									pattern="yyyy-MM-dd" /></td>
							<td>${order_detailVO.order_cusadr}</td>
							<td>${order_detailVO.order_cusname}</td>
							<td>${order_detailVO.order_cusphone}</td>
						</tr>
					</c:forEach>
				</table>
				<%-- <%@ include file="pages/page2_ByCompositeQuery.file" %> --%>
			</div>
		</div>
	</div>

	<!-- 	<br>�����������|: -->
	<!-- 	<br> -->
	<%-- 	<b> <font color=blue>request.getServletPath():</font> <%=request.getServletPath()%><br> --%>
	<%-- 		<font color=blue>request.getRequestURI(): </font> <%=request.getRequestURI()%> --%>
	<!-- 	</b> -->


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>