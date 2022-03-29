<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="utf-=8">
        <title>KaKao Talk Chat Main</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE-edge">
        <meta name="description" content="Kakao Talk Clone Chat Main Page">
        <meta name="keywords" content="KakaoTalk, Clone, Chat">
        <meta name="robotos" content="noindex, nofollow">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main-layout.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/chatting.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/general.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/chatLog.css">
        <link rel="stylesheet" href="fontello/css/fontello.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>

<body>
	<c:set var = "chatList" value ="${chatList}"/>
	<c:set var = "totalCount" value ="${totalCount}"/>
	
			<div id="content">
            <div style="background: #FFF7CA; height:50px; top:0px; padding:11px;">
                <h1 style ="color:#ffb61a;">내가 받은 요청</h1>
                <i class="icon-down-dir"></i>
                 <c:choose>
                  	<c:when test = "${chatList != null and fn:length(chatList) > 0}">
		                <span class="chat-balloon2" id = "all">전체 읽음</span>
		            </c:when>
		            <c:otherwise>
		            	 <span class="chat-balloon3" id = "all">전체 읽음</span>
		            </c:otherwise>
                </c:choose>
            </div>
            <!-- 메인: 채팅 리스트 화면 -->
            <main style = "padding-left: 10px;">
                <ul>
               		 <li style = "background: #FFEBEB;margin-left: -12px;padding-left: 10px; margin-top: -18px;">
	                      <a class = "openBtn" id = "guide">
	                       		  <img src="${pageContext.request.contextPath}/images/default.png" class="profile-img" alt="쀼프로필사진">
	                       					 <div class="talk">
				                                <p class="friend-name">이름 (카카오톡 아이디)</p>
				                                <p class="chat-content">한 줄 소개</p>
				                            </div>
				                            <div class="chat-status">
				                                <time datetime="10:15:00+09:00">요청을 보낸 날짜</time>
				                            </div>
	                     </a>
                     </li>
                       			
                       <c:choose>
                       		<c:when test = "${chatList != null and fn:length(chatList) > 0}">
                       			<c:forEach var = "chat" items="${chatList}">
                       				<li class = "chatBox" id = "${chat.getChatNum()}"> <!--  onclick="updateNew(${chat.getChatNum()})">    -->
	                       				<a class = "openBtn">
	                       				<c:choose>
								<c:when test="${empty chat.getProfilePicture()}">
									<img src="https://cdn.discordapp.com/attachments/954273372760571914/957656539785724005/unknown.png" class="profile-img" alt=""/>
								</c:when>
								<c:otherwise>
									<img src="/profileData/${chat.getProfilePicture()}" class="profile-img" style = "height:50px;">
								</c:otherwise>
							</c:choose>
	                       					 <div class="talk">
				                                <p class="friend-name">${chat.getChatTitle()}</p>
				                                <p class="chat-content">${chat.getChatContent()}</p>
				                            </div>
				                            <div class="chat-status">
				                                <time datetime="10:15:00+09:00">${chat.getChatDate()}</time>
				                                <c:choose>
				                                	<c:when test = "${chat.getChatStatus() eq 0}">
				                                		<span class="chat-balloon" id = "${chat.getChatNum()}">N</span>
				                                		<span style = "color:white; font-size:0px;">${chat.getChatNum()}</span>
				                                	</c:when>
				                                </c:choose>				               
				                            </div>
	                       				</a>
                       				</li>
                       			</c:forEach>
                       		</c:when>
                       		<c:otherwise>
	                       			<div style = "text-align:center; padding-top:200px;">
					                     <p class="friend-name">받은 요청이 없습니다.</p>
					           		</div>
                       		</c:otherwise>
                       </c:choose>  
                </ul>
            </main>
        </div>

 
         <!--     모달창 
       			<div class="modal hidden">
				  <div class="bg"></div>
				  <div class="modalBox">
				    <h2 class = "friend-name" style = "font-size:24px;">후기를 남겨주세요</h2>

                    <div class = "connected">
                       <h4 class = "reviewTitle">채용 여부</h4>
                        <div style = "float: left; margin-right:30px;">
                            <input type="radio" id="O" name="drone" value="O"
                                checked>
                            <label for="O">O</label>
                        </div>
                        
                        <div>
                            <input type="radio" id="X" name="drone" value="X">
                            <label for="X">X</label>
                        </div>
                    </div>
                    <div class ="reviewText">
                        <h4 class = "reviewTitle">후기 쓰기</h4>
                       
                       <div>
                            <textarea class = "reviewTxt" placeholder="후기를 작성해주세요"></textarea>
                       </div>

                    </div>
                    <br>
	                    <div style ="display:flex">
		                    <div style = "margin: 0 auto; text-align: center;">
		                        <button class="submitBtn">완료</button>
		                    </div>
	                    </div>
                    </div>
				</div> -->
</body>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/chatReview.js"></script>
	<script>
	var contextPath = "${pageContext.request.contextPath}";
	var userNum = '${userNum}';
	</script>
</html>