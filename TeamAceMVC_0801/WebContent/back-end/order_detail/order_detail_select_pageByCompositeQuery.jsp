<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
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
	<div class="main"
		style="display: flex; font-family: Microsoft JhengHei;">
		<div>
			<jsp:include page="/back-end/order_detail/Order_detailbar.jsp"
				flush="true" />
		</div>
		<div style="width:100%">
			<jsp:include page="/back-end/portal/header.jsp" flush="true" />
			<div
				style="background-color: #cf9e9e; height: 50px; width: 100%; line-height: 50px">
				<h5 style="line-height:50px; margin-left:20px;">�d�߭q��</h5>
			</div>
			<div class="content container"
				style="display: flex; width: 1050px; justify-content: center">
				<FORM METHOD="post"
					ACTION="<%=request.getContextPath()%>/Order_detailServlet1">
					<div style="margin-top: 50px; width: 700px;">
						<div style="display: flex;">
							<b style="margin: 10px">��J�|���s�� (�pMB00002):</b> 
							<input style="margin: 5px; width: 300px;" class="form-control" type="text" name="mem_no"><br>
						</div>
						<div style="display: flex;">
							<b style="margin: 10px">��ܭq�檬�A:</b>
					   		<select style="margin: 5px; width: 300px;" class="form-control" name="order_status">
								<option value="O1">�߳f</option>
								<option value="O2">�w�X�f</option>
								<option value="O3">�����q��</option>
								<option value="O4">�h�f</option>
							</select><br>
						</div>
						 <b style="margin: 10px">��ܤ��:<b><br> 
						 <div style="display: flex;">
							 <span style="margin: 10px">�}�l���:</span> 
						 	 <input style="margin: 5px; width: 300px;" class="form-control" name="order_time_start" id="f_date3" type="date"><br>
						 </div>
						 <div style="display: flex;">
							 <span style="margin: 10px">�������:</span> 
							 <input style="margin: 5px; width: 300px;" class="form-control" name="order_time_end" id="f_date4" type="date"><br>
						 </div> 
						 <b style="margin: 10px">��ܪ��B:</b><br>
						 <div style="display: flex;">
							<span style="margin: 10px">�j��h��</span> 
							<input style="margin: 5px; width: 300px;" class="form-control" type="TEXT" name="order_amosum_start" size="45" value="" /><br>
						 </div> 
						 <div style="display: flex;">
							<span style="margin: 10px">�p��h��</span>
							<input style="margin: 5px; width: 300px;" class="form-control" type="TEXT" name="order_amosum_end" size="45" value="" /><br> 
						 </div>
						 <div style="display: flex;">
							<b style="margin: 10px">��J�t�ӽs�� (�pME00001):</b> 
							<input style="margin: 5px; width: 300px;" class="form-control" type="text" name="merchant_no" value=""><br>
						</div>
						<input class="btn btn-outline-secondary" type="submit" value="�e�X">
						<input type="hidden" name="action"
							value="listorderDetail_ByCompositeQuery1">
					</div>
				</FORM>
			</div>
		</div>
	</div>


	<!-- <div class="content container" style=" display: flex; "> -->
	<%--  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Order_detailServlet1" > --%>
	<!--      	<b>��J�|���s�� (�pMB00002):</b> -->
	<!--         <input type="text" name="mem_no"><br> -->
	<!--         <b>��ܭq�檬�A:</b> -->
	<!--     		<select name="order_status"> -->
	<!-- �@				<option value="O1">�߳f</option> -->
	<!-- �@				<option value="O2">�w�X�f</option> -->
	<!-- 				<option value="O3">�����q��</option> -->
	<!-- 				<option value="O4">�h�f</option> -->
	<!-- 			</select><br> -->
	<!--        <b>��ܤ��:</b><br> -->
	<!--                     �}�l���:<input name="order_time_start" id="f_date1" type="date"><br> -->
	<!-- 		�������:<input name="order_time_end" id="f_date2" type="date"><br> -->
	<!-- 		<b>��ܪ��B:</b><br> -->
	<!-- 		�j��h��<input type="TEXT" name="order_amosum_start" size="45"  value="" /><br> -->
	<!-- 		�p��h��<input type="TEXT" name="order_amosum_end" size="45"  value="" /><br> -->

	<!--         <input type="submit" value="�e�X"> -->
	<!--         <input type="hidden" name="action" value="listorderDetail_ByCompositeQuery"> -->
	<!--      </FORM> -->
	<!-- </div> -->




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
