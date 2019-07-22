/*사용자  객체 정의*/

/*패키지 선언 방법 : www.sk.com => com.sk*/
com ={};
com.sk={};
com.sk.Notice = function(num, title, contents, user) {
	this.num = num;
	this.title = title;
	this.contents = contents;
	this.user = user;
}
var notice = new com.sk.Notice(1, "공지", "공지내용입니다.", "user01");

/*회원 클래스(객체) 생성자 정의*/
function Member(memberId, memberPw, memberName){
	this.memberId = memberId;
	this.memberPw = memberPw;
	this.memberName = memberName;
	this.getMemberName = getMemberName; // 바인딩 | ()를 붙이면 반환값이 아니라 호출하는것이 되버림
	this.setMemberName = function(memberName) {
		this.memberName = memberName;
	}
}

function getMemberName() {
	return this.memberName
}

// prototype 으로도 할수있다.
// 클래스명.프로토타입
// json 형식으로 메소드 선언
Member.prototype = {
	toString:function(){
		return this.memberId + "," + this.memberPw + ","  + this.memberName;
	},
	setMemberPw:function(memberPw){
		this.memberPw = memberPw;
	},
	getMemberPw:function(){
		return this.memberPw;
	}
}

var members = new Array();
members[0] = new Member("user01","password01", "홍길동");
members[1] = new Member("user02", "password02", "강감찬");
members[2] = new Member("user03","password03", "이순신");

for (var i = 0; i < members.length; i++) {
	console.log(members[index].toString());
}