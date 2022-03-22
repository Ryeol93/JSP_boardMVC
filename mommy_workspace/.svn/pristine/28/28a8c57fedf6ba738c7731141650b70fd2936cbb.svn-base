<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>
<!--
   Exponent by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<html>
   <head>
      <title>관리자 페이지</title>
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" >
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css"  type="text/css"/>
   </head>
   <body class="is-preload" style="display:block; padding-top: 0; overflow-y: hidden">
		<c:set var="noticeList" value="${noticeList}"/>

		<c:set var="page" value="${page}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="realEndPage" value="${realEndPage}"/>
		<c:set var="total" value="${total}"/>


      <!-- Main -->
         <div id="main" class="container">
               <!-- 배너 -->
         <div class="mainBox" style="padding-top: 3.5em;">
         	<a href="${pageContext.request.contextPath}/app/admin/admin.jsp"><img src="${pageContext.request.contextPath}/images/로고1.png" style="width: 9%; position: absolute; margin: -50px 0px 0 26px;"></a>
            <h3 class="caption" style="position: absolute; margin: -46px 0px -1px 207px; padding-left: 20px;">관리자 페이지</h3>
            <ul class="actions small">
               <li><span id="memberList" class="s-title text bGray" style="padding: 0em 0 0 10em;" >공지</span></li>

            </ul>
         </div>
				<!-- Three -->
					<section id="three" class="feature">
						<div class="row row-total main-total" style="display: flex; justify-content: center; margin-right: 0em;">
								<div class="side-header">
               <a href="${pageContext.request.contextPath}/app/admin/admin.jsp" style="border-bottom:2px solid #ffb61a;"><p id="total" class="s-title text bYellow">통계 </p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminQnaListOk.ad"><p id="qna" class="s-title text bGray" >문의</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminReportListOk.ad"><p id="report" class="s-title bGray" >신고</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminAuthListOk.ad"><p id="auth" class="s-title bGray">인증</p></a>
               <a href="${pageContext.request.contextPath}/app/admin/adminMList.jsp"><p id="memberList" class="s-title bGray" >회원목록</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminNoticeListOk.ad"><p id="inform" class="s-title bGray" >공지</p></a>
			</div>
			<div class="twoBox">
				<div class="col-6 col-12-small" style=" margin-left: -3em; margin-top: -0.5em;">
					<section id="content" style="width: 100%; padding: 0 0 0 0; font-size: 14px;">
          				<div style="">
               				<input type="button" value="글쓰기" onclick="location.href='${pageContext.request.contextPath}/admin/AdminNoticeInsert.ad'" style="float: right; font-size:14px;">
						</div>
               			<table style="background-color: white;">
                  			<tr>
      							<td style="width: 100px;">번호</td>
      							<td style="width: 376px;">제목</td>
      							<td>작성일</td>
          					</tr>
          					<c:choose>
								<c:when test="${noticeList != null}">
									<c:forEach var="notice" items="${noticeList}">
										<tr class = "boarderInner" style="background-color: white"> 
                            				<td style="width: 100px;" class = "num">${notice.getNoticeNum()}</td>
											<td style="width: 376px;" class = "title"><a href = "${pageContext.request.contextPath}/admin/AdminNoticeDetail.ad?noticeNum=${notice.getNoticeNum()}" class = "titleTag">${notice.getNoticeTitle()}</a></td>
											<td class = "date">${notice.getNoticeDate()}</td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
                        			<td colspan="3" style="text-align: center;">등록된 게시물이 없습니다.</td>
                        		</c:otherwise>
                			</c:choose>      
               							</table>
               						<!-- 페이징 처리 -->	
										<table style="text-align:center;">
											<tr>
												<td >1 2 3 4 5 6 7 8 9 10 </td>
											</tr>	
										</table>
									</section>
									</div>
									</div>
								<div class="col-6 col-12-small v-total" style="width: 30%; display:table; height: 400px; border: 1px solid #bbb; border-radius: 3px; padding-top: 1em;">
									<div class="oneBox" style="margin-bottom: 3%; width: 35%; display: contents;">
										<a class="title" href="#">
											<span class="s-title link-title" >통계</span>
										</a>
										<hr>
										<hr>
										<div class="sBox" style="display: flex; border-top: 1px solid #d8dadb; padding-top: 1em;">
										<div style="width: 100%;">
											<span class="s-title link-title" >글개수</span>
											<p>${total} 개</p>
										</div>
									</div>
								</div>

									
								</div>
							</div>
						</section>
					</div>
									
		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/admin.js"></script>
	</body>
</html>								