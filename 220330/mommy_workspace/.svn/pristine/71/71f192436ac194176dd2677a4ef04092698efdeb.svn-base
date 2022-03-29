<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--
	Exponent by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->      
<html>
	<head>
		<title>로그인 페이지</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" >
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/assets/css/login.css" rel="stylesheet" >
		<link rel="icon" href="${pageContext.request.contextPath}/images/favicon3.ico" type="image/x-icon" sizes="16x16"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/etcMain.css" />
	</head>
	
	<body>
		<%
		String cookieCheck = request.getHeader("Cookie");
		String memberId = "", memberPw = "", saveId = "", autoLogin = "";
		if(cookieCheck != null){
			Cookie[] cookies = request.getCookies();
			for(Cookie cookie : cookies){
				//쿠키에 이전 로그인 아이디가 있는 지 검사
				if(cookie.getName().equals("memberId")){
					//이전 로그인 아이디를 memberId에 저장
					memberId = cookie.getValue();
				}
				//쿠키에 이전 로그인 비밀번호가 있는 지 검사
				if(cookie.getName().equals("memberPw")){
					//memberPw에 저장
					memberPw = cookie.getValue();
				}
				//쿠키에 아이디 저장이 체크되어 있는 지 검사
				if(cookie.getName().equals("saveId")){
					//아이디 저장 상태를 saveId에 저장
					saveId = cookie.getValue();
				}
				//쿠키에 자동 로그인이 체크되어 있는 지 검사
				if(cookie.getName().equals("autoLogin")){
					//자동 로그인 상태를 autoLogin에 저장
					autoLogin = cookie.getValue();
				}
			}
		}
	%>
	<!-- JS에서 사용하고자 하는 변수들 --> 
	<input type="hidden" name="checkPw" value="<%=memberPw%>">
	<input type="hidden" name="checkSaveId" value="<%=saveId %>">
	<input type="hidden" name="checkAutoLogin" value="<%=autoLogin %>">
	
	
	
	
<%-- 	<c:if test="${not empty param.code}">
         <script>
            alert("아이디 또는 비밀번호를 다시 확인해주세요.");
         </script>
    </c:if>
 --%>
 
		<!-- Header -->
          <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/header.jsp"/>
            </div>
         </div> 
		
		
		
            
      <!-- Main -->
      <form name="loginForm" method="post" action="${pageContext.request.contextPath }/user/UserLoginOk.user">
         <div id="main" class="container">
            <header class="major">
            	<h2><img alt="" src="${pageContext.request.contextPath}/images/로고1.png"></h2>
            </header>
            <div class="col-3">
               <div class="col-1">
                  <div class="col-6 col-12-xsmall">
                     <input type="text" name="userId" id="userId" placeholder="이메일 또는 아이디"  value="<%=memberId%>"/>
                  </div>
                  <div class="col-6 col-12-xsmall">
                     <input type="password" name="userPw" id="userPw" placeholder="비밀번호" name="memberPw" value="<%=memberPw%>"/>
                  </div>
                  <div class="col-2">
                      <input type="checkbox" id="contactChoice1" name="saveId" value="email">
                         <label class ="label-position" for="contactChoice1">아이디 저장</label>
                     <input type="checkbox" id="contactChoice2" name="autoLogin" value="phone">
                         <label class ="label-position" for="contactChoice2">자동 로그인</label>
                    </div>
                   <p id="fail_phrases" style="margin: 0 !important; text-align: center !important;
                   		color: red !important;">탈퇴한 아이디입니다.</p>
                  <div>
                     <button class="button-size01" onclick="send()">로그인</button>
                  </div>   
                  <div style="display: flex; justify-content: space-evenly;">
                     <a href="${pageContext.request.contextPath}/user/findIdPw.user" class="button small">아이디 혹은 비밀번호를 잊으셨나요 ?</a>
                  </div>         
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
<script>var contextPath = "${pageContext.request.contextPath }"</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/login.js"></script>
</body>
</html>