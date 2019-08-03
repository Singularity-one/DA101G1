<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ page import="com.merchant.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
	MerchantVO merchantVO = (MerchantVO) request.getAttribute("merchantVO"); //EmpServlet.java(Concroller), �s�Jreq��merchantVO����
%>
<!DOCTYPE html>
<html>
<head>
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

<div class="content">

<table>
	<tr style="line-height: 42px; text-align: center; border-bottom: 1px solid #aaa;">
		<th>�t�ӽs��</th>
		<th>�t�ӱb��</th>
		<th>�t�ӱK�X</th>
		<th>�Ӯa�W��</th>
		<th style=" width: 100px;">�t�d�H</th>
		<th>�t�Ӧa�}</th>
		<th>�t�ӹq��</th>
		<th>�q�l�l��</th>
		<th>�t�Ӫ��A</th>
		<th style=" width: 350px;">�t�ӻ���</th>
		<th>�t�ӹ���</th>
	</tr>
	<tr style="line-height: 42px; text-align: center; border-bottom: 1px solid #aaa;">
		<td><%=merchantVO.getMerchant_no()%></td>
		<td><%=merchantVO.getMerchant_id()%></td>
		<td><%=merchantVO.getMerchant_pass()%></td>
		<td><%=merchantVO.getMerchant_name()%></td>
		<td style=" width: 100px;"><%=merchantVO.getMerchant_pm()%></td>
		<td><%=merchantVO.getMerchant_add()%></td>
		<td><%=merchantVO.getMerchant_tel()%></td>
		<td><%=merchantVO.getMerchant_email()%></td>
		<td>
		<c:set var="Merchant_status" value="<%=merchantVO.getMerchant_status()%>"/>
				<c:if test="${Merchant_status == 'A1'}">
                		<%= "���f��"%>
				</c:if>
				<c:if test="${Merchant_status == 'A2'}">
						<%= "���`"%>
				</c:if>
				<c:if test="${Merchant_status == 'A3'}">
						<%= "�U�["%>
				</c:if>
		</td>
		<td><%=merchantVO.getMerchant_ps()%></td>
		<td><img src="<%=request.getContextPath()%>/MerchantImageShow?merchant_no=${merchantVO.merchant_no}" width="160"  height="120"></td>
<%-- 		<td><img src="<%=request.getContextPath()%>/MerchantImageShow?merchant_no=${merchantVO.merchant_no}" width="300vm"  height="200vm"><td>		 --%>
	</tr>
</table>

</div>

</body>
</html>