<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.merchant.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
	MerchantService merchantSvc = new MerchantService();
    List<MerchantVO> list = merchantSvc.getAll();
    pageContext.setAttribute("list",list);
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
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>


</head>

<body>


<%-- ���~���C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
	    <c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>


<div class="content" style=" display: flex;flex-direction: column; ">
<table style="margin-top:50px">
	<tr style="line-height: 30px; text-align: center; border-bottom: 1px solid #aaa;">
		<th>�t�ӽs��</th>
		<th>�b��</th>
		<th>�K�X</th>
		<th>�W��</th>
		<th>�t�d�H�m�W</th>
		<th>�a�}</th>
		<th>�q��</th>
		<th>�q�l�l��</th>
		<th>�t�Ӫ��A</th>
		<th style=" width:350px;">�t�ӻ���</th>
		<th>����</th>
		<th>�ק�</th>
		<th>�R��</th>
	</tr>
	<%@ include file="page/page1.file" %> 
	<c:forEach var="merchantVO" items="${list}"  begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr style="line-height: 30px; text-align: center; border-bottom: 1px solid #aaa;" ${(merchantVO.merchant_no==param.merchant_no) ? 'bgcolor=#E0FFFF':''}>
			<td>${merchantVO.merchant_no}</td>
			<td>${merchantVO.merchant_id}</td>
			<td>${merchantVO.merchant_pass}</td>
			<td>${merchantVO.merchant_name}</td>
			<td>${merchantVO.merchant_pm}</td>
			<td>${merchantVO.merchant_add}</td> 
			<td>${merchantVO.merchant_tel}</td>
			<td>${merchantVO.merchant_email}</td>
			<td>
			<c:set var="merchant_status" value="${merchantVO.merchant_status}"/>
							<c:if test="${merchant_status == 'A1'}">
                				<%= "���f��"%>
								</c:if>
							<c:if test="${merchant_status == 'A2'}">
								<%= "���`"%>
							</c:if>
							<c:if test="${merchant_status == 'A3'}">
								<%= "�ᵲ"%>
							</c:if>
			</td>
			<td>${merchantVO.merchant_ps}</td>
  	    	<td><img src="<%=request.getContextPath()%>/MerchantImageShow?merchant_no=${merchantVO.merchant_no}" width="160vm"  height="120vm"></td> 
  	    	


			
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/MerchantServlet1" style="margin-bottom: 0px;">
			     <input class="btn btn-outline-secondary" type="submit" value="���`">
			     <input type="hidden" name="merchant_no"  value="${merchantVO.merchant_no}">
			     <input type="hidden" name="merchant_status"  value="A2">
			     <input type="hidden" name="requestURL"	value="<%=request.getServletPath()%>"><!--�e�X�����������|��Controller-->
			     <input type="hidden" name="whichPage"	value="<%=whichPage%>">               <!--�e�X���e�O�ĴX����Controller-->
			     <input type="hidden" name="action"	value="getOneMerchantStatus_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/MerchantServlet1" style="margin-bottom: 0px;">
			     <input class="btn btn-outline-secondary" type="submit" value="�ᵲ">
			     <input type="hidden" name="merchant_no"  value="${merchantVO.merchant_no}">
			     <input type="hidden" name="merchant_status"  value="A3">
			     <input type="hidden" name="requestURL"	value="<%=request.getServletPath()%>"><!--�e�X�����������|��Controller-->
			     <input type="hidden" name="whichPage"	value="<%=whichPage%>">               <!--�e�X���e�O�ĴX����Controller-->
			     <input type="hidden" name="action"	value="getOneMerchantStatus_Update"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page/page2.file" %>

</div>

</body>
</html>