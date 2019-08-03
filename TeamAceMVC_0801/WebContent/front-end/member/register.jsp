<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.mem.controller.*"%>
<%@ page import="com.mem.model.*"%>

<%
	MemberVO memberVO = (MemberVO) request.getAttribute("memberVO");
%>

<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script src="<%=request.getContextPath()%>/js/address.js"></script>
<title>���U - �y�C�C</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Bree+Serif);

::selection {
	color: #fff;
	background: #f676b2; /* Safari */
}

::-moz-selection {
	color: #fff;
	background: #f676b2; /* Firefox */
}

* {
	margin: 0;
	padding: 0;
	border: none;
	outline: none;
}

body {
	background:
		url('http://www.demo.amitjakhu.com/login-form/images/bg.png');
	font-family: "HelveticaNeue-Light", "Helvetica Neue Light",
		"Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
	font-weight: 300;
	text-align: left;
	text-decoration: none;
	height: 500px;
}

#container {
	border-radius: 5px;
	padding: 5px;
}

#container article {
	background: #f3f3f3;
	border-radius: 5px;
	display: inline-block;
	min-width: 243px;
	vertical-align: top;
	padding: 5px;
}

#three {
	background: #f3f3f3;
	border-radius: 5px;
	display: inline-block;
	width: 310px;
	vertical-align: top;
	margin-left: 80px;
}

#header {
	background: #e8e8e8;
	border-radius: 5px;
	padding: 5px;
}

.gradient {
	/* Center Positioning */
	width: 600px;
	height: 600px;
	position: fixed;
	left: 50%;
	top: 50%;
	margin-left: -300px;
	margin-top: -300px;
	z-index: -2;
	/* Fallback */
	background-image:
		url(http://www.demo.amitjakhu.com/login-form/images/gradient.png);
	background-repeat: no-repeat;
	/* CSS3 Gradient */
	background-image: -webkit-gradient(radial, 0% 0%, 0% 100%, from(rgba(213, 246, 255, 1)),
		to(rgba(213, 246, 255, 0)));
	background-image: -webkit-radial-gradient(50% 50%, 40% 40%, rgba(213, 246, 255, 1),
		rgba(213, 246, 255, 0));
	background-image: -moz-radial-gradient(50% 50%, 50% 50%, rgba(213, 246, 255, 1),
		rgba(213, 246, 255, 0));
	background-image: -ms-radial-gradient(50% 50%, 50% 50%, rgba(213, 246, 255, 1),
		rgba(213, 246, 255, 0));
	background-image: -o-radial-gradient(50% 50%, 50% 50%, rgba(213, 246, 255, 1),
		rgba(213, 246, 255, 0));
}

/*******************
LOGIN FORM
*******************/
.login-form {
	width: 500px;
	margin: 0 auto;
	position: relative;
	background: #f3f3f3;
	border: 1px solid #fff;
	border-radius: 5px;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.5);
	-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.5);
	-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.5);
}

/*******************
HEADER
*******************/
.login-form .header {
	padding: 40px 30px 30px 30px;
}

.login-form .header h1 {
	font-family: 'Bree Serif', serif;
	font-weight: 300;
	font-size: 24px;
	line-height: 34px;
	color: #414848;
	text-shadow: 1px 1px 0 rgba(256, 256, 256, 1.0);
	margin-bottom: 10px;
}

.login-form .header span {
	font-size: 11px;
	line-height: 16px;
	color: #678889;
	text-shadow: 1px 1px 0 rgba(256, 256, 256, 1.0);
}

/*******************
CONTENT
*******************/
.login-form .content {
	padding: 0 30px 25px 30px;
}

/* Input field */
.login-form .content .input {
	width: 350px;
	padding: 15px 25px;
	font-family: "HelveticaNeue-Light", "Helvetica Neue Light",
		"Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
	font-weight: 400;
	font-size: 14px;
	color: #9d9e9e;
	text-shadow: 1px 1px 0 rgba(256, 256, 256, 1.0);
	background: #fff;
	border: 1px solid #fff;
	border-radius: 5px;
	box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.50);
	-moz-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.50);
	-webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.50);
}

/* Second input field */
/* .login-form .content .password, .login-form .content .pass-icon { */
/* 	margin-top: 25px; */
/* } */
.login-form .content .input:hover {
	background: #dfe9ec;
	color: #414848;
}

.login-form .content .input:focus {
	background: #dfe9ec;
	color: #414848;
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.25);
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.25);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.25);
}

.user-icon, .pass-icon {
	width: 46px;
	height: 47px;
	display: block;
	position: absolute;
	left: 0px;
	padding-right: 2px;
	z-index: -1;
	-moz-border-radius-topleft: 5px;
	-moz-border-radius-bottomleft: 5px;
	-webkit-border-top-left-radius: 5px;
	-webkit-border-bottom-left-radius: 5px;
}

