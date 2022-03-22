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
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/second.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
      <noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/second.css" /></noscript>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/community.css" />
   </head>



   <body class="is-preload">

      
		<c:set var="communityList" value="${communityList}"/>
		<c:set var="page" value="${page}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="realEndPage" value="${realEndPage}"/>
		<c:set var="total" value="${total}"/>
      <!-- Header -->
          <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/header.jsp"/>
            </div>
         </div> 
         

      <!-- Wrapper -->
         <div id="wrapper">

<!-- Aside -->
  <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/aside.jsp"/>
            </div>
         </div> 
         
      
            <!-- title -->
            <div style = "position: relative;" class="media1">
               <img src = "${pageContext.request.contextPath}/images/커뮤니티.jpg" style = "width:100%;">
               <div class="media2">
                  <h2 class = "textOnImg">마미랑 커뮤니티</h2>
               </div>
            </div>
            <!-- Main -->
               <div id="main" style ="padding: 0;" >
                  
                  <!-- 카테고리 선택 / 글쓰기 버튼  -->
                  <div class="inner media4">
                     <div style="display:flex; justify-content: flex-end; margin-top: 50px; margin-bottom: -50px;" class="media5">
                       <!--  <select id ="select" name="" style = "width: 12%;" class="media3">
                           <option>전체</option>
                           <option>부모님</option>
                           <option>시터</option>
                        </select> -->
                        <div style="margin-right:0px" class="media6">
                         
                        <input  class="media7" type="button" style = "height: 45px; line-height: 1.2em; color:#ffb61a !important; box-shadow: inset 0 0 0 1px #ffb61a !important;" value="글쓰기" onclick="location.href='${pageContext.request.contextPath}/communtiy/CommunityInsert.com'"><br>
                     </div>
                  </div>
                  
                        
                     <section class="tiles">
                     	<!-- 사진이 있다면 경로 띄워주기 없다면 otherwise 로 emptyPic 띄워주기 -->
                     <c:choose>
						<c:when test="${communityList != null and fn:length(communityList) > 0}">
							<c:forEach var="community" items="${communityList}">
													<c:set var="content" value="${community.getCommunityContent()}"/>
							 <c:choose>
							<c:when test="${community.getCommunityCategory() eq 1}"> <article class="style1" style = "cursor:pointer;">
							<span class="image">
                              		<img src="${pageContext.request.contextPath}/images/pic01.jpg" alt=""/>
                           		</span>
                           			<a onclick="location.href ='${pageContext.request.contextPath}/community/CommunityDetailOk.com?communityNum=${community.getCommunityNum()}&page=${page}'">
                              		<h2 class = "myh2">${community.getCommunityTitle()}</h2>	  
                              		<div class="content">
                              		<!-- 15자 자른거 넣기 -->
                                 	<p >${fn:substring(content,0,15)}...</p>
                                 	<p>작성일: ${community.getBoardDate()}</p>
                              </div>
                           </a>
                        </article></c:when>
							<c:when test="${community.getCommunityCategory() eq 2}"> <article class="style2" style = "cursor:pointer;">
							<span class="image">
                              		<img src="${pageContext.request.contextPath}/images/pic01.jpg" alt="" />
                           		</span>
                           			<a onclick="location.href ='${pageContext.request.contextPath}/community/CommunityDetailOk.com?communityNum=${community.getCommunityNum()}&page=${page}'">
                              		<h2 class = "myh2">${community.getCommunityTitle()}</h2>	  
                              		<div class="content">
                                 	<p >${fn:substring(content,0,15)}...</p>
                                 	<p>작성일: ${community.getBoardDate()}</p>
                              </div>
                           </a>
                        </article></c:when>
							<c:when test="${community.getCommunityCategory() eq 3}"> <article class="style3" style = "cursor:pointer;">
							<span class="image">
                              		<img src="${pageContext.request.contextPath}/images/pic01.jpg" alt="" />
                           		</span>
                           			<a onclick="location.href ='${pageContext.request.contextPath}/community/CommunityDetailOk.com?communityNum=${community.getCommunityNum()}&page=${page}'">
                              		<h2 class = "myh2">${community.getCommunityTitle()}</h2>	  
                              		<div class="content">
                                 	<p >${fn:substring(content,0,15)}...</p>
                                 	<p>작성일: ${community.getBoardDate()}</p>
                              </div>
                           </a>
                           
                  
                        </article></c:when>
                         </c:choose>
                           		
														
							</c:forEach>
							
							 
						</c:when>
						<c:otherwise>
							<div style = "text-align: center; width: 100%; padding: 134px">
							  <h2 style = "font-family: 'GmarketSansMedium';">등록된 게시물이 없습니다</h2>	
							 </div>
						</c:otherwise>
					</c:choose>
                   
                        
                     <br>
                     <br>
                     <br><br>
                        
                  <!-- 페이징 처리 -->
                  <br><br><br><br>   
                  <!-- 
                  <table style="text-align:center;">
                     <br><br><br>
                     <tr align="center" valign="middle">
                        <td >1 2 3 4 5 6 7 8 9 10 > </td>
                     </tr>   
                  </table>
                  -->
                  
                  <table style="font-size:1.3rem; margin-top:50px;margin-bottom: 81px; margin-left: 50px;">
											<tr align="center" valign="middle">
												<td class="mobile-view">
													<c:if test="${page > 1}">
														<a href="${pageContext.request.contextPath}/community/CommunityListOk.com?page=${page - 1}">&lt;</a>
													</c:if>
												
													<c:out value="${page}"/>&nbsp;&nbsp;
													
													<c:if test="${page < realEndPage}">
														<a href="${pageContext.request.contextPath}/community/CommunityListOk.com?page=${page + 1}">&gt;</a>
													</c:if>
												</td>
												<td class="web-view">
													<c:if test="${startPage > 1}">
														<a href="${pageContext.request.contextPath}/community/CommunityListOk.com?page=${startPage - 1}">&lt;</a>
													</c:if>
												
													<c:forEach var="i" begin="${startPage}" end="${endPage}">
														<c:choose>
															<c:when test="${i eq page}">
																<c:out value="${i}"/>&nbsp;&nbsp;
															</c:when>
															<c:otherwise>
																<a href="${pageContext.request.contextPath}/community/CommunityListOk.com?page=${i}"><c:out value="${i}"/></a>&nbsp;&nbsp;
															</c:otherwise>
														</c:choose>
													</c:forEach>
													
													<c:if test="${endPage < realEndPage}">
														<a href="${pageContext.request.contextPath}/community/CommunityListOk.com?page=${endPage + 1}">&gt;</a>
													</c:if>
												</td>
											</tr>
										</table>
               </section>   
            </div>
                  
            <!-- 게시글 검색 -->
                    <!--  <form name="#" action="#">
                        <p>
                           <div id="a">
                              <div id="b">
                                 <select id ="select" name="">
                                    <option>제목</option>
                                    <option>내용</option>
                                    <option>글쓴이</option>
                                 </select>&nbsp;
                              </div>
                              <div id="c">
                                 <input type="text" class="media8" name="keyword" id="keyword" value="" style="width: 500px;" placeholder="검색어를 입력하세요" />&nbsp;
                              </div>
                              <div id="d">
                                 <input type="button" value="검색" style = "height: 52px; line-height: 1.2em; "class="media9">
                              </div>
                              <br>
                           </div>
                        </p>
                     </form> -->
                  
            </div>
         </div>
         
      <!--footer-->
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/footer.jsp"/>
            </div>
          </div>

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



	

   </body>
</html>