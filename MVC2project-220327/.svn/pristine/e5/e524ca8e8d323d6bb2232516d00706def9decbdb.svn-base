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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/fontello/css/fontello.css">
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
	overflow: hidden;
	background: white;
}
div.kakao {
	width: 400px;
	height: 600px;
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
		    color: #ffb61a;
		    background: #FFF7CA;
		    height: 27px;
		    border: hidden !important;
		    margin-top: 11px;
		    border-radius: 8px;
		    width: 60px;
		    margin-right: 20px;
		    float: right;
		    font-family: 'GmarketSansMedium';
		    cursor: pointer;
		    line-height: inherit;
        }
        
         .boldButton:hover{
         	border: 1px solid #ffb61a;
         }
         
        button.submitBtn {
          background-color: #F9B514;
          padding: 5px 10px;
          border-radius: 4px;
          border:hidden;
          cursor: pointer;font-family: 'GmarketSansMedium';
        }

        .modal {
          position: fixed;
          top: 0;
          left: 0;
          width: 399px;
          height: 599px;
          display: flex;
          justify-content: center;
          align-items: center;
          overflow:hidden;
        }

        .modal .bg {
          width: 100%;
          height: 100%;
          background-color: rgba(0, 0, 0, 0.6);
        }

        .modalBox {
          position: absolute;
          background-color: #fff;
          width: 300px;
          height: 420px;
          padding: 15px;
          border-radius: 6px;
        }

        .modalBox button {
          display: block;
          width: 80px;
          margin: 0 auto;
        }

        .hidden {
          display: none;
        }
        
        
	.reviewTxt{
	    width:95%;
	    resize:none;
	    font-family: 'GmarketSansLight';
	    padding:8px;
	    height:60px;
	}
        
         /* 별점 */
        .starpoint_wrap{display:inline-block;}
