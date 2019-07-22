<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 처리 예제</title>
<style type="text/css">
	input {
		display: block;
		margin: 10px;
		padding: 5px;
	}
</style>

<!-- js : external -->
<script type="text/javascript" src="./js/common.js"></script>
<!-- js : internal -->
<script type="text/javascript">
	/* 현재 윈도우가 로드될 때 이벤트 처리
		-- 로그인 폼의 아이디 입력 항목에 포커스 위치
	*/
	window.onload = function() {
		// 1. 입력폼 이름으로 form 객체 가져오는 방법
		var takeForm = document.loginForm;
		// 2. id로 객체 가져오는 방법
		var takeForm2 = document.getElementById("loginForm");
		
		// memberId 입력항목에 포커스 위치시킴
		takeForm2.memberId.focus();
		
		// 현재  시간을 위한 div 객체 가져오기
		var takeDivTime = document.getElementById("div_time");
		var currentTime = getCurrentDate();
		takeDivTime.innerHTML += currentTime;
	}
	
	function checkLoginForm() {
		// memberId로 설정된 Text 객체 가져오기
		var takeMemberId = document.loginForm.memberId;
		var takeMemberId2 = document.getElementById("memberId");
		
		// 입력한 데이터 가져오기 : 입력양식 객체명.value 속성 => String 타입
		var memberId = takeMemberId.value;
		var memberPw = document.getElementById("memberPw").value;		
	}
	
</script>
</head>
<body>
	<div id="div_time">로그인 현재시간 : </div>
	<form name="loginForm" id="loginForm" action="result.jsp" method="post">
		<input type="text" id="memberId" name="memberId" placeholder="아이디">
		<input type="button" value="아이디 중복확인" onclick="checkIdForm()">
		<input type="password" id="memberPw" name="memberPw" placeholder="비밀번호">
		<input type="submit" value="로그인">
	</form> 
</body>
</html>