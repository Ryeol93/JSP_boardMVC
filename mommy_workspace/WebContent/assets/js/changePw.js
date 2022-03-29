var userId = localStorage.getItem('userId')
var regpw =  /^(?=.*?[a-zA-Z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-.]).{8,}$/;


check = false;
$('#user_new_pw').blur(function () {
	if(!regpw.test($('#user_new_pw').val())){
		  $("#list3").text("규정에 맞지않는 비밀번호입니다.");
	        $("#list3").css("color", "#ffb61a");
	        $('#user_new_pw').focus();
	        check = false;
	}
	else{
		$("#list3").text("확인되었습니다");
        $("#list3").css("color", "#03c75a");
        
        check = true;
	}
});

$('#user_new_pwre').blur(function () {
	if(($('#user_new_pw').val())  !==($('#user_new_pwre').val()) ){
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





$('.button-size').click(function(){
	
	
	if(check==false){
		alert('비밀번호를 다시확인해주세요');
	}else{
	
	
	 $.ajax({
	   		url: context +"/user/ChangePwOk.user",
	   		type: "post",
	   		contentType: "application/x-www-form-urlencoded",	
      dataType: "json",
      data : {"userId": userId , "userPw":$('#user_new_pw').val()},
      success: function(result){
   
    		
    	
      },
      });
	 alert('비밀번호가 변경되었습니다.');
	 location.href= context +"/user/UserLogin.user";
	}
});




localStorage.clear();








	