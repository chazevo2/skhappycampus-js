<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
<script type="text/javascript" src="./css/user_object.js"></script>
<script type="text/javascript">
	window.onload = function() {
		// 버튼1객체를 id 기반으로 가져온다
		btn1Element = document.getElementById("btn_1");
		//2. tag : name: getElementsByTagName("tagname") : NodeList
		//3. name: getElementsByName("name") : NodeList
		//4. class: getElementsByClassName("클래스 이름") : NodeList
		btn1Element2 = document.getElementsByTagName("button")[0];
		btn1Element3 = document.getElementsByTagName("button").item(0);

		btnElement2list = document.getElementsByTagName("button");

		// 이벤트 처리방법
		btnElement.onclick = function() {
			btn1Element.style.backgroundColor = "red";
			btn1Element.style.color = "white";
			btn1Element.style.width = "200px";
			btn1Element.style.height = "50px";
			btn1Element.disabled = "disabled";
		}
		takeMemberIdElement = document.getElementById("memberId");
		takeMemberIdElement.onblur = function() {
			takeMemberIdElement.readOnly = "readOnly";
		}
		//disabled 는 선택이 안되고 정보를 죽이는것
		//readonly 는 선택이 안되고 값을 받아오는것
	}
	
	function doA() {
		alert("버튼 1")
	}
</script>
</head>
<body>
	<button id="btn_1" class="btn_normal">버튼1</button>
	<button id="btn_2" class="btn_normal" onclick="alert('버튼2')">버튼2</button>
	<button id="btn_3" class="btn_nomal" onclick="alert('버튼3')">버튼3</button>

	<form action="#" method="post">
		<input type="text" id="memberId" placeholder="입력후 변경불가">
	</form>
</body>
</html>