 

//$("newPw").blur(function() {
//	$.ajax({
//		type: "post",
//		url : "유효성검사페이지",
//		data : "text",
//		dataType: "text",
//		success: function(data) {
//			$("#result2").html("비밀번호는 8자리 이상이어야 하며, 영문/숫자/특수문자 모두 포함해야 합니다.");
//			$("#result2")
//		}
//	})
//});







//비밀번호 유효성검사

 //8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
 //(?=.*?문자) : 각각의 모든 대상을 '문자'로 검사한다. 


 document.querySelector("input[name='newPw']").addEventListener("blur", function(){
	 var pwCheck = /^(?=.*?[a-zA-Z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-.]).{8,}$/;
	 var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	 
     if(!pwCheck.test(form.newPw.value)){
    	 $("#result2").text("비밀번호는 8자리 이상이어야 하며, 영문/숫자/특수문자 모두 포함해야 합니다.");
    	 $("#result2").css("color", "#ffb61a");
    	 userPw.focus();
     }else{
    	 $("#result2").text("사용가능한 비밀번호입니다.");
    	  $("#result2").css("color", "#03c75a");
    	  newPwCK.focus();
         check = true;
     }
 });

//$("newPw").blur(function() {
//	$("#result2").text("들어옴");
//	userPw.focus();
//});