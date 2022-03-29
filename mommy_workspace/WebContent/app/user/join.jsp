<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Exponent by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>회원가입 페이지</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" >
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/assets/css/join.css" rel="stylesheet" >
		<link rel="icon" href="${pageContext.request.contextPath}/images/favicon3.ico" type="image/x-icon" sizes="16x16"/>
	</head>

	<body class="is-preload">
 
		<!-- Header -->
          <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/header.jsp"/>
            </div>
         </div> 
		
		
		
		
		<!-- Main -->
		<form method="post" action="${pageContext.request.contextPath }/user/UserJoinOk.user" name="joinForm">
			<div id="main" class="container" style="min-height: 1850px;">
				<header class="major">
					<a href="${pageContext.request.contextPath}/user/UserMainOk.user"><h2><img alt="" src="${pageContext.request.contextPath}/images/로고1.png"></h2></a>
				</header>
					<div>
					<div>
						<ul class="actions">
							<div>
								<label class="radio_obj">
   									<input class = "radio" type="radio" name="userStatus" id="parent" value="1" required>
									<span style="width: 230px;">부모 회원가입하기</span>
								</label>
							</div>
							<div>
								<label class="radio_obj" id="sitter-join">
									<input class = "radio" type="radio" name="userStatus" id="sitter" value="2">
									<span style="width: 230px; position: relative; left: 13px;'">시터 회원가입하기</span>
								</label>
							</div>
						</ul>
					</div>
					
			<div id="col-1" class="container" style="width: 35%; position: relative; top: 20px;">
				<div style="margin-top:6%; margin-bottom:2%;">
					<input type="checkbox" id="term" name="term">
					<label for="term" style="font-size:1.1em; font-weight:bold; display: flex; justify-content: space-between;">전체 동의합니다.</label>
				</div>
			<div>
			<div class="col-12" style="display:flex; justify-content:space-between; position: relative; top: 21px;">
				<div>
					<input type="checkbox" id="term1" name="term1" class="terms">
					<label for="term1"><a href="${pageContext.request.contextPath}/user/joinInfo.user">마미랑 이용약관</a> 에 동의합니다.</label>
				</div>
				
			</div>
			<br>
			<div class="col-12" style="display:flex; justify-content:space-between;">
				<div>
					<input type="checkbox" id="term2" name="term2" class="terms">
					<label for="term2"><a href="${pageContext.request.contextPath}/user/joinInfo.user">개인정보 수집 및 이용에 동의</a> 합니다.</label>
				</div>
			</div>
			</div>
			<br>
			<br>
			</div>
				<div  class="mainbox">
					<div class="font-position">
						<div>
					 		<p class="p-font-color">이름</p>
						</div>
						<div>
							<input type="text" class="input-font" style="width: 95%;"placeholder="예시 : 홍길동" name="userName">
						</div>

							
							
						<div> 
							<p class="p-font-color">성별</p>
						</div>
						
						
						<div>
							<input type="radio" id="man" name="userGender" value="1">
 							<label for="man" id="radio_label">남성</label>
 							<input type="radio" id="female" name="userGender" value="2">
 							<label for="female" id="radio_label">여성</label>

							<p class="p" id="result_1"></p>
						</div>	
													
							<br>
							
						<div> 
							<p class="p-font-color">아이디</p>
						</div>
						<div>
							<input type="text" class="input-font" style="width: 95%;" placeholder="아이디 " name="userId" id="userId">
							<p class="p" id="result"></p>
						</div>
							<br>
						<div>
							<p class="p-font-color">비밀번호 </p>
		 				</div>
						<div>
							<input type="password" class="input-font" style="width: 95%;" placeholder="비밀번호 입력" name="userPw">
							<p class="p" id="result2"></p>
						</div>
							<br>
			 			<div>
							<p class="p-font-color">비밀번호 확인 </p>
						</div>
						<div>
							<input type="password" class="input-font" style="width: 95%;" placeholder="비밀번호 재확인" name="rePw" >
							<p class="p" id="result3"></p>
						</div>
							<br>
						<div>
							<p class="p-font-color">Email</p>
						</div>
						<div>
							<input type="text" class="input-font" style="width: 95%;" placeholder="예시 : alpha@naver.com" name="userEmail" id="inputemail">
							<p class ="p" id="result_email"></p>
						</div>
						<div>
							<p class="p-font-color" style="position: relative; top: 37px;">휴대폰 번호</p>
						</div>
						<div>
							<input type="text" class="input-font" style="width: 95%;  position: relative; left: -10px; top: 20px;" placeholder="예시 : 01012345678" name="userPhone">
							<input id="phone-check" type="button" class="input-font" value="인증번호 발송" onclick="openCloseToc(userPhone);">
						</div>
						<div id="phone-check2" style="margin-top: -53px; display:none;">
							<input type="text" class="input-font" style="width: 95%;  position: relative; left: -10px; top: 20px;" placeholder="인증번호를 입력해주세요" name = "userCode" id ="userCode">
							<input id="phone-check" type="button" class="input-font" value="인증하기" onclick="checkCode()" style="width: 29%; left: 273px; bottom: 40px; font-size: 14px; height: 51px; padding: 0px; border: 2px solid #f6f6f6; border-radius: 0px;">
							<p id = "result4" class="p"></p>
						</div>
							<br>
						<div> 
                        <p class="p-font-color">생년월일</p>
                           <div class="col-1" style = "display:flex;">
                           		<input type = "text"  class="input-font" placeholder ="년 (ex. 1998)" name="userBirthYear" id="yy" style="width: 30%; margin-right:10px;height:40px; position: relative; left: -17px;" maxlength="4">
                           		
                                <input type = "text" name = "userBirthMonth" placeholder ="월(ex. 1)"
                                 	style="width: 95px;height: 41px; margin-right: 10px; position: relative; left: -15px; top: -16px; border-radius: 0px; border: hidden; border-bottom: 3px solid #f6f6f6; background-color:white;">
                                    
                                    
                                <input class="col-2" type = "text" placeholder ="일 (ex. 24)" name="userBirthDate" required style="width: 30%; margin-right:10px;height:40px; position: relative; left: -15px;" maxlength="2">
                            </div>
                        </div>
					</div>
					</div>
						<div style="text-align: center;">
							<input type="button" class="button-size primary" onclick="send()" value="회원가입">
						</div>
					</div>
				</div>
	
			</form>
			
		
		
		<!-- footer -->
          <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/footer.jsp"/>
            </div>
          </div> 

		<!-- Scripts -->
			<script>var contextPath = "${pageContext.request.contextPath }";</script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/join.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/phonepopup.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/inko@1.1.1/inko.min.js"></script>

	</body>
	

</html>