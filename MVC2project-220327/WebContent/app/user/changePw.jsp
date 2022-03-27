<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<title>비밀번호 재설정</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" >
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/assets/css/changePw.css" rel="stylesheet" >
	</head>
	
	<body>
 <c:set var="userId" value="${userId}"/>
		<!-- Header -->
          <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/header.jsp"/>
            </div>
         </div>
		 
		
		
		<!-- Main -->
			<div id="main" class="container">
				<header class="major">
					<a class="logo-location" href="${pageContext.request.contextPath}/app/etc/main.jsp"><h2 style="position: relative; top: -60px;"><img alt="" src="${pageContext.request.contextPath}/images/로고1.png"></h2></a>
				
				<div class="first">
					<div>
						<p class="p-location" style="color: #626c6e; position: relative; top: -10px;">
							<strong>새로운 비밀번호를 입력해주세요.</strong><br>
							안전한 사용을 위하여, 기존 비밀번호를 변경해야 합니다. <br>
							아래에 새 비밀번호를 입력해 주세요.
						</p><br>
					</div>
				</div>
				<div  class="mainbox">
					<div class="font-position">
						<div>
							<p class="p-font-color" id="list3">새 비밀번호</p>
						</div>
						<div>
							<input type="password" class="input-font" style="width: 95%;"placeholder="새 비밀번호를 입력해주세요" id="user_new_pw">
						</div>
							<br>
						<div class="input-location">
							<p class="p-font-color" id="list4">새 비밀번호 확인 </p>
						</div>
						<div >
							<input type="password" class="input-font" style="width: 95%;" placeholder="새 비밀번호를 다시 입력해주세요" id="user_new_pwre">
						</div>
							<br>
						
					</div>
					<div>
						<button class="button-size" >변경 완료</button>
					</div>
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
			<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/changePw.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

	</body>
</html>