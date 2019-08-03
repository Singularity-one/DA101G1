<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.product.model.*"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
	ProductVO productVO = (ProductVO) request.getAttribute("productVO");
%>


<html>
<head>
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

.portal{
display:flex;
justify-content:center;
}

.status{

flex-direction: colum;
margin-top:30px;
margin-right:15px;
margin-left: 15px;
margin-bottom: 30px;
background-color:#fff;
}

.number{
font-size: 42pt;
color: #fff;
}

</style>

<style>
  table {
	width: 1200px;
	background-color: white;
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


<div class="content container" >

<table>
	<tr style="line-height: 30px; text-align: center; border-bottom: 1px solid #aaa;">
		<th>�ӫ~�s��</th>
		<th>�t�ӽs��</th>
		<th>�ӫ~�W��</th>
		<th>�ӫ~���A</th>
		<th>�ӫ~����</th>
		<th>�ӫ~����</th>
		<th>�s�i�P�P</th>
		<th>�ӫ~����</th>
		<th>�ӫ~����</th>
		<th>�ӫ~�ƶq</th>
	</tr>
	<tr style="line-height: 30px; text-align: center; border-bottom: 1px solid #aaa;">
		<td><%=productVO.getProduct_no()%></td>
		<td><%=productVO.getMerchant_no()%></td>
		<td><%=productVO.getProduct_name()%></td>
		<td>
		<c:set var="product_status" value="<%=productVO.getProduct_status()%>"/>
		<c:if test="${product_status == 'C0'}">
            <%= "�U�["%>
		</c:if>
		<c:if test="${product_status == 'C1'}">
            <%= "�W�["%>
		</c:if>
		</td>
		<td><%=productVO.getProduct_pr()%></td>
		<td><%=productVO.getProduct_typ()%></td>
		<td>
		<c:set var="product_pn" value="<%=productVO.getProduct_pn()%>"/>
		<c:if test="${product_pn == 'D0'}">
            <%= "�L"%>
		</c:if>
		<c:if test="${product_pn == 'D1'}">
            <%= "��"%>
		</c:if>
		</td>
		<td><%=productVO.getProduct_ps()%></td>
		<td>
		<img src="<%=request.getContextPath()%>/ProductImageShow?product_no=${productVO.product_no}" width="160vm"  height="120vm">
		</td>
		<td><%=productVO.getProduct_quan()%></td>
	</tr>
</table>

</div>

</body>
</html>