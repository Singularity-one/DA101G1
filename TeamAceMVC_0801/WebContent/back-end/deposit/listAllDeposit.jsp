<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.deposit.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>
 
<%
    DepositService depositSvc = new DepositService();
    List<DepositVO> list = depositSvc.getAll();
    pageContext.setAttribute("list",list);
%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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

<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>
<div style="width:100%">
<div class="content" style=" display: flex;flex-direction: column; ">

<table style="margin-top:50px">
	<tr style="line-height: 42px; text-align: center; border-bottom: 1px solid #aaa;">
		<th>�x�ȳ渹</th>
		<th>�|���s��</th>
		<th>�x�Ȯɶ�</th>
		<th>�x�Ȫ��B</th>
	</tr>
	<%@ include file="page/page1.file" %> 
	<c:forEach var="depositVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr style="line-height: 42px; text-align: center; border-bottom: 1px solid #aaa;" >
			<td>${depositVO.deposit_no}</td>
			<td>${depositVO.mem_no}</td>
			<td>${depositVO.deposit_time}</td>
			<td>${depositVO.deposit_amo}</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page/page2.file" %>

</div>
</div>

</body>
</html>