.user-icon {
	top: 133px;
	/* Positioning fix for slide-in, got lazy to think up of simpler method. */
	background: rgba(65, 72, 72, 0.75)
		url(http://www.demo.amitjakhu.com/login-form/images/user-icon.png)
		no-repeat center;
}

.pass-icon {
	top: 185px;
	background: rgba(65, 72, 72, 0.75)
		url(http://www.demo.amitjakhu.com/login-form/images/pass-icon.png)
		no-repeat center;
}

.content input:focus+div {
	left: -46px;
}

/* Animation */
.input, .user-icon, .pass-icon, .button, .register, .inputmedium,
	.inputsmall {
	transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-webkit-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	-ms-transition: all 0.5s ease;
}

/*******************
FOOTER
*******************/
.login-form .footer {
	padding: 25px 30px 40px 30px;
	overflow: auto;
	background: #d4dedf;
	border-top: 1px solid #fff;
	box-shadow: inset 0 1px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: inset 0 1px 0 rgba(0, 0, 0, 0.15);
	-webkit-box-shadow: inset 0 1px 0 rgba(0, 0, 0, 0.15);
}

/* Login button */
.login-form .footer .button {
	float: right;
	padding: 11px 25px;
	font-family: 'Bree Serif', serif;
	font-size: 18px;
	color: #fff;
	text-shadow: 0px 1px 0 rgba(0, 0, 0, 0.25);
	background: #56c2e1;
	border: 1px solid #46b3d3;
	border-radius: 5px;
	cursor: pointer;
	box-shadow: inset 0 0 2px rgba(256, 256, 256, 0.75);
	-moz-box-shadow: inset 0 0 2px rgba(256, 256, 256, 0.75);
	-webkit-box-shadow: inset 0 0 2px rgba(256, 256, 256, 0.75);
	text-decoration: none;
}

.login-form .footer .button:hover {
	background: #3f9db8;
	border: 1px solid rgba(256, 256, 256, 0.75);
	box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
	-moz-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
	-webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
}

.login-form .footer .button:focus {
	position: relative;
	bottom: -1px;
	background: #56c2e1;
	box-shadow: inset 0 1px 6px rgba(256, 256, 256, 0.75);
	-moz-box-shadow: inset 0 1px 6px rgba(256, 256, 256, 0.75);
	-webkit-box-shadow: inset 0 1px 6px rgba(256, 256, 256, 0.75);
}
/* Index button */
.login-form .footer .button2 {
	float: left;
	padding: 11px 25px;
	font-family: 'Bree Serif', serif;
	font-size: 18px;
	color: #fff;
	text-shadow: 0px 1px 0 rgba(0, 0, 0, 0.25);
	background: #56c2e1;
	border: 1px solid #46b3d3;
	border-radius: 5px;
	cursor: pointer;
	box-shadow: inset 0 0 2px rgba(256, 256, 256, 0.75);
	-moz-box-shadow: inset 0 0 2px rgba(256, 256, 256, 0.75);
	-webkit-box-shadow: inset 0 0 2px rgba(256, 256, 256, 0.75);
	text-decoration: none;
}

.login-form .footer .button2:hover {
	background: #3f9db8;
	border: 1px solid rgba(256, 256, 256, 0.75);
	box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
	-moz-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
	-webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
}

.login-form .footer .button2:focus {
	position: relative;
	bottom: -1px;
	background: #56c2e1;
	box-shadow: inset 0 1px 6px rgba(256, 256, 256, 0.75);
	-moz-box-shadow: inset 0 1px 6px rgba(256, 256, 256, 0.75);
	-webkit-box-shadow: inset 0 1px 6px rgba(256, 256, 256, 0.75);
}

#preview_progressbarTW_img {
	width: 200px;
	height: 200px;
	border-radius: 999em;
}

.text-muted {
	color: red !important;
}

#b1 {
	font-size: 11px;
	line-height: 16px;
	color: #678889;
	text-shadow: 1px 1px 0 rgba(256, 256, 256, 1.0);
	background: #ffffff;
}
</style>
</head>
<body>
${errorMsgs.mem_email}
	<div class="container">
		<form name="login-form" class="login-form" action="MemberAdd.do" method="post" enctype="multipart/form-data">
			<div class="header">
				<h1>Welcome to Yo Yo Yo</h1>
				<span><input type="button" value="�Y" id="b1">��[�J�y�C�C�A�}�l�s���ȵ{</span>
			</div>

			<div class="content">
				<label for="exampleInputEmail1">E-mail</label> 
				<input type="text" name="mem_email" class="input username" placeholder="Email Address" value="${memberVO.mem_email}" id="mem_email">
				<small class="form-text text-muted">${errorMsgs.mem_email}</small>
			</div>
			<div class="content">
				<label for="exampleInputPassword1">�K�X</label> 
				<input type="password" name="mem_psw" class="input password" placeholder="Password" value="${memberVO.mem_psw}" id="mem_psw"> 
				<small class="form-text text-muted">${errorMsgs.mem_psw}</small>
			</div>
			<div class="content">
				<label for="exampleInputPassword1">�m�W</label> 
				<input type="text" name="mem_name" class="input username" placeholder="Name" value="${memberVO.mem_name}" id="mem_name"> 
				<small class="form-text text-muted">${errorMsgs.mem_name}</small>
			</div>
			<div class="content">
				<label for="exampleInputPassword1">�ʺ�</label> 
				<input type="text" name="mem_nickname" class="input username" placeholder="Nick Name" value="${memberVO.mem_nickname}" id="mem_nickname"> 
				<small class="form-text text-muted">${errorMsgs.mem_nickname}</small>
			</div>
			<div class="content">
				<label for="exampleInputPassword1">�ͤ�</label> 
				<input type="text" name="mem_birthday" class="input username" id="f_date1">
			</div>
			<div class="content">
				<label for="exampleInputPassword1">�a�}</label> 
		<select id="zone1"  name="zone1" style="width: 110px; margin-left: 30;"></select>
		<select id="zone2"  name="zone2" style="width: 110px;"></select>
        <input	type="text" id="zipcode" name="zipcode" style="width: 30px;" />
				<input type="text" name="mem_adrs" class="input username" placeholder="Address" value="${memberVO.mem_adrs}" id="mem_adrs"> 
				<small class="form-text text-muted">${errorMsgs.mem_adrs}</small>
			</div>
			<div class="content">
				<label for="exampleInputPassword1">������X</label> 
				<input type="text"	name="mem_tel" class="input username" placeholder="Phone Number" value="${memberVO.mem_tel}" id="mem_tel"> 
				<small class="form-text text-muted">${errorMsgs.mem_tel}</small>
			</div>
			<div class="content">
				�j�Y��
				<input type="file" name="mem_pic" onchange="readURL(this)" targetID="preview_progressbarTW_img"	accept="image/gif, image/jpeg, image/png">
			</div>
			<img id="preview_progressbarTW_img" src="" alt="rounded-circle"	style="display: none" /> <br>
			<div class="footer">
				<a href="<%=request.getContextPath()%>/front-end/home/TeamAce.jsp" class="button2">�^����</a> 
				<input type="hidden" name="mem_status" value="M1"> 
				<input type="submit" class="button" value="�T�{">
			</div>
		</form>
	</div>
	<!-- =========================================�H�U�� datetimepicker �������]�w========================================== -->

	<% 
	  java.sql.Date mem_birthday = null;
	  try {
		  mem_birthday = java.sql.Date.valueOf(request.getParameter("mem_birthday").trim());
	   } catch (Exception e) {
		   mem_birthday = new java.sql.Date(System.currentTimeMillis());
	   }
	%>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
	<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>

	<style>
	.xdsoft_datetimepicker .xdsoft_datepicker {
		width: 300px; /* width:  300px; */
	}
	
	.xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
		height: 151px; /* height:  151px; */
	}
	</style>

	<script>
	$(document).ready(function (){
		$('#b1').click(function(){
			$("#mem_email").val("misjiii0225@gmail.com");
			$("#mem_psw").val("123456");
			$("#mem_name").val("�T��");
			$("#mem_nickname").val("�T��");
			$("#mem_adrs").val("�x�W�j�D�@�q145��");
			$("#mem_tel").val("0988168168");
		});
	});
	</script>
	<script>
		$.datetimepicker.setLocale('zh');
		$('#f_date1').datetimepicker({
			theme : '', //theme: 'dark',
			timepicker : false, //timepicker:true,
			step : 1, //step: 60 (�o�Otimepicker���w�]���j60����)
			format : 'Y-m-d', //format:'Y-m-d H:i:s',
			value :'<%=mem_birthday%>', // value:   new Date(),
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
		     var somedate2 = new Date('2019-08-01');
		     $('#f_date1').datetimepicker({
		         beforeShowDay: function(date) {
		       	  if (  date.getYear() >  somedate2.getYear() || 
				           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
				           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
		             ) {
		                  return [false, ""]
		             }
		             return [true, ""];
		     }});

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
<!-- 	�Ϥ��w�� -->
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
					img.style.display = "block";
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>
<!-- 	�e�X�q�� -->
	<script type="text/javascript">
// 	function myFunction() {
// 		alert("�P�±z�[�J�y�C�C�A�t�αN�۰ʵo�e�{�ҫH�ܱz���H�c!");
// 	}
	</script>
<!-- 	�ʺA�a�}javascript -->
	<script type="text/javascript">
		$(function() {
			init_address();
			$("#zone1").val(''); //����
			for ( var i in zip['��鿤']) {
				o = document.createElement('option');
				o.text = i;
				o.value = i;
				zone2.options.add(o);
			}
			$("#zone2").val(''); //�m����
		})
	</script>
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