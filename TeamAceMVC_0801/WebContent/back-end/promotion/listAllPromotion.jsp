<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.promotion.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>
 
<%
	PromotionService promotionSvc = new PromotionService();
    List<PromotionVO> list = promotionSvc.getAll();
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
		<th>�s�i�s��</th>
		<th>�t�ӽs��</th>
		<th>�ӫ~�s��</th>
		<th>�s�i�W��</th>
		<th>�}�l���</th>
		<th>�������</th>
		<th>�P�P�馩</th>
		<th>�s�i����</th>
		<th>�s�i���A</th>
		<th>�s�i����</th>
		<th>�W�[</th>
		<th>�U�[</th>
	</tr>
	<%@ include file="page/page1.file" %> 
	<c:forEach var="promotionVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr style="line-height: 42px; text-align: center; border-bottom: 1px solid #aaa;" ${(promotionVO.promotion_no==param.promotion_no) ? 'bgcolor=#E0FFFF':''}>
			<td>${promotionVO.promotion_no}</td>
			<td>${promotionVO.merchant_no}</td>
			<td>${promotionVO.product_no}</td>
			<td>${promotionVO.promotion_name}</td>
			<td>${promotionVO.promotion_start}</td>
			<td>${promotionVO.promotion_end}</td>
			<td>${promotionVO.promotion_pr}</td>
			<td>${promotionVO.promotion_ps}</td>
			<td>
			<c:set var="promotion_status" value="${promotionVO.promotion_status}"/>
							<c:if test="${promotion_status == 'B1'}">
                				<%= "���f��"%>
								</c:if>
							<c:if test="${promotion_status == 'B2'}">
								<%= "�W�["%>
							</c:if>
							<c:if test="${promotion_status == 'B3'}">
								<%= "�U�["%>
							</c:if>
			</td>
			<td><img src="<%=request.getContextPath()%>/PromotionImageShow?promotion_no=${promotionVO.promotion_no}"  width="160vm"  height="120vm" ></td>
			
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/PromotionServlet1" style="margin-bottom: 0px;">
			     <input class="btn btn-outline-secondary" type="submit" value="�W�[">
			     <input type="hidden" name="promotion_no"  value="${promotionVO.promotion_no}">
			     <input type="hidden" name="requestURL"	value="<%=request.getServletPath()%>"><!--�e�X�����������|��Controller-->
			     <input type="hidden" name="whichPage"	value="<%=whichPage%>">
			     <input type="hidden" name="promotion_status"  value="B2">
			     <input type="hidden" name="product_no"  value="${promotionVO.product_no}"> 
			     <input type="hidden" name="product_pn"  value="D1">       
			     <input type="hidden" name="action"	value="getOnePromotionStatus_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/PromotionServlet1" style="margin-bottom: 0px;">
			     <input class="btn btn-outline-secondary" type="submit" value="�U�[">
			     <input type="hidden" name="promotion_no"  value="${promotionVO.promotion_no}">
			     <input type="hidden" name="requestURL"	value="<%=request.getServletPath()%>"><!--�e�X�����������|��Controller-->
			     <input type="hidden" name="whichPage"	value="<%=whichPage%>">
			     <input type="hidden" name="promotion_status"  value="B3">
			     <input type="hidden" name="product_no"  value="${promotionVO.product_no}">
			     <input type="hidden" name="product_pn"  value="D0">
			     <input type="hidden" name="action"	value="getOnePromotionStatus_Update"></FORM>
			</td>
			
		</tr>
	</c:forEach>
</table>
<%@ include file="page/page2.file" %>

</div>
</div>

</body>
</html>