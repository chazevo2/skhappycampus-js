<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var obj = {};
	var json = {"name":"홍길동", "mobile":"010-1111-1111"};
	
	var array = new Array("user01", "user02", "user03");
	array[array.length] = "user04";
	array[array.length] = "user05";
	array[array.length] = new Date();
	array[array.length] = new String("hello world");
	
	for(index = 0; index < array.length; index++) {
		document.write("<h3>" + array[index] + "</h3>");
	}
	document.write("<hr>");
	// json 형식의 배역 객체
	var array2 = ["java", "db", "webui"];
	for(index = 0; index < array2.length; index++) {
		document.write("<h3>" + array2[index] + "</h3>");
	}
	
	// json 객체 배열
	var jsonObj = {"members":[
		{"id":"user01", "name":"홍길동", "mobile":"010-1234-1111"},
		{"id":"user02", "name":"강감찬", "mobile":"010-1234-2222"},
		{"id":"user03", "name":"이순신", "mobile":"010-1234-3333"}
	]};
	var name = jsonObj.members[i].name;
	alert("name:" + name);
	document.write("<hr>");
	
	function getCurrentDate() {
		// 날짜정보 : 년도4.월2.일2 24시간:분:초
		var today = new Date();
		var year = today.getFullYear();
		var month = today.getMonth() + 1;
		var date = today.getDate();
		var hours = today.getHours();
		var minutes = today.getMinutes();
		var seconds = today.getSeconds();
		
		// console.log();
		var currentDate = year + "." + month + "." + date + " " + hours + ":" + minutes + ":" + seconds;
		console.log("currentDate : " + currentDate);
		document.write(currentDate);
		
		return currentDate;
	}
</script>
</head>
<body>
</body>
</html>