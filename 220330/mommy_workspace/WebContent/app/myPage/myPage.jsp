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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/myPage.css" type="text/css"/>
        <link rel="icon" href="${pageContext.request.contextPath}/images/favicon3.ico" type="image/x-icon" sizes="16x16"/>
      </head>
 
	
	<body class="is-preload">
	<c:set var="user" value="${user}"/>
	<c:set var="userAge" value="${userAge}"/>
	<c:set var="fileName" value="${fileName}"/>
	<c:set var="profileList" value="profileList"/>
	<c:set var="checkChat" value="${checkChat}"/>
	<c:set var="profileStatus" value="${profileStatus}"/>
	
<!-- Header -->
  <jsp:include page="/app/fix/header.jsp" flush="true"/>
		
		
		<!-- Main -->
		<div id="main" class="container medium">
				<header class="major" style = "margin: 0 !important; display:flex;">
					<h2 class = "notice" style = "font-size: 1.35em; line-height: 1.5em; display:flex">마이페이지</h2>
						<c:choose>
							<c:when test="${checkChat eq 0}">
								<img id = "chatGray" src = "https://cdn.discordapp.com/attachments/954273372760571914/956603481786056774/d336679aaf436c35.png">                            
							</c:when>
							<c:otherwise>
								<img id = "chat" src = "https://cdn.discordapp.com/attachments/954273372760571914/956603481786056774/d336679aaf436c35.png"> 
								<p id = "newMSG" style = "font-size: 11px; color: tomato; margin-left: 5px;margin-top: 0px;">새로운 알림이 있습니다!</p> 
							</c:otherwise>
						</c:choose>
				</header>
                <hr style = "margin: 10px 0 0 0 !important; border-bottom: solid 1.7px #b7b7b7;">
	<!-- Content -->
          <div style = "display: flex;">
            <!--프로필 수정-->
            <div style="width:38%; font-size:16px; padding:40px 0;" class="media-main">
                    <div id = "profile" style = "position: relative; margin-left:20px;">
                       
 <!-- =====================================프로파일 테이블 정리 및 기능 구현이 될 후의 처리 ==============================  -->
 				<div style="width:100px; height:100px;">
 				 <c:choose>
                    	<c:when test="${empty fileName}">
                        <img src="https://cdn.discordapp.com/attachments/954273372760571914/955479398054772796/unknown.png" style="width: 100%; border-radius: 150px; ">
                    	</c:when>
                    	<c:otherwise>
                        <img src="/profileData/${fileName}" style="width: 100%; border-radius: 150px;">
                    	</c:otherwise>
                    </c:choose>
                  </div>
                       
                        <div style = "position:absolute; top: 0px; left: 120px;">
                            <span style = "font-size: 14px; font-weight: 500;">
                             <c:choose>
                                    	<c:when test="${user.getUserStatus() == 2}">
                                    		<button class = "boldButtonGray">시터</button>
                                    	</c:when>
                                    	<c:when test="${user.getUserStatus() == 1}">
                                    		<button class = "boldButtonGray">부모님</button>
                                    	</c:when>
                                    	<c:otherwise>정보없음</c:otherwise>
                            </c:choose> 
                            </span>
                            <h3 style="margin-bottom: 3px; font-size: 22px;">${user.getUserName()}</h3>          
                                    <span style = "margin-top: 20px; font-size:16px; margin-left:5px;"> 
                                    ${userAge}세, 
                                    <c:choose>
                                    	<c:when test="${user.getUserGender() == 1}">남</c:when>
                                    	<c:when test="${user.getUserGender() == 2}">여</c:when>
                                    	<c:otherwise>정보없음</c:otherwise>
                                    </c:choose> 
                                    </span>
                        </div>
                        
                    </div>
                    <hr class ="sp">
                
            
                    <!-- 하단 메뉴 -->
            
                    <div>
                        <!--
                     
                        <button class = "boldButtonYel">프로필 등록</button>
                                                        <button class = "boldButtonBlu" >구직중</button>
                                                        <button class = "boldButtonRed">심사중</button><
                 
                         -->
                 
                        <div class = "innerContent">
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                            <c:choose>
                            	<c:when test="${profileStatus eq 0}">
                            		 <button class = "boldButtonYel">프로필 등록</button>
                            	</c:when>
                            	<c:when test="${profileStatus eq 2}">
                            		 <button class = "boldButtonYel">인증 대기중</button>
                            		 <!-- 부모일 때 2 / 시터일 때 1 인증 대기중 안뜸 -->
                            	</c:when>
                            </c:choose>
                            <a href = "${pageContext.request.contextPath}/service/Jobhunting.ser"><p class ="innerTitle">내 구인/구직 글</p></a>
                        </div>
                       

                        <div class = "innerContent">
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                            <p class ="innerTitle" id = "bookMark">찜한 게시글</p>
                        </div>
                        <hr class = "split">
                        <div class = "innerContent">
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                           <p class ="innerTitle" id = "information">회원 정보 수정</p>
                        </div>
                        <div class = "innerContent">
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                           <p class ="innerTitle" id = "changePw">비밀번호 변경</p>
                        </div>
                        <div class = "innerContent">
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                            <a href="${pageContext.request.contextPath}/ask/AskList.ask"><p class ="innerTitle">내 문의내역</p></a>
                        </div>

 <%--                        <div class = "innerContent">
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                            <a href="${pageContext.request.contextPath}/app/community/community2.jsp"><p class ="innerTitle">내 커뮤니티 글</p></a>
                        </div> --%>

                        <div class = "innerContent">
                            <!--모달 연결 필요-->
                            <img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg" style="float:right;margin-top: 5px;">
                            <a href="#"><p class ="openBtn">탈퇴하기</p></a> 
                        </div>
                    </div>
                </div>

                <!-- 모달 --> 

                <div class="modal hidden">
                    <div class="bg"></div>
                    <div class="modalBox">
                        <h3 class = "modalText">정말 마미랑을 떠나실 건가요?</h3>
                        <p class = "modalSubText">탈퇴한 아이디는 복구가 불가능하며,<br> 사용자의 정보는 삭제됩니다. </p>
                        <div>
		                    <div style = "margin: 0 auto; text-align: center;">
		                        <button class="submitBtn">다시 생각해 볼게요</button>
                                <a class = "quit" onclick="deleteUser()">탈퇴하기</a>
		                    </div>
	                    </div>
                    </div>
                </div>
                        

	<!-- 받은 요청 보기 아이프레임 -->

   			<div id="divToggle" style = "display:none;">
	   			<iframe id = "iframe" src = "${pageContext.request.contextPath}/chat/ChatListOk.chat" width= "400px !important" height="600px !important"></iframe>
        	</div>

                <!-- -------------------------------------------------------------- -->
				<div id = "informatiom" class = "mainBox">
				
				
			
                      
               
 
 
 
 
 

                    






                
                </div> <!-- 박스 안에서 나옴 -->
             
 
 
            </div>
        </div>
				

               
               
		
		
		<!-- Aside -->
       
		  <jsp:include page="../fix/aside.jsp" flush="true"/>
		  
		<!-- footer -->
		  <jsp:include page="../fix/footer.jsp" flush="true"/>
         
			<script>
				var contextPath = '${pageContext.request.contextPath}';

			</script>

		<!-- Scripts -->
			<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/myPage.js"></script> 
	</body>

  
  
</html>