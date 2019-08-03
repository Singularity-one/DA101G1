<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.mem.model.*"%>

<%
  MemberVO memberVO = (MemberVO) request.getAttribute("memberVO");
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>�|����ƭק� - update_mem_input.jsp</title>
	<link href='https://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!--     CSS -->
    <style type="text/css">
    body {
        background: #ffffff;
        font-family: 'Open Sans', sans-serif;
    }

    #myform {
        margin: 50px auto;
        width: 43%;
    }

    header {
        color: #000000;
        font-size: 1.7em;
        padding: 3% 0;
        border-bottom: 2px solid #000000;
    }

    .area {
        color: #000000;
        width: 100%;
        margin: 40px 0;
    }

    label {
        line-height: 35px;
        display: table-header-group;
        font-size: 1.05em;
        letter-spacing: 0.5px;
        transition: all 0.3s ease;
    }

    input {
        width: 100%;
        box-sizing: border-box;
        padding: 15px;
        border: 2px solid #000000;
        border-radius: 5px;
        background: transparent;
        color: #000000;
        display: table-row-group;
        transition: all 0.3s ease;
        font-size: 1.05em;
    }

    input:focus {
        outline: none !important;
        border-color: #69B692;
    }

    input:focus+label {
        color: #69b692;
    }

    .row {
        margin: 20px 0;
        width: 100%;
        padding: 0;
        display: table;
    }

    .col2 {
        display: table;
        width: 47%;
        float: left;
    }

    .col2:nth-child(2) {
        float: right;
        display: table;
    }

    .ckeckarea input[type="checkbox"] {
        display: none;
    }

    .ckeckarea label {
        position: relative;
        display: inline-block;
        padding: 3px 3px 3px 30px;
        cursor: pointer;
        -webkit-transition: all .2s;
        transition: all .2s;
    }

    .ckeckarea label::before,
    .ckeckarea label::after {
        position: absolute;
        content: '';
        -webkit-transition: all .2s;
        transition: all .2s;
    }

    .ckeckarea label::before {
        top: 50%;
        left: 0;
        width: 14px;
        height: 14px;
        margin-top: -8px;
        background: transparent;
        border: 2px solid #000000;
        border-radius: 3px;
    }

    .ckeckarea label::after {
        opacity: 0;
        top: 50%;
        left: 3px;
        width: 8px;
        height: 4px;
        margin-top: -4px;
        border-left: 2px solid #69B692;
        border-bottom: 2px solid #69B692;
        -webkit-transform: rotate(-45deg) scale(.5);
        transform: rotate(-45deg) scale(.5);
    }

    .ckeckarea label:hover::before {
        border-color: #69B692;
    }

    .ckeckarea input[type="checkbox"]:checked+label::before {
        border: 1px solid #69B692;
    }

    .ckeckarea input[type="checkbox"]:checked+label::after {
        opacity: 1;
        -webkit-transform: rotate(-45deg) scale(1);
        transform: rotate(-45deg) scale(1);
    }

    .ckeckarea input[type="checkbox"]:checked~label {
        color: #69B692;
    }

    .btn {
        width: 35%;
        margin-right: 3%;
        font-family: 'Open Sans', sans-serif;
        font-size: 0.9em;
        transition: all 0.3s ease;
    }

    .btn:hover {
        background: #69B692;
        border-color: #69B692;
        cursor: pointer;
    }

    @media screen and (max-width: 800px) {
        #myform {
            margin: 50px auto;
            width: 80%;
        }

        .col2 {
            display: table;
            width: 100%;
            float: left;
        }

        .ckeckarea label {
            line-height: 20px;
        }
    }

    @media screen and (max-width: 600px) {
        #myform {
            margin: 50px auto;
            width: 100%;
        }
    }
    </style>
</head>
<body>