.starpoint_box{position:relative;background:url(https://hsecode.github.io/images_codepen/codepen_sp_star.png) 0 0 no-repeat;font-size:0;}
.starpoint_box .starpoint_bg{display:block;position:absolute;top:0;left:0;height:18px;background:url(https://hsecode.github.io/images_codepen/codepen_sp_star.png) 0 -20px no-repeat;pointer-events:none;}
.starpoint_box .label_star{display:inline-block;width:10px;height:18px;box-sizing:border-box;}
.starpoint_box .star_radio{opacity:0;width:0;height:0;position:absolute;}
.starpoint_box .star_radio:nth-of-type(1):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(1):checked ~ .starpoint_bg{width:10%;}
.starpoint_box .star_radio:nth-of-type(2):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(2):checked ~ .starpoint_bg{width:20%;}
.starpoint_box .star_radio:nth-of-type(3):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(3):checked ~ .starpoint_bg{width:30%;}
.starpoint_box .star_radio:nth-of-type(4):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(4):checked ~ .starpoint_bg{width:40%;}
.starpoint_box .star_radio:nth-of-type(5):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(5):checked ~ .starpoint_bg{width:50%;}
.starpoint_box .star_radio:nth-of-type(6):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(6):checked ~ .starpoint_bg{width:60%;}
.starpoint_box .star_radio:nth-of-type(7):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(7):checked ~ .starpoint_bg{width:70%;}
.starpoint_box .star_radio:nth-of-type(8):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(8):checked ~ .starpoint_bg{width:80%;}
.starpoint_box .star_radio:nth-of-type(9):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(9):checked ~ .starpoint_bg{width:90%;}
.starpoint_box .star_radio:nth-of-type(10):hover ~ .starpoint_bg,
.starpoint_box .star_radio:nth-of-type(10):checked ~ .starpoint_bg{width:100%;}

.blind{position:absolute;clip:rect(0 0 0 0);margin:-1px;width:1px;height: 1px;overflow:hidden;}
        
        .reviewTitle{
    font-family: 'GmarketSansMedium';
    margin-top:24px;
    margin-bottom:10px;
}
</style>

<body>

		<body>

			<div id="content">
            <header style="background: pink; top:0px;">
                <h1 style ="color:white">리뷰</h1>
                <a href = "${pageContext.request.contextPath}/app/chat/chatLog.jsp" style = "line-height:inherit;"><button class = "boldButton">채팅</button></a>
                <i class="icon-down-dir"></i>
            </header>
            <!-- 메인: 채팅 리스트 화면 -->
            <main style = "padding-left: 10px;">
     

                <ul>
                    <li>
                        <a href="javascript:;" class = "openBtn" id="user1">
                            <img src="${pageContext.request.contextPath}/images/댓글프로필아이콘.jpg" class="profile-img" alt="기영이누나프로필사진">
                            <div class="talk">
                                <p class="friend-name">기영이누나</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class = "openBtn" id="user2">
                            <img src="${pageContext.request.contextPath}/images/img1.jpeg" class="profile-img" alt="사토미프로필사진">
                            <div class="talk">
                                <p class="friend-name">사토미</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class = "openBtn" id="user3">
                            <img src="${pageContext.request.contextPath}/images/default.png" class="profile-img" alt="쀼프로필사진">
                            <div class="talk">
                                <p class="friend-name">김영희</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class = "openBtn" id="user4">
                            <img src="${pageContext.request.contextPath}/images/img2.jpg" class="profile-img" alt="쀼프로필사진">
                            <div class="talk">
                                <p class="friend-name">아이유</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class = "openBtn" id="user5">
                            <img src="${pageContext.request.contextPath}/images/friend1.png" class="profile-img" alt="친구1프로필사진">
                            <div class="talk">
                                <p class="friend-name">기철이 엄마</p>
                            </div>
                        </a>
                    </li>
                </ul>
                
                <!--  모달창 -->
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

                <div class = "starWrap">
                    <h4 class = "reviewTitle">별점</h4>
                    <div class="starpoint_wrap">
                        <div class="starpoint_box">
                          <label for="starpoint_1" class="label_star" title="0.5"><span class="blind">0.5점</span></label>
                          <label for="starpoint_2" class="label_star" title="1"><span class="blind">1점</span></label>
                          <label for="starpoint_3" class="label_star" title="1.5"><span class="blind">1.5점</span></label>
                          <label for="starpoint_4" class="label_star" title="2"><span class="blind">2점</span></label>
                          <label for="starpoint_5" class="label_star" title="2.5"><span class="blind">2.5점</span></label>
                          <label for="starpoint_6" class="label_star" title="3"><span class="blind">3점</span></label>
                          <label for="starpoint_7" class="label_star" title="3.5"><span class="blind">3.5점</span></label>
                          <label for="starpoint_8" class="label_star" title="4"><span class="blind">4점</span></label>
                          <label for="starpoint_9" class="label_star" title="4.5"><span class="blind">4.5점</span></label>
                          <label for="starpoint_10" class="label_star" title="5"><span class="blind">5점</span></label>
                          <input type="radio" name="starpoint" id="starpoint_1" class="star_radio">
                          <input type="radio" name="starpoint" id="starpoint_2" class="star_radio">
                          <input type="radio" name="starpoint" id="starpoint_3" class="star_radio">
                          <input type="radio" name="starpoint" id="starpoint_4" class="star_radio">
                          <input type="radio" name="starpoint" id="starpoint_5" class="star_radio">
                          <input type="radio" name="starpoint" id="starpoint_6" class="star_radio">
                          <input type="radio" name="starpoint" id="starpoint_7" class="star_radio">
                          <input type="radio" name="starpoint" id="starpoint_8" class="star_radio">
                          <input type="radio" name="starpoint" id="starpoint_9" class="star_radio">
                          <input type="radio" name="starpoint" id="starpoint_10" class="star_radio">
                          <span class="starpoint_bg"></span>
                        </div>
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
				</div>
            </main>
        </div>
</body>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/chatReview.js"></script>


</html>