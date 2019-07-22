<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 함수 예제</title>
<script type="text/javascript">
	/* 
		상품 주문 수량을 입력받아서 수량*단가(7000) => 총액 정보를 출력
		-- 함수명: order
		-- 수량을 입력하지 않는 경우
		-- 수량을 숫자형식 데이터로 입력한 경우
		-- 총액정보를 보여주고 최종 주문 확인/취소 여부 메세지
		-- 주문하면 주문 성공 메세지 출력, 주문 취소시 취소 메세지 출력
	*/
	function order() {
		// 1. 사용자에게 주문 수량을 입력 받음 : prompt()
		var amount = prompt("주문 수량을 입력하세요", " ");
		// 2. 입력정보 검증 : 입력여부, 숫자여부 : isNaN()
		while(amount == 0 || amount.length == 0 || isNaN(amount)) {
			amount = prompt("주문 수량을 다시 입력하세요", "0");
		}
		// 3. 수량  * 단가 = 총액 계산 수행
		var price = amount * 7000;
		// 4. 총액정보 출력 후 주문, 취소 여부 확인 : confirm()
		var check = confirm("주문 수량은 " + amount + "개\n총액은 " + price + "원입니다.\n정말 주문하시겠습니까?");
		// 5. 주문, 취소 결과메세지 출력 : alert()
		var str = "<h3>주문정보</h3>";
		if(check) {
			str += "<h1 style='color:red;'>주문이 완료되었습니다.</h1><hr>";
		} else {
			str += "<h1 style='color:red;'>주문이 취소되었습니다.</h1><hr>";
		}
		str += "<input type='button' value='상품구매' onclick='order()'>"
		str += "<input type='button' value='상품구매' onclick='gugudan()'>"
		document.write(str);
	}
	
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
		str += "</table><hr>";
		str += "<input type='button' value='상품구매' onclick='order()'>"
		str += "<input type='button' value='상품구매' onclick='gugudan()'>"
		document.write(str);
	}
</script>
</head>
<body>
	<input type="button" value="상품구매" onclick="order()">
	<input type="button" value="구구단" onclick="gugudan()">
</body>
</html>