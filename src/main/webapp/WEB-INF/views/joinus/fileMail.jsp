<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
	
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<!-- CkEditor -->
	<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>

<title>file-Mail</title>
<style>
#container {
	width: 100%;
	height: 100%;
	position: relative;
}

.dpn {
	display: none !important;
}

.join_wrap {
	width: 550px;
	margin: 30 auto;
	border: 1px solid #dadada;
	padding: 24px;
	border-radius: 5px;
}

.join_title {
	width: 100%;
	height: 35px;
	font-size: 19px;
	font-weight: bold;
	padding-left: 10px;
	padding: 0 0 10px 10px;
}

.join_box {
	width: 100%;
}

.join_box input {
	width: 100%;
	height: 50px;
	border: 1px solid #dadada;
	padding: 17px;
	border-radius: 5px;
	margin-top: 20px;
}

.join_box span {
	display: inline-block;
	color: red;
	font-size: 12px;
	padding-left: 1px;
	padding-top: 8px;
}

.email_auth {
	width: 100%;
	margin-top: 10px;
}

.email_auth input {
	display: inline-block;
	width: calc(100% - 121px);
	vertical-align: top;
	margin: 0;
}

.join_btn {
	display: inline-block;
	width: 115px;
	height: 50px;
	padding: 17px 0 15px;
	border-radius: 6px;
	border: solid 1px rgba(0, 0, 0, .15);
	background-color: #03c75a;
	color: white;
	font-size: 17px;
	font-weight: bold;
	line-height: 1;
}

.join_btn {
	display: block;
	width: 100%;
	padding: 17px 0 15px;
	border-radius: 6px;
	border: solid 1px rgba(0, 0, 0, .15);
	background-color: #03c75a;
	color: white;
	font-size: 19px;
	font-weight: bold;
	margin-top: 20px;
}
</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>

	  $(function() {

		var email_auth_cd = '';

		/* $('#send').click(function() { */
		$('#join').click(function() {

			
			if ($('#email').val() == '') {
				swal("Check!", " 이메일을 입력해 주세요.", "warning");
				return false;
			}
			if ($('#title').val() == '') {
				swal("Check!", " 제목을 입력해 주세요.", "warning");
				return false;
			}
			if ($('#content').val() == '') {
				swal("Check!", "  내용을 입력해 주세요.", "warning");
				return false;
			}
			if ($('#file').val() == '') {
				swal("Check!", "  파일을 첨부해 주세요.", "warning");
				return false;
			}

			fn_join();
		}); 


 		function fn_join(){
 		      console.log('fn_join')
 		     // var flag = false;
 		      var f = $('#join_frm');
 		      var formData = f.serialize();
 		      var mailDto = formData;
 		     console.log("메일 DTO : "+mailDto);
 		      console.log("메일 DTO : "+mailDto.toString);
 		     console.log("메일 DTO : "+formData);
 		       $.ajax({
 		            type : "POST",
 		            url : "fileMail",
 		            async : false,
 		            data: mailDto,
 		            success: function(data){
 		               console.log("첨부파일 메일 발송 비동기 success")
 		               console.log("넘어온 데이터 : "+data)
 		               if(data == "Y"){
 		            	   swal("Check!", "메일 발송이 완료되었습니다.", "success");
 		                  location.href("/index.htm");
 		               }else{
 		            	   swal("Check!", " 메일 발송에 실패하였습니다.", "error");
 		               }
 		            },
 		            error: function(request, status, error){
 		            	swal("Check!", " 메일 발송 에러발생!", "warning");
 		                console.log("code : " +  request.statusText  + "\r\nmessage : " + request.responseText);
 		            }
 		            
 		         });
 		       }
		
	 });  
</script>
</head>
<body>
   <div id="container" class="container">
      <div class="content">
         <div class="join_wrap">
            <form id="join_frm" method="post" enctype="multipart/form-data"  action="${pageContext.request.contextPath}/joinus/fileMail">  <%-- action="${pageContext.request.contextPath}/joinus/fileMail"  --%>
               <div class="join_title">파일 첨부 메일 보내기</div>
               <div class="join_box">
                  <input type="text" id="email" name="mailTo" size="120" style="width: 100%; margin: 0;" placeholder="받는 이" class="form-control">
                  <input type="text" name="mailSubject" size="120" style="width: 100%" placeholder="제목을 입력해주세요"  id="title" class="form-control">
                     <div class="mb-3">
                       <input class="form-control form-control-sm" id="formFileSm" type="file" name="file" id="file">
                     </div>
                     <!-- 내용 -->
                     <textarea name="mailContent" cols="120" rows="12"
                        style="width: 100%; resize: none" placeholder="내용을 입력해 주세요" id="content" class="form-control ckeditor"></textarea>
               </div>
               <!-- <button type="button" id="send" class="join_btn">메일 보내기</button> -->
               <button type="submit" id="send" class="join_btn">메일 보내기</button>
               <!--  <input type="submit" value="메일 보내기" class="btn btn-warning"> -->
            </form>
            
            
         </div>
      </div>
   </div>
</body>
</html>