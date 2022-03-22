<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
        <link rel="stylesheet" href="fontello/css/fontello.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>
<style>
    @font-face {
		    font-family: 'GmarketSansMedium';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}

        @font-face {
            font-family: 'GmarketSansLight';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
#content {
	width: 400px;
    height:600px;
    margin: 0 0;
	position: relative;

	background: white;
}
div.kakao {
	width: 394px;
	height: 665px;
	border: 8px solid #fff;
	background:#e8f0f3;
	overflow: hidden;
	position: relative;
	left: 5px;
	top: -8px;
}

.friend-name{
    font-family: 'GmarketSansMedium';
}

h1 {
	font-size: 1.375rem;
    font-weight: bold;
    display: inline;
    position: relative;
    left: 20px;
    font-family:GmarketSansMedium;
}

.chat-status {
	flex-basis: 4.5rem;
    flex-shrink: 0;
    text-align: right;
    position: relative;
    right: 24px;
}

.profile-img {
	width: 3.125rem;
	position: relative;
	left: 6px;
    border-radius: 15px;
}

	.me {
		display: inline-block;
		background-image: url(../pic/me_balloon.png);
		background-repeat: no-repeat;
		background-size: contain;
		padding: 0.125rem;
		margin-right: 0.125rem;
		vertical-align: middle;
		font-size: 0.625rem;
		color:#ffb61a;
	}
	
	li .talk {
		margin-left: 0.9375rem;
    	flex-grow: 1;
    	position: relative;
    	left: 7px;
	}
	
	    .boldButton{
            font-size: 13px;
		    color: white;
		    background: pink;
		    height: 27px;
		    border: hidden;
		    margin-top: 11px;
		    border-radius: 8px;
		    width: 87px;
		    margin-right: 20px;
		    float: right;
		    font-family: 'GmarketSansMedium';
		    cursor: pointer;
		    line-height: inherit;
        }
        
         .boldButton:hover{
         	border: 1px solid #ffb61a;
         }
</style>

<body>

			<div id="content">
            <header style="background: #FFF7CA; top:0px;">
                <h1 style ="color:#ffb61a">채팅</h1>
                <a href = "${pageContext.request.contextPath}/app/chat/chatReview.jsp" style = "line-height:inherit;"><button class = "boldButton">후기 남기기</button></a>
                <i class="icon-down-dir"></i>
            </header>
            <!-- 메인: 채팅 리스트 화면 -->
            <main style = "padding-left: 10px;">
                <ul>
                    <li>
                        <a href="javascript:;" onclick="location.href='${pageContext.request.contextPath}/app/chat/chatNew.jsp'">
                            <img src="${pageContext.request.contextPath}/images/댓글프로필아이콘.jpg" class="profile-img" alt="기영이누나프로필사진">
                            <div class="talk">
                                <p class="friend-name">기영이누나</p>
                                <p class="chat-content">네 어머님~ 10:30분에 뵐게요~</p>
                            </div>
                            <div class="chat-status">
                                <time datetime="15:40:00+09:00">오후 3:40</time>
                                <span class="chat-balloon">1</sapn>
                            </div>
                        </a>
                    </li>
                    <li>
                         <a href="javascript:;" onclick="location.href='${pageContext.request.contextPath}/app/chat/chatNew.jsp'">
                            <img src="${pageContext.request.contextPath}/images/img1.jpeg" class="profile-img" alt="사토미프로필사진">
                            <div class="talk">
                                <p class="friend-name">사토미</p>
                                <p class="chat-content">하지메마시떼</p>
                            </div>
                            <div class="chat-status">
                                <time datetime="15:39:00+09:00">오후 3:39</time>
                                    <span class="chat-balloon">1</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" onclick="location.href='${pageContext.request.contextPath}/app/chat/chatNew.jsp'">
                            <img src="${pageContext.request.contextPath}/images/default.png" class="profile-img" alt="쀼프로필사진">
                            <div class="talk">
                                <p class="friend-name">김영희</p>
                                <p class="chat-content">저희 애가 좋아할 것 같네요 ^^</p>
                            </div>
                            <div class="chat-status">
                                <time datetime="10:15:00+09:00">오전 10:15</time>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" onclick="location.href='${pageContext.request.contextPath}/app/chat/chatNew.jsp'">
                            <img src="${pageContext.request.contextPath}/images/img2.jpg" class="profile-img" alt="쀼프로필사진">
                            <div class="talk">
                                <p class="friend-name">아이유</p>
                                <p class="chat-content">시터님 혹시 강아지 있는 집도 괜찮으신가요?</p>
                            </div>
                            <div class="chat-status">
                                <time datetime="10:15:00+09:00">오전 10:15</time>
                            </div>
                        </a>
                    </li>
                    <li>
                         <a href="javascript:;" onclick="location.href='${pageContext.request.contextPath}/app/chat/chatNew.jsp'">
                            <img src="${pageContext.request.contextPath}/images/friend1.png" class="profile-img" alt="친구1프로필사진">
                            <div class="talk">
                                <p class="friend-name">기철이 엄마</p>
                                <p class="chat-content">네 유치원 근무중입니다!</p>
                            </div>
                            <div class="chat-status">
                                <time datetime="2021-03-20">2021-03-20</time>
                                <span class="chat-balloon">1</span>
                            </div>
                        </a>
                    </li>
                </ul>
            </main>
        </div>

 
</body>

</html>