<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>index</title>
		<link href="${pageContext.request.contextPath}/resources/css/base.css" type="text/css" rel="stylesheet" />
	</head>
	<body>

		<div id="main">
			<div class="top-wrapper clear">
				<div id="content">
					<h2>로그인</h2>
					<ul id="breadscrumb" class="block_hlist clear">
						<li>
							<a href="${pageContext.request.contextPath}/">HOME</a>
						</li>
						<li>
							<a href="/joinus/join.htm">회원가입</a>
						</li>
					</ul>
					<h3 class="hidden">회원가입 폼</h3>
					<div id="join-form" class="join-form margin-large" >						
						<form action="/joinus/login" method="post">                            <fieldset>
                                <legend class="hidden">로그인 폼</legend>
                                <ul id="loginBox">
                                    <li><label for="uid">아이디</label><input name="UserName" class="text" /></li>
                                    <li><label for="pwd">비밀번호</label><input type="password" name="Password" class="text" /></li>
                                </ul>
                                <input type="submit" id="btnLogin" value="로그인" />
                                <ul id="loginOption" class="hidden">
                                    <li><span>아이디 또는 비밀번호를 분실하셨나요?</span><a href="/Member/FindID"><img alt="ID/PWD 찾기" src="images/btnFind.png" /></a></li>
                                    <li><span>아이디가 없으신 분은 회원가입을 해주세요.</span><a href="/Member/Agree"><img alt="회원가입" src="images/btnJoin.png" /></a></li>
                                </ul>
                            </fieldset>
						</form>
					</div>
					
				</div>
				
			</div>
		</div>
		
	</body>
</html>
