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
        
        <link href="${pageContext.request.contextPath}/assets/css/myPageChangePw.css" rel="stylesheet" type="text/css">
	</head>
 	
	
	<body >
	<c:set var="userNum" value="${sessionScope.userNum}"/>

                 <!--비밀번호 변경 -->
                 <div>
                    <h4 class = "mainTitle"> 비밀번호 변경</h4>
                    <div class = "infoWrapper">
                            <div>
                                 <p class="p-font-color">기존 비밀번호 </p>
                                 <input type="password" name="beforePw" id="beforePw"class="input-font" style="width: 95%;" placeholder="기존 비밀번호를 입력해주세요.">
                             </div>
                                 <br>
                                 <div>
                                    <p class="p-font-color" id="result2">새로운 비밀번호 </p>
                                    <input type="password" name="newPw" id="newPw" class="input-font" style="width: 95%;" placeholder="새 비밀번호를 입력해주세요.">
                                </div>
                                <div></div>
                                    <br>
                                 <div id="newPwCkWrap">
                                        <p class="p-font-color" id="list4">새로운 비밀번호 확인</p>
                                        <input type="password" name="newPwCK" id="newPwCK" class="input-font" style="width: 95%;" placeholder="새 비밀번호를 입력해주세요.">
                                        <div id="newPwCkText"></div>
                                    </div>
                                        <br>
                                        <br><br>
                                        <div style = "text-align: center;">
                                        <input class="uploadButton" type="button" value="변경" onclick="sendPwch(beforePw)"><br>
                                    </div>
                                    
                    </div>
                </div>
                <!-- 비번 변경 끝 -->


 




	</body>
			<!-- Scripts -->
			<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script>
			 var context = '${pageContext.request.contextPath}'; 
			 var userNum = '${userNum}';
			 var pwCheck = /^(?=.*?[a-zA-Z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-.]).{8,}$/;
			var newPw = document.getElementById('newPw').value;
			var newPwCK = document.getElementById('newPwCK').value;

			
			 function sendPwch() {
					//	비밀번호 검사후 아래 ajax로 창이동   
					 var $beforePw = $('input[name=beforePw]').val();  
					var $newPw = $('input[name=newPw]').val();
					var $newPwCK = $('input[name=newPwCK]').val();
	
					if($newPw == $newPwCK && pwCheck.test($('input[name=newPwCK]').val())) {
						var param = { "beforePw":$beforePw ,
								"newPw":$newPw	 
									};
						
						
					contents=$.ajax({
					url: contextPath +"/myPage/MyPageUpdatePwOk.my", // 통신할url
					data:param,
					type:"POST"	,
					dataType: "json",
					contentType: "application/x-www-form-urlencoded",
					success: function(data) {
						// 세션의 유저정보와 컨트롤로에서 받은값과 같다면 성공 얼라트
						if(data.userNum == userNum){
							alert('비밀번호를 변경하였습니다!')
						}else{
							alert('기존 비밀번호가 틀립니다!')
						}

					},
					error:function(){
						console.log('실패')
					}
					
				}); 
					var text ="";
						$("#newPwCkText").html(text);
			 }else{
					var text ="<p style = 'margin: 0px 0px -4em; font-size:14px;'>비밀번호가 일치하지 않거나 유효한 비밀번호가 아닙니다.<br> 8자리 이상이어야 하며, 영문/숫자/특수문자 모두 포함해야 합니다.</p>"
					$("#newPwCkText").html(text);
			 }
				 
			}
			 
			 
		</script>
			<script src="${pageContext.request.contextPath}assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}assets/js/main.js"></script>
         	<script src="${pageContext.request.contextPath}assets/js/myPageChangePw.js"></script>
   


</html>