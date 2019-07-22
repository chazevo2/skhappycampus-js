<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>함수 테스트</title>
<script type="text/javascript">
	function gugudan() {
		alert("신나는 구구단~");
		var start = prompt("구구단 시작 단수(2 이상의 숫자)를 입력하세요.", "2");
		while(start < 1 || start == "" || isNaN(start)) {
			start = prompt("구구단 시작 단수(2 이상의 숫자)를 다시 입력하세요.", "2");
		}
		alert("시작단수:" + start);
		var x = parseInt(start) + 1;
		var end = prompt("구구단 끝 단수(시작 단수 초과의 숫자)를 입력하세요.", x);
		while(end < start || end == null || isNaN(end)) {
			end = prompt("구구단 끝 단수(시작 단수 초과의 숫자)를 다시 입력하세요.", start+1);
		}
		alert("끝단수" + end);
		var str = "<table border='1'>";
		for(var i = start; i <= end; i++) {
			document.write("<tr>");
			for(var j = 2; j < 10; j++) {
				str += "<td>";
				str += i + "X" + j + "=" + i*j;
				str += "</td>";
			}
			str += "</tr>";
		}
		str += "</table>";
		document.write(str);
	}
</script>
</head>
<body>
<h3>구구단!!</h3>
<script type="text/javascript">
	gugudan();
</script>
</body>
</html>