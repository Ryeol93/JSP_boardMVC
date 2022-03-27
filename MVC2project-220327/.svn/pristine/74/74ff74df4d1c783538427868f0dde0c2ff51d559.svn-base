<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>
<!--
	Phantom by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>커뮤니티</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/communityDetails.css" />
	
	</head>


	<body class="is-preload">		
		<c:set var="community" value="${community}"/>
		<c:set var="files" value="${files}"/>
   		<c:set var="page" value="${page}"/>
   		<c:set var="communityNum" value="${communityNum}"/>
			<!-- Aside -->
  <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/aside.jsp" flush="true"/>
            </div>
         </div> 
			
         
		<!-- Header -->
			 <div class="wrapper">
				<div class="inner">
					<jsp:include page="/app/fix/header.jsp"/>
				</div>
			</div> 
			

		<!-- Wrapper -->
			<div id="wrapper">

		
				<!-- title -->
				<div style = "position: relative;" class="media1">
					<img src = "https://cdn.discordapp.com/attachments/954273372760571914/955483620322193449/c7c7797c2962c5a2.jpg" style = "width:100%;">
					<div>
						<h2 class = "textOnImg media8">마미랑 커뮤니티</h2>
					</div>
				</div>
				<!-- Main -->
					<div style = "background:#f6f6f6; margin-top:-10px;" class="media2">
                        
                        <div id="main" class="container media3" style = "background-color: white; width:60%;">
                            <div class = "close" style="margin-right: 35px; margin-top:-80px; margin-bottom: 60px;">
                                <a onclick="location.href = '${pageContext.request.contextPath}/community/CommunityListOk.com'" style = "border-bottom: hidden;"><img src = "https://cdn.discordapp.com/attachments/954273372760571914/955485841952747620/closeButton.png" class="close"></a>
                           </div>


                            <div style ="padding-left: 6em; padding-right: 6em;" class="media4">
								<c:choose>
									<c:when test ="${community.getCommunityCategory() eq 3}">
										 <a class = gray>부모님</a><br><br>
									</c:when>
									<c:when test ="${community.getCommunityCategory() eq 2}">
										 <a class = gray>전체</a><br><br>
									</c:when>
									<c:when test ="${community.getCommunityCategory() eq 1}">
										 <a class = gray>시터</a><br><br>
									</c:when>
								</c:choose>
                               
                                <h2 style = "font-family: 'GmarketSansMedium'; color:black">${community.getCommunityTitle()}</h2>
                               
                                <!--작성자, 시간, 수정 삭제-->
                                <div style ="padding-top:15px; " class="media5">
                                    <img class="profile" src="https://cdn.discordapp.com/attachments/954273372760571914/955485997880209468/d3a7d5b9f5ad22d2.jpg" style = "float:left;">
                                    <!-- 프로필 이미지 아직 연결 안됐습니다. -->
                                        <p>&nbsp;<span id = "nickname" class="media6">${community.getUserId()}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class ="gray">${community.getBoardDate()}</span>
                                                   <c:if test="${userNum eq community.getUserNum()}">
                                            <a class = "gray " style ="float:right; margin-left:12px; cursor:pointer;" onclick="location.href='${pageContext.request.contextPath}/community/CommunityDeleteOk.com?communityNum=${communityNum}'">삭제</a>
                                            <a class = "gray" style ="float:right; cursor:pointer;" onclick="location.href='${pageContext.request.contextPath}/community/CommunityUpdate.com?communityNum=${community.getCommunityNum()}&page=${page}'">수정</a>
                                        			</c:if>
                                        </p> 
                                        <hr>
                                        <!-- 텍스트 -->
                                        <div id ="innerText" class="media7">
                                            <p>${community.getCommunityContent()}</p>
                                            
                                           <!-- <img src="${pageContext.request.contextPath}/images/pic01.jpg" alt=""  width="100%" height="100%" style="margin-top:30px; margin-bottom: 30px;"/>
                                            --> 
                                            <br>
                                           
                                            <!-- 텍스트 끝 -->
                                            <br>
                                        </div>
                                        
                                        <hr>
                                    </div>
                                   
                                  	
				
				<!-- 댓글 ㅣ 댓글 작성 했을 때 자동으로 열리게 구현 -->
				  <!-- 댓글 글쓰기 -->
                                    <div style = "margin-top:30px;">
                                        <form method="post" action="#" class="combined" style="width:auto;">	                        
                                            <textarea name="content" id="content" class = "commentBox" placeholder="커뮤니티가 더 훈훈해지는 댓글 부탁드립니다." class="invert" rows="5"></textarea>
                                            <input type="button" value="등록하기" class = "submitButton" id = "register" onclick="regist()"/>
                                        </form>
                                       
                                    </div>
				<div id="replyBackground" style = "margin: 80px 0 30px 0 !important;"> 
                     <img src = "https://cdn.discordapp.com/attachments/954273372760571914/955486181406154772/comment.png" class = "commentImg">
                                
                           
                            <span id="toc-toggle" onclick="openCloseToc()">댓글 보기</span>
                              <ol id="toc-content">
                           
                                    <!-- 펼치기 내용 -->
                                    <div id="comments" style = "padding-top: 40px;">
                                        <div class="replyPart">
                                        <form action="#" id="replies" class="combined" style="flex-direction:column; margin:0; display:contents;">
                        				</form>
                        				
                        			  <!-- 예시 부분 
                                            <div class="rep">
                                                <img class="profileComment" src="${pageContext.request.contextPath}/images/댓글프로필아이콘.jpg" style = "float:left;">
                                                <div class="rep_a"><p class = "nickname">&nbsp;<strong id = "username">기영누나</strong>  
                                                <a class = "commentGray" style ="float:right; margin-left:12px;">삭제</a>
                                                    <a class = "commentGray" style ="float:right;">수정</a></p></div>
                                                <p class = "comment">우와 너무 귀여워요~</p>
                                                <p class = "commentDate">2022/03/04</p>
                                           </div>
                                         
                                           <hr class = "splitComment">
                                          
                                            <div class="rep">
                                                 <img class="profileComment" src="${pageContext.request.contextPath}/images/프로필아이콘.jpg" style = "float:left;">
                                                 <div class="rep_a"><p class = "nickname">&nbsp;<strong id = "username">최고심</strong>  <a class = "commentGray" style ="float:right; margin-left:12px;">삭제</a>
                                                    <a class = "commentGray" style ="float:right;">수정</a></p></div>
                                                 <p class = "comment">울와기 오구오구</p>
                                                 <p class = "commentDate">2022/03/04</p>
                                             </div>
                                             -->
                                        </div>
                                    </div>
                                </ol>
                            

                              
                                    <br>
                            </div>
                                        
                                </div>
                            </div>
                         

                        </div>
                        


                    </div>
		</div>
		 <!--footer-->
			  <jsp:include page="../fix/footer.jsp" flush="true"/>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min2.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min2.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min2.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util2.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main2.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/communityDetails.js"></script>
			<script>
				var contextPath = "${pageContext.request.contextPath}";
	         	var communityNum = "${community.getCommunityNum()}";
	         	var userNum = "${userNum}";
			</script>
			<script src="${pageContext.request.contextPath}/assets/js/comment.js"></script>
			
			
			 
	</body>
</html>