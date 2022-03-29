<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<!DOCTYPE HTML>
<!--
	Exponent by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>마이페이지</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
        <link href="${pageContext.request.contextPath}/assets/css/myPageInfo.css" rel="stylesheet" type="text/css">
	
        </head>

	
	<body class="is-preload">
	<c:set var="userVo" value="${userVo}"/>
	<!-- Header -->

		
		
		<!-- Main -->
		
                <!--회원 정보 수정 -->
                <div>
                   <h4 class = "mainTitle"> 회원 정보 수정</h4>
                   
                   <div class = "infoWrapper">
                            <div>
                                <p class="p-font-color">이름</p>
                                <input type="text" class="input-font" style="width: 95%;"value="${userVo.getUserName()}" readonly="readonly">
                            </div>
                                <br>
                  
<!--                            <div>
                                <p class="p-font-color">비밀번호 </p>
                                <input type="password" class="input-font" style="width: 95%;" value="123456789">
                            </div>
                                <br> -->
                            <div>
                                <p class="p-font-color">Email</p>
                                <input type="text" class="input-font" style="width: 95%;" value="${userVo.getUserEmail()}"  readonly="readonly">
                            </div>
                            <br>
                            <div>
                                <p class="p-font-color">휴대폰번호</p>
                                <div style = "display:flex;">
                                <input type="text" name="newPhonNumInput" id="newPhonNumInput" class="input-font" style="width: 75%;" value="${userVo.getUserPhone()}">
                                <button class = "phoneBtn" onclick="sendPhoneNumCk(newPhonNumInput);">본인인증</button>
                                <!-- 전화 번호 인증 js 및 컨트롤러 사용 -->
                                </div>
                            </div>
                               <!--  인증번호를 받으면 나오게 구현 -->
                            <br class="myPageCkNum">
                            <div class="myPageCkNum">
                                <div style = "display:flex;">
                                <input type="text" class="input-font" id="ckPhoneNumWrite" name="ckPhoneNumWrite"style="width: 75%;" placeholder="인증번호를 입력해주세요.">
                                <button class = "phoneBtn" id="ckPhoneNumBtn" onclick="ckPhoneNum(ckPhoneNumWrite);" >확인</button>
                                </div>
                            </div>
                         
                            <br>
                                <div> 
                                    <p class="p-font-color">생년월일</p>
                                    <div style = "display:flex;">
                                <input type = "text"  class="input-font" value ="${userVo.getUserBirthYear()}" name="birthYear" style="width: 30%; margin-right:2.5%;height: 3em;">
                                <select name = "birthMonth" id="birthMonth" style="width:30%; margin-right:2.5%;height: 2.75em; margin-top:0.5px; ">
                                    <option value = "1"> 1</option>
                                    <option value = "2"> 2</option>
                                    <option value = "3"> 3</option>
                                    <option value = "4"> 4</option>
                                    <option value = "5"> 5</option>
                                    <option value = "6"> 6</option>
                                    <option value = "7"> 7</option>
                                    <option value = "8"> 8</option>
                                    <option value = "9"> 9</option>
                                    <option value = "10"> 10</option>
                                    <option value = "11"> 11</option>
                                    <option value = "12"> 12</option>
                                </select>
                                <input type = "text" value ="${userVo.getUserBirthDate()}" name="birthDate" style="width:30%; height: 2.75em; margin-right:5%;">
                            </div>

                            </div>
                            
                            
                            <br><br><br>
                            <div style = "text-align: center;">
                            <input class="uploadButton" type="submit" value="저장"onclick="updateUserInfo(newPhonNumInput)"><br>
                       		 </div>
                       </div>
                        <!-- form, or js로 데이터를 DB에 insert  -->
                        
                        
                   </div> <!-- 회원 정보 수정 -->
                   


                      
               
 

  

		<!-- Scripts -->
			<script >
			
			 var context = '${pageContext.request.contextPath}'; 
			 var verifyCode = "";
			 var ckFlag = true;
			function sendPhoneNumCk() {
				var $newPhonNumInput=$('input[name=newPhonNumInput]').val();
				/* 	alert($myPagePwInput); */
				/*  window.location.href= context+'/myPage/UserPhoneOk.my?userPhone='+$ckPhonNumInput;  */ 
				$.ajax({
					url: contextPath +"/user/UserPhoneOk.user", // 통신할url
					data:{"userPhone":$newPhonNumInput},
					type:"POST"	,
					dataType: "json",
					success: function(data) {
						 verifyCode = data.verifyCode; 
						 ckFlag = false;
							$('.myPageCkNum').css('display','block');
					},
					error:function(){
						console.log('실패')
					}
					
				}); 
				
				
				
			}
			
			function updateUserInfo() {
				var $newPhonNumInput=$('input[name=newPhonNumInput]').val();
				var $birthYear=$('input[name=birthYear]').val();
				var $birthMonth=$('select[name=birthMonth]').val();
				var $birthDate=$('input[name=birthDate]').val(); 
				var param = { "birthYear":$birthYear,
						"birthMonth":$birthMonth,
						"birthDate":$birthDate,	 
						"newPhonNumInput":$newPhonNumInput};

				console.log($newPhonNumInput+"_"+$birthYear+"_"+ $birthMonth+"_"+ $birthDate);
				console.log(param);
				console.log(JSON.stringify(param));
				if(ckFlag){

				$.ajax({
						url: contextPath +"/myPage/MypageUpdateMyInfoOk.my", // 통신할url
						data: param,  
						type:"POST"	,
						dataType: "text",
						contentType: "application/x-www-form-urlencoded",
						success: function(data) {
									alert('회원정보를 수정하였습니다!')
									// 화면 이동이 필요하다면 여기서 수정 !
									
						},
						error:function(a,b,c){
							console.log('실패')
							console.log(a)
							console.log(b)
							console.log(c)
							alert('회원정보를 수정실패')
						}
						
					});  
					
					
				}
			}
			
			

			  var  userBirthMonth =   '${userVo.getUserBirthMonth()}';
		/* 	$('#birthMonth option:eq('+$userBirthMonth+')').prop('selected', true); */
		 	$('#birthMonth').val(userBirthMonth).prop('selected', true); 

		 	function ckPhoneNum() {
		 		var $ckPhoneNumWrite=$('input[name=ckPhoneNumWrite]').val();
				/* alert($ckPhoneNumWrite); */
				
				// 인증번호 구현 및 테스트시 사용
				// 현재는 update 테스트가 우선이라 주석처리후 form을 제어할 flag도 true로 열어줌
				//ckFlag = false; 
				// 인증번호 검사를 하지 않는 경우도 있기떄문에 true를 디폴트로 주고
				// 버튼을 클릭하였을때 false로 봐꾼다. 
				ckFlag = true;
/* 				if($ckPhoneNumWrite == verifyCode){
					alert('인증에 성공하셨습니다!')
					ckFlag = true;
				}else{
					alert('인증에 실패하였습니다!')
					ckFlag = false;
				} */
			}
			

			</script>
			<script src="${pageContext.request.contextPath}assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/main.js"></script>
         	<script src ="${pageContext.request.contextPath}assets/js/myPageInfo.js"></script>
        	<script src="${pageContext.request.contextPath}/assets/js/phonepopup.js"></script>

	</body>
 
</html>