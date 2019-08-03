<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mem.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
	MemberService memSvc = new MemberService();
	List<MemberVO> list = memSvc.getAll();
	pageContext.setAttribute("list", list);
%>


<html>
<!-- head -->
<head>
<title>�Ҧ��|����� - listAllMember.jsp</title>
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
	background-color: white;
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

	<div class="main" style="display:flex; font-family: Microsoft JhengHei">
		<div>
			<jsp:include page="/back-end/portal/icon.jsp" flush="true" />
		</div>

		<div style="width:100%">
			<jsp:include page="/back-end/portal/header.jsp" flush="true" />

			<div class="alert alert-info" role="alert">
				<strong>�Ҧ��|��</strong>
			</div>
	
          <div class="container">
          
          <form class="form-inline" method="post"
				action="<%=request.getContextPath()%>/back-end/admin.do">
				<div class="form-group mb-2">
					<label>�|���s��/�m�W:</label>
				</div>
				<div class="form-group mx-sm-3 mb-2">
					<label for="inputPassword2" class="sr-only">Password</label> <input
						type="text" class="form-control" id="inputPassword2" name="mem_no"
						placeholder="${errorMsgs.mem_no}"> <input type="hidden"
						name="action" value="getOne_For_Display"> <input
						type="submit" class="btn btn-outline-dark" value="�d��">
				</div>
			</form>
          
			<table class="table-hover" style="margin-top:50px">
				<thead>
					<tr style="line-height: 42px; text-align: center; border-bottom: 1px solid #aaa;">
						<th scope="col">�s��</th>
						<th scope="col">�m�W</th>
						<th scope="col">�ʺ�</th>
						<th scope="col">�q�l�l��</th>
						<th scope="col">�ͤ�</th>
						<th scope="col">�a�}</th>
						<th scope="col">�q��</th>
						<th scope="col">���A</th>
						<th scope="col">�I��</th>
						<th scope="col">�b�����v</th>
					</tr>
				</thead>
				<tbody>
					<%@ include file="pages/page1.file"%>
					<c:forEach var="memberVO" items="${list}" begin="<%=pageIndex%>"
						end="<%=pageIndex+rowsPerPage-1%>">

						<tr style="line-height: 42px; text-align: center; border-bottom: 1px solid #aaa;">
							<th scope="row">${memberVO.mem_no}</th>
							<td>${memberVO.mem_name}</td>
							<td>${memberVO.mem_nickname}</td>
							<td>${memberVO.mem_email}</td>
							<td>${memberVO.mem_birthday}</td>
							<%-- 				<td><fmt:formatDate value="${memberVO.mem_birthday}" pattern="yyyy-MM-dd HH:mm:ss"/></td> --%>
							<td>${memberVO.mem_adrs}</td>
							<td>${memberVO.mem_tel}</td>
							<td>${memberVO.mem_status}</td>
							<td>${memberVO.mem_amo}</td>
							<!-- 				<td> -->
							<%-- 					<FORM METHOD="post"	ACTION="<%=request.getContextPath()%>/front-end/Member.do" style="margin-bottom: 0px;"> --%>
							<!-- 						<input type="submit" value="�ק�">  -->
							<%-- 						<input type="hidden" name="mem_no" value="${memberVO.mem_no}"> --%>
							<%-- 						<input type="hidden" name="requestURL"	value="<%=request.getServletPath()%>"><!--�e�X�����������|��Controller--> --%>
							<%-- 			     		<input type="hidden" name="whichPage"	value="<%=whichPage%>">               <!--�e�X��e�O�ĴX����Controller-->  --%>
							<!-- 						<input type="hidden" name="action" value="getOne_For_Update"> -->
							<!-- 					</FORM> -->
							<!-- 				</td> -->
							<td>
								<FORM METHOD="post"
									ACTION="<%=request.getContextPath()%>/front-end/Member.do"
									style="margin-bottom: 0px;">
									<input class="btn btn-outline-secondary" type="submit" value="���v"> <input type="hidden"
										name="mem_no" value="${memberVO.mem_no}"> <input
										type="hidden" name="mem_email" value="${memberVO.mem_email}">
									<input type="hidden" name="mem_psw" value="${memberVO.mem_psw}">
									<input type="hidden" name="mem_name"
										value="${memberVO.mem_name}"> <input type="hidden"
										name="mem_nickname" value="${memberVO.mem_nickname}">
									<input type="hidden" name="mem_birthday"
										value="${memberVO.mem_birthday}"> <input type="hidden"
										name="mem_adrs" value="${memberVO.mem_adrs}"> <input
										type="hidden" name="mem_tel" value="${memberVO.mem_tel}">
									<input type="hidden" name="mem_status" value="M3"> <input
										type="hidden" name="mem_amo" value="${memberVO.mem_amo}">
									<input type="hidden" name="requestURL"
										value="<%=request.getServletPath()%>">
									<!--�e�X�����������|��Controller-->
									<input type="hidden" name="whichPage" value="<%=whichPage%>">
									<!--�e�X��e�O�ĴX����Controller-->
									<input type="hidden" name="action" value="update_status">
								</FORM>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</div>
			<%@ include file="pages/page2.file"%>
		</div>
	</div>



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