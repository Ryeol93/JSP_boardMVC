//function send(){
//	var form = loginForm;
//	if(!form.userId.value){
//		alert("아이디를 입력해주세요.");
//		form.userId.focus();
//		return;
//	}
//	if(!form.userPw.value){
//		alert("패스워드를 입력해주세요.");
//		form.userPw.focus();
//		return;
//		}
// }
     

//로그인

	// 쿠키에 아이디 저장이 체크되어 있으면
	 
	if($('input[name=checkSaveId]').val()){
		// 현재 페이지의 아이디 저장 체크박스를 체크상태로 변경
		console.log("들어옴1");
		$("#contactChoice1").prop("checked", true);
	}
	// 쿠키에 자동 로그인이 체크되어 있으면
	if($('input[name=checkAutoLogin]').val()){
		// 현재 페이지의 자동 로그인 체크박스를 체크상태로 변경
		console.log("들어옴2");
		$("#contactChoice2").prop("checked", true);
	}
	// 이전 로그인 비밀번호가 쿠키에 저장되어 있다면 자동 로그인을 체크한 사용자이다.
	if($('input[name=checkPw]').val()){
	
		//아이디와 비밀번호 모두 쿠키를 사용해서 입력해놨기 때문에 바로 send()를 사용하여 전송한다.
		send();
	}
	
//        form.memberPw.value = btoa(form.memberPw.value);