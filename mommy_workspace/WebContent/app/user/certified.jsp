<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/assets/css/certified.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/assets/css/findIdPw.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/assets/css/certified.css" rel="stylesheet" type="text/css">
		<link rel="icon" href="${pageContext.request.contextPath}/images/favicon3.ico" type="image/x-icon" sizes="16x16"/>
</head>

<body>
	 <c:set var="userId2" value="${userId2}"/>
	  <c:set var="userId" value="${userId}"/>
			          <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/header.jsp"/>
            </div>
         </div>
			
			
			<div id="main" class="container">
				<header class="major">
					<a href="${pageContext.request.contextPath}/user/UserMainOk.user"><h2 class="logo-location" style="position: relative; top: -60px;"><img alt="" src="${pageContext.request.contextPath}/images/로고1.png"></h2></a>
				
				<div class="first">
					<div>
						<p class="p-location" style="color: #626c6e; position: relative; top: -10px;">
							<strong>아이디나 비밀번호를 잊으셨나요?</strong><br>
							핸드폰 인증후 아이디와 비밀번호를 찾으실수 있습니다.
						</p>
						
							<div >	
								<p style="color : #ffb61a; font-weight: bold;">회원님의 아이디 </p>
								<p style="color : #ffb61a; font-weight: bold; display: block" class="hiddenid">${userId2}</p>
								<p style="color : #ffb61a; font-weight: bold; display: none" class="nohiddenid" >${userId}</p>
							</div>
								<hr>
							
								<div>
									<p class='error_text'> </p>
								</div>
							<div style=" width: 60%; text-align: center; margin: 0 auto; margin-top: 30px; " id="fisrt_warp" >
								<input id="input_number" type="text" placeholder="전화번호 11자리를 입력하세요"  maxlength='11'  class="number_one" >
								<button class=input_btn id="phone_ok">인증번호 전송</button>
							</div>
							<div><p id="idFaildText"></p></div>
							<div><p class='text_error'></p></div>
							<div style=" width: 60%; text-align: center; margin: 0 auto; margin-top: 5px; margin-left:472px; display:none;"id="second_warp">
								<span><input id="input_number2" type="text"placeholder="인증번호 6자리를 입력하세요" maxlength='6' class="number_two"  style="float: left;top: 0px !important; width: 33% !important" >
								<button  class=input_btn onclick="checkCode();" style="float: left">인증번호 확인</button></span>
							</div>
							<div id="success_find" style="display:none; margin-top: 70px">
								<button onclick="showid();" class=input_Click_btn >아이디 전체 확인</button><br>      <button  id="FEEID" class="input_Click_btn">비밀번호 찾기</button>
							
							</div>
							<div>
							</div>							
							
					</div>
				</div>
						

		<!-- footer -->
          <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/footer.jsp"/>
            </div>
          </div> 
</body>
<script>  var userId ='${userId}'  
</script>
<script> var context = '${pageContext.request.contextPath}'</script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/certified.js"></script>
</html>