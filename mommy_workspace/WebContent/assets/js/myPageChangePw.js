 

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
var regpw =  /^(?=.*?[a-zA-Z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-.]).{8,}$/;
var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	 check = false;
	 
  $('#newPw').blur(function () {
	 
	  if(!regpw.test($('#newPw').val())){
    	 $("#result2").text("비밀번호는 8자리 이상이어야 하며, 영문/숫자/특수문자 모두 포함해야 합니다.");
    	 $("#result2").css("color", "#ffb61a");
    	  $('#newPw').focus();
    	 check = false;
     }else{
    	 $("#result2").text("사용가능한 비밀번호입니다.");
    	  $("#result2").css("color", "#03c75a");
    	  newPwCK.focus();
         check = true;
     }
 });
 

 $('#newPwCK').blur(function () {
 	if(($('#newPw').val())  !==($('#newPwCK').val()) ){
 		  $("#list4").text("비밀번호가 일치하지 않음");
 	        $("#list4").css("color", "#ffb61a");
 	        $('#user_new_pwre').focus();
 	        check = false;
 	}
 	else{
 		$("#list4").text("확인되었습니다");
         $("#list4").css("color", "#03c75a");
         check = true; 
 	}
 });


//$("newPw").blur(function() {
//	$("#result2").text("들어옴");
//	userPw.focus();
//});