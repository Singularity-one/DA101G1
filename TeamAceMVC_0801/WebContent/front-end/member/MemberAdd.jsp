<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Upload</title>
<style>
		body{
        	background-color: #CCDDFF;
        }
  		#preview_progressbarTW_img{
  			
			width: 200px;
			height: 200px;
  		}
</style>
</head>
<body>


<img id="preview_progressbarTW_img" src="#" />
<br>


<Form action="MemberAdd.do" id="myForm" method="post" enctype="multipart/form-data">
	 �W�r:<input type="text" name="MemName"><br>
 	 �b��:<input type="text" name="MemId"><br>
	 �K�X:<input type="password" name="MemPsw"><br>
	 ��   <input type="file" name="Member_PIC"	onchange="readURL(this)"  targetID="preview_progressbarTW_img"
 	 accept="image/gif, image/jpeg, image/png" ><br>
   <input type="submit" id="btnSend" value="�e�X">
</Form>


<script type="text/javascript">

function $id(id){
  return document.getElementById(id);
}

function readURL(input){   //�f�t22 , 30 �� ��{�w��

	  if(input.files && input.files[0]){

	    var imageTagID = input.getAttribute("targetID");

	    var reader = new FileReader();

	    reader.onload = function (e) {

	       var img = document.getElementById(imageTagID);

	       img.setAttribute("src", e.target.result)

	    }

	    reader.readAsDataURL(input.files[0]);

	  }

}
</script>
</body>
</html>