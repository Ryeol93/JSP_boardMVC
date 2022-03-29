/**
 * 
 */
/**
 * 
 */
var check = false;
var form = document.joinForm;
   // 이용 약관
   const $all = $("#term");
   const $inputs = $(".terms");

   $all.on('click', function(){
       if($(this).is(":checked")){
           $inputs.prop('checked', true);
       }else{
           $inputs.prop('checked', false);
       }
   });

   $inputs.on('click', function(){
       var check = true;
       if(!$(this).is(":checked")){
           $all.prop('checked', false);
       }

       if($inputs.filter(":checked").length == 2){
           $all.prop('checked', true);
       }
   });
   
   
   


   
   $("#inputemail").blur(function () {
	   var regemail =  /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	  	  $.ajax({
	  	    url:
	  	      contextPath + "/user/UserCheckEmOk.user?UserEm=" + $("#inputemail").val(),
	  	      
	  	    type: "get",
	  	    dataType: "json",
	  	    success: function (us) {
	  	      if (us.status =="ok"&& regemail.test($('#inputemail').val())) {
	  	        $("#result_email").text("사용 가능한 이메일입니다.");
	  	        $("#result_email").css("color", "#03c75a");
	  	        check = true;
	  	      } else {
	  	        $("#result_email").text("사용할수없거나 중복된 이메일입니다.");
	  	        $("#result_email").css("color", "red");
	  	      $("#inputemail").focus();
	  	        check = false;
	  	      }
	  	    },
	  	    error: function () {
	  	      console.log("중복검사 오류");
	  	    },
	  	  });
	  	});   
   

   // 아이디 중복검사
   
   function checkId(userId){
	   var regid = /^[a-z]+[a-z0-9]{5,19}$/m;
      if(!userId){
         $("#result").text("아이디를 입력해주세요.");
         $("#result").css("color", "#ffb61a");
         
         
         
         return;
      }
      
      $.ajax({
         url: contextPath + "/user/UserCheckIdOk.user?userId=" + userId,
         type: "get",
         dataType: "json",
         success: function(result){
            if(result.status == "ok"  && regid.test($('#userId').val())) {
               $("#result").text("사용한 가능한 아이디입니다.");
               $("#result").css("color", "#03c75a");
               check = true;
            }else{
               $("#result").text("사용할수없거나 중복된 아이디입니다.");
               $("#result").css("color", "red");
               $("input#userId").focus();
            }
         },
         error: function(){
            console.log("중복검사 오류");
         }
      });
      
    
       
   }

   
   
   
   
   // 키 이벤트
   //$("input#memberId").keyup(function(){
//      checkId($(this).val());
   //});
   $("input#userId").on('blur' ,function(){
         
         check = false;
         checkId($(this).val());
      });


   //비밀번호 유효성검사

 //8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
 //(?=.*?문자) : 각각의 모든 대상을 '문자'로 검사한다. 
 var pwCheck = /^(?=.*?[a-zA-Z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-.]).{8,}$/;
 var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

 document.querySelector("input[name='userPw']").addEventListener("blur", function(){
     if(!pwCheck.test(inko.ko2en(form.userPw.value))){
    	 $("#result2").text("비밀번호는 8자리 이상이어야 하며, 영문/숫자/특수문자 모두 포함해야 합니다.");
    	 $("#result2").css("color", "#ffb61a");
    	 form.userPw.focus();
     }else{
    	 $("#result2").text("사용가능한 비밀번호입니다.");
    	  $("#result2").css("color", "#03c75a");
         form.rePw.focus();
         check = true;
     }
 });

 
 
 document.querySelector("input[name='rePw']").addEventListener("blur", function(){
     check = false;
     if(this.value != document.querySelector("input[name='userPw']").value){
    	 $("#result3").text("비밀번호가 일치하지 않습니다.");
    	 $("#result3").css("color", "red");
         form.userPw.focus();
     }else{
    	 $("#result3").text("비밀번호가 일치합니다.");
    	  $("#result3").css("color", "#03c75a");
         check = true;
     }
 });

 
 
 
   
   $all.on('click', function(){
       if($(this).is(":checked")){
           $inputs.prop('checked', true);
       }else{
           $inputs.prop('checked', false);
       }
   });
   
   // 회원가입 유효성 검사
   function send(){
	   
	   if($('input[name=userStatus]:radio:checked').length < 1){
		   alert("회원 유형을 선택하세요.");
		   return;
	   }
      if(!$all.is(":checked")){
         alert("약관에 동의해주세요.");
         return;
      }
      
      if(!joinForm.userName.value){
    	  joinForm.userName.focus();
    	  alert("이름을 확인해주세요.");
    	  return;
      }
         
      if(!joinForm.userGender.value){
    	  alert("성별을 선택해주세요");
    	  joinForm.userGender.focus();
    	  return;
      }
      if(!check){
         alert("아이디를 확인해주세요.");
         return;
      }
//      
//      if(!phoneCheck){
//          alert("휴대폰 인증을 다시 시도해주세요.");
//          return;
//       }
      
      if(!joinForm.userPw.value){
         alert("패스워드를 확인해주세요.");
         joinForm.userPw.focus();
         return;
      }
      

      var yy=  /^([0-9]{4})$/;
	  if(!yy.test(joinForm.userBirthYear.value) ||!joinForm.userBirthYear.value){
		  alert("생년월일을 확인해주세요.");
          
          return;
       }
	  var mm =/^(0?[1-9]|1[012])$/;
	  if(!mm.test(joinForm.userBirthMonth.value) ||!joinForm.userBirthMonth.value){
		  alert("생년월일을 확인해주세요.");
          
          return;
       }
	  var dd= /^(0?[1-9]|[12][0-9]|3[01])$/;
      if(!dd.test(joinForm.userBirthDate.value) ||!joinForm.userBirthDate.value){
    	 
          alert("생년월일을 확인해주세요.");
          return;
       }
      
      
      
      
      
      
      alert("마미랑에 오신걸 환영합니다!\n\n마미랑만의 인증으로 검증된 시터와 부모를 만나보세요 !")
      joinForm.submit();
   }

   var code;
   var phoneCheck = false;
   //인증하기 펼치기
   function openCloseToc() {
	 
	      if($('#phone-check2').css('display')=='none'){
	         $('#phone-check2').css('display', 'block');
	      }
	      
	      var $userPhone=$('input[name=userPhone]').val();
	       $.ajax({
	          type:"GET", 
	          url:contextPath + "/user/UserPhoneOk.user?userPhone=" + $userPhone,
	          cache : false,
	          dataType: "json",
	          success:function(result){
	        	  code = result.verifyCode;
	       
	       console.log("verifyCode 1: " + result.verifyCode);
	       }
	       
	       });
	       console.log("verifyCode 2: " + result.verifyCode);
	       
	   }
   
   
   
   function checkCode(){
	 
	   var $userCode=$('input[name=userCode]').val();
	   if ($userCode == code){
		   $("#result4").text("인증번호가 일치합니다.");
		   $("#result4").css("color", "#03c75a");
		   phoneCheck = true;
	   }else{
		   $("#result4").text("인증번호가 일치하지 않습니다.");
				$("#result4").css("color", "red");
				$("input#userCode").focus();
	   }
	   console.log("내 코드: " + code);
	   console.log("user가 입력한 Code : " + $userCode);
	 
	       
	   
   }
   
//   

	      

   