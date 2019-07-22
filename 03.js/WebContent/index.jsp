<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 예제</title>
<!-- 
## JavaScript
-- 브라우저에 내장되어 사용자 이벤트 처리, 동적 화면 처리 등 담당
-- 사용자 데이터는 접근하지 못함

## 내장함수
-- Window 객체(자바스크립트 최상위 객체)에 구성된 함수
-- alert("메세지 문자열") => OK 버튼 다이얼로그 함수
-- confirm("확인 메세지 문자열") => OK, Cancel 버튼
-- prompt("메세지", "초기값") => 사용자 입력
-- isNaN(데이터) : 데이터가 숫자 아닌지 여부 검사, 숫자이면 false, 숫자가 아니면 true
-- eval("수식형식의 문자열") => 수식변환해서 연산 수행, json에서 사용
-- parseInt("숫자형식의 문자열") => 숫자타입형 변환, 실수데이터이면 정수만 변환
-- parseFloat("숫자형식의 문자열") => 실수타입형 변환
 -->
<!-- js : internal -->
<script type="text/javascript">
	/* 자바스크립트가 지원되지 않을 경우 아래 주석의 스크립트는 실행되지 않음 */
	<!--
	//-->
	/* 전역변수 선언 */
	var title = "hello javascript";
	
	function doA() {
		/* 함수 내부에 선언 지역변수 */
		var name = "홍길동";
		/* 함수 내부에서 선언 전역변수 */
		courseName = "2019년 행복성장캠퍼스";
		alert("title:" + title + "\n" + name + "\n" + courseName);
	}
	
</script>

<noscript>
	자바스크립트가 정상 지원되지 않을 때
</noscript>
</head>
<body>
	<h3>자바스크립트 예제</h3>
	<script type="text/javascript">
		/* 함수 호출 */
		doA();
		alert("title:" + title + "\n" + name + "\n" + courseName);
	</script>
</body>
</html>