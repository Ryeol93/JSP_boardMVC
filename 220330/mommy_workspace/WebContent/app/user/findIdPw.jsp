<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>내 계정 찾기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/assets/css/findIdPw.css" rel="stylesheet" type="text/css">
		<link rel="icon" href="${pageContext.request.contextPath}/images/favicon3.ico" type="image/x-icon" sizes="16x16"/>
	</head>

	<body>

		<!-- Header -->
          <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/header.jsp"/>
            </div>
         </div> 
		
		
		
		<!-- Main -->
			<div id="main" class="container">
				<header class="major">
					<a href="${pageContext.request.contextPath}/app/etc/main.jsp"><h2 class="logo-location" style="position: relative; top: -60px;"><img alt="" src="${pageContext.request.contextPath}/images/로고1.png"></h2></a>
				
				<div class="first">
					<div>
						<p class="p-location" style="color: #626c6e; position: relative; top: -10px;">
							<strong>아이디나 비밀번호를 잊으셨나요?</strong><br>
							이름과 생년월일 (YYYYMMDD), 휴대폰 번호를 입력하시면 가입한 계정 정보를 알려드립니다.
						</p><br>
					</div>
				</div>
				
				<div id="mainbox" class="mainbox">
						
					<div class="font-position">
						<div>
							<p class="p-font-color" id="input_error"></p>
						</div>
						
						<div>
							<p class="p-font-color">이름</p>
						</div>
						<div>
							<input type="text" class="input-font" style="width: 95%;"placeholder="이름을 입력해주세요" name="userName" id="userName">
						</div>
							<br>
							<br>
						<div>
							<p class="p-font-color">이메일 </p>
						</div>
						<div>
							<input type="text" class="input-font" style="width: 95%;" placeholder="이메일을 입력하세요(예시 : mommyrang@mommyrang.com)"  name="userEmail" id="userEmail">
						</div>
						</div>
						<br>
						<br>
							
				
				</div>
					<div>
						<button id="certified" class="button-size">계정 찾기</button>
					</div>
					
				</header>	
						
				
			</div>
		
		<!-- footer -->
          <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/footer.jsp"/>
            </div>
          </div> 

		<!-- Scripts -->
		<script> var context = '${pageContext.request.contextPath}'</script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>

			  <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/findIdPw.js"></script>

	</body>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
</html>