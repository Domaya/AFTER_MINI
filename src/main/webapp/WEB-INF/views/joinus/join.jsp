<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>TTAC :: 회원가입</title>
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
	margin: 100 auto;
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

.email_auth_btn {
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
	/*
	  회원가입 관련 처리
	 */

	/* function fn_join() {
		var f = $('#join_frm');
		var formData = f.serialize();

		$.ajax({
			type : "POST",
			url : "join.htm",
			data : formData,
			success : function(data) {
				if (data == "Y") {
					alert("회원가입이 완료되었습니다.");
					location.href = "/"
				} else {
					alert("회원가입에 실패하였습니다.");
				}
			},
			error : function(data) {
				alert("회원가입 에러 발생!");
				console.log(data);
			}
		});
	} */
	function fn_join(){
	      console.log('fn_join')
	     // var flag = false;
	      /*
	      var f = $('#join_frm');
	      var formData = f.serialize();
	      var member = formData;
	      */
	      var userid = $('#userid').val();
	      var pwd = $('#password').val();
	      var name = $('#name').val();
	      var email = $('#email').val();
	      var member = {
	    	  "userid" : userid,
	    	  "pwd" : pwd,
	    	  "name" : name,
	    	  "email" : email
	      }
	      console.log(member)
	       $.ajax({
	            type : "POST",
	            url : "/joinus/join",
	            async : false,
	            data: JSON.stringify(member),
	            contentType : 'application/json; charset=utf-8',
	            success: function(data){
	               console.log("join.htm post")
	               console.log(data)
	               if(data == "success"){
/* 	            	   location.href="/index.htm";  */
	            	   swal("Check!", " 회원가입이 완료되었습니다.", "success").then(function(){
	            			location.href="${pageContext.request.contextPath}/";                   
	            	   });
	               }else{
	            	   swal("Check!", " 회원가입에 실패하였습니다.", "error");
	               }
	               
	              /*  location.href="/qwe/index.htm";  */
	            },
	            error: function(request, status, error){
	            	swal("Check!", "회원가입 에러 발생!", "warning");
	               //alert("회원가입 에러 발생!");
	              // flag = false;
	                console.log("code : " +  request.statusText  + "\r\nmessage : " + request.responseText);
	            }
	            
	         });
	       }

	$(function() {

		var email_auth_cd = '';

		$('#join').click(function() {

			if ($('#userid').val() == "") {
				swal("Check!", " 아이디를 입력해 주세요.", "warning");
				//alert("아이디를 입력해주세요.");
				return false;
			}

			if ($('#name').val() == "") {
				swal("Check!", " 이름을 입력해 주세요.", "warning");
				//alert("닉네임을 입력해주세요.");
				return false;
			}

			if ($('#password').val() == "") {
				swal("Check!", " 비밀번호를 입력해 주세요.", "warning");
				//alert("비밀번호를 입력해주세요.");
				return false;
			}

			if ($('#password').val() != $('#password_ck').val()) {
				swal("Check!", " 비밀번호가 일치하지 않습니다.", "warning");
				//alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
			/*
			if ($('#email_auth_key').val() != email_auth_cd) {
				swal("Check!", " 인증번호가 일치하지 않습니다.", "warning");
				//alert("인증번호가 일치하지 않습니다.");
				return false;
			}*/
			
			if ($('#email').val() == '') {
				swal("Check!", " 이메일을 입력해 주세요.", "warning");
				//alert("이메일을 입력해주세요.");
				return false;
			}

			fn_join();
		});

		$(".email_auth_btn").click(function() {
			var a =[];
			email = $('.email').val();
			$("input[name=email]").each(function(index, item){
	              //a.push($(item).val());
	              let txt = "";
	              txt =( $(item).val());
	              console.log("보낼 메일 주소 : "+txt)
	              a.push(txt)
	              //console.log($(item).val());
	        });
			 console.log("a배열 : "+ a);
			 console.log("a배열 0 : "+ a[0]);
			 console.log("a배열 1 : "+ a[1])
			if (email == '') {
				swal("Check!", " 이메일을 입력해 주세요.", "warning");
				//alert("이메일을 입력해주세요.");
				return false;
			}

			$.ajax({
				type : "POST",
				url : "emailAuth/",
				data : {
					"email" : a[0]
				}, 
				success : function(data) {
					swal("Check!", "메일이 발송되었습니다.", "success");
					//alert("인증번호가 발송되었습니다.");
					email_auth_cd = data;
				},
				error : function(data) {
					swal("Check!", "메일 발송에 실패했습니다.", "error");
					//alert("메일 발송에 실패했습니다.");
				}
			});
		});

 		$('#userid').focusout(function() {
			var userid = $('#userid').val();
			console.log(userid);
			$.ajax({
				type : "POST",
				url : "idCheck/"+userid,
				success : function(data) {
					
					 if(data == "false")  {
						$('#id_ck').empty(data);
						$('#id_ck').append("<div id='p' style='color:red;'>사용 불가능한 아이디</div>");		//중복아이디일 때
						console.log(data)
					} else{
						$('#id_ck').empty(data);
						 $('#id_ck').append("<div id='p' style='color:green;'>사용 가능한 아이디</div>"); //중복 없을 때
						console.log("data : "+data); 
					}
				},
				error : function(data) {
				}
			});
		}); 

 		$('#email_auth_key').focusout(function() {
			var email = $('.email').val();
			var userAuthKey = $('#email_auth_key').val();
			$.ajax({
				type : "POST",
				url : "authCheck",
				data : JSON.stringify({
					"email" : email,
					"userAuthKey" : userAuthKey
				}),
				contentType : "application/json",
				success : function(data) {
					console.log("success")
					 if(data == "correct") {
						 console.log("코렉트")
						$('#auth_ck').empty(data);
						$('#auth_ck').append("<div id='p' style='color:green;'>올바른 인증번호</div>");
						console.log(data)
					} else if(data == "incorrect"){
						console.log("인코렉트")
						$('#auth_ck').empty(data);
						 $('#auth_ck').append("<div id='p' style='color:red;'>올바르지 않은 인증번호</div>");
					}
				},
				error : function(request,status,error) {
					console.log("에러....code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		}); 
		/* $('#name').focusout(function() {
			var nickname = $('#name').val();

			$.ajax({
				type : "POST",
				url : "nicknameCheck/"+nickname,
				data : {
					nickname : nickname
				},
				success : function(data) {
					if (data == "Y") {
						$('#nickname_ck').removeClass("dpn");
					} else {
						$('#nickname_ck').addClass("dpn");
					}
				},
				error : function(data) {
				}
			});
		}); */
		
	});
</script>
</head>
<body>
	<div id="container" class="container">
		<div class="content">
			<div class="join_wrap">
				<form id="join_frm">
					<div class="join_title">회원가입</div>
					<div class="join_box">
						<input type="text" placeholder="아이디" name="userid" id="userid" style="margin: 0;">
					 	<span id="id_ck" ></span> 
							<input type="text" placeholder="이름" name="name" id="name">
							 <!-- <span id="nickname_ck" class="dpn">이미 사용중인 닉네임입니다.</span> -->
							 <input type="password" placeholder="비밀번호" name="pwd" id="password"> 
							 <input type="password" placeholder="비밀번호  확인" id="password_ck">
						<div class="email_auth">
							<input type="text" placeholder="이메일" name="email" id="email" class="email">
							<button type="button" id="email_auth_btn" class="email_auth_btn">인증번호 받기</button>
						</div>
						<input type="text" placeholder="인증번호 입력" id="email_auth_key">
						<span id="auth_ck"></span> 
					</div>
					<button type="button" id="join" class="join_btn">가입하기</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>