<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>
<form id="myForm" method="post" action="Member.do" name="myForm" enctype="multipart/form-data">
	<header>�|����ƭק�</header>
	<div id='area'>
		<div class="row">
			<label>�Ӥ�</label>
			<img width="50%" id="preview_progressbarTW_img" src="MemReader.do?mem_no=${memberVO.mem_no}" >
		    <input type="file" name="mem_pic" onchange="readURL(this)"
				targetID="preview_progressbarTW_img" accept="image/gif, image/jpeg, image/png">
		</div>
		<div class="row">
			<label>�q�l�l��</label>
			<input type="text" value="<%=memberVO.getMem_email()%>" readonly>
		</div>
		<div class="row">
			<label>�K�X</label>
			<input type="text" name="mem_psw" value="<%=memberVO.getMem_psw()%>">
		</div>
		<div class="row">
			<div class="col2">
				<label>�m�W</label>
				<input type="text" name="mem_name" value="<%=memberVO.getMem_name()%>">
			</div>
			<div class="col2">
				<label>�ʺ�</label>
				<input type="text" name="mem_nickname" value="<%=memberVO.getMem_nickname()%>">
			</div>
		</div>
		<div class="row">
			<label>�ͤ�</label>
			<input name="mem_birthday" id="f_date1" type="text">
		</div>
		<div class="row">
			<label>�a�}</label>
			<input type="text" name="mem_adrs" value="<%=memberVO.getMem_adrs()%>">
		</div>
		<div class="row">
			<label>�q��</label>
			<input type="text" name="mem_tel" value="<%=memberVO.getMem_tel()%>">
		</div>
	</div>
<!-- 	<tr> -->
<!-- 		<td>���A:</td> -->
<%-- 		<td><%=memberVO.getMem_status()%></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>�I��:</td> -->
<%-- 		<td><%=memberVO.getMem_amo()%></td> --%>
<!-- 	</tr> -->

<div class="row">
<input type="hidden" name="action" value="update">
<input type="hidden" name="mem_no" value="<%=memberVO.getMem_no()%>">
<input type="hidden" name="mem_email" value="<%=memberVO.getMem_email()%>">
<input type="hidden" name="mem_status" value="<%=memberVO.getMem_status()%>">
<input type="hidden" name="mem_amo" value="<%=memberVO.getMem_amo()%>">
<input type="hidden" name="requestURL" value="<%=request.getParameter("requestURL")%>"> <!--������e�X�ק諸�ӷ��������|��,�A�e��Controller�ǳ���椧��-->
<input type="submit" value="�e�X" class="btn">
<input type="button" value="����" class="btn" onclick="location.href='<%=request.getContextPath()%>/front-end/listOneMember.jsp'">
</div>

</form>

</body>
<!-- =========================================�H�U�� datetimepicker �������]�w========================================== -->

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>

<style>
  .xdsoft_datetimepicker .xdsoft_datepicker {
           width:  300px;   /* width:  300px; */
  }
  .xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
           height: 151px;   /* height:  151px; */
  }
</style>

<script>
        $.datetimepicker.setLocale('zh');
        $('#f_date1').datetimepicker({
           theme: '',              //theme: 'dark',
 	       timepicker:false,       //timepicker:true,
 	       step: 1,                //step: 60 (�o�Otimepicker���w�]���j60����)
 	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
 		   value: '<%=memberVO.getMem_birthday()%>', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // �h���S�w���t
           //startDate:	            '2017/07/10',  // �_�l��
           //minDate:               '-1970-01-01', // �h������(���t)���e
           //maxDate:               '+1970-01-01'  // �h������(���t)����
        });
        
        
   
        // ----------------------------------------------------------�H�U�ΨӱƩw�L�k��ܪ����-----------------------------------------------------------

        //      1.�H�U���Y�@�Ѥ��e������L�k���
        //      var somedate1 = new Date('2017-06-15');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() <  somedate1.getYear() || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});

        
        //      2.�H�U���Y�@�Ѥ��᪺����L�k���
        //      var somedate2 = new Date('2017-06-15');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() >  somedate2.getYear() || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});


        //      3.�H�U����Ӥ�����~������L�k��� (�]�i���ݭn������L���)
        //      var somedate1 = new Date('2017-06-15');
        //      var somedate2 = new Date('2017-06-25');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() <  somedate1.getYear() || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
        //		             ||
        //		            date.getYear() >  somedate2.getYear() || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});
        
</script>
<script type="text/javascript">
		function $id(id) {
			return document.getElementById(id);
		}

		function readURL(input) { //�f�t20 , 28 �� ��{�w��

			if (input.files && input.files[0]) {

				var imageTagID = input.getAttribute("targetID");

				var reader = new FileReader();

				reader.onload = function(e) {

					var img = document.getElementById(imageTagID);

					img.setAttribute("src", e.target.result)

// 					img.style.display="block";
				}

				reader.readAsDataURL(input.files[0]);

			}

		}
	</script>
</html>