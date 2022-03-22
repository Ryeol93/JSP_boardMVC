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
   <style>
			table tbody tr{
				background-color:white !important;
			}
			.web-view {
				display:table-cell;
			}
			
			.mobile-view {
				display:none;
			}
			
			@media(max-width:660px){
				.web-view {
					display:none;
				}
				
				.mobile-view {
					display:table-cell;
				}
			}
			
		</style>
   </head>
   <body class="is-preload" style="display:block; padding-top: 0; overflow-y: hidden">
			<c:set var="total" value="${total}"/>
			<c:set var="total0" value="${total0}"/>
			<c:set var="total1" value="${total1}"/>
		<c:set var="reportList" value="${reportList}"/>
		<c:set var="page" value="${page}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="realEndPage" value="${realEndPage}"/>
		<c:set var="userName" value="${userName}"/>
        <c:set var="userId" value="${userId}"/>
        <c:set var="userStatus" value="${userStatus}"/>


      <!-- Main -->
         <div id="main" class="container">
               <!-- 배너 -->
         <div class="mainBox" style="padding-top: 3.5em;">
         	<a href="${pageContext.request.contextPath}/app/admin/admin.jsp"><img src="https://cdn.discordapp.com/attachments/954273372760571914/955478975797403648/1.png" style="width: 9%; position: absolute; margin: -50px 0px 0 26px;"></a>
            <h3 class="caption" style="position: absolute; margin: -46px 0px -1px 207px; padding-left: 20px;">관리자 페이지</h3>
            <ul class="actions small">
               <li><span id="memberList" class="s-title text bGray" style="padding: 0em 0 0 10em;" >신고 <span class="report-num" style="color:red;">${total0}</span></span></li>

            </ul>
         </div>
				<!-- Three -->
					<section id="three" class="feature">
						<div class="row row-total main-total" style="display: flex; justify-content: center; margin-right: 0em;">
								<div class="side-header">
               <a href="${pageContext.request.contextPath}/admin/AdminMainOk.ad"  style="border-bottom:2px solid #ffb61a;"><p id="total" class="s-title text bYellow">통계 </p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminQnaListOk.ad"><p id="qna" class="s-title text bGray" >문의</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminReportListOk.ad"><p id="report" class="s-title bGray" >신고</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminAuthListOk.ad"><p id="auth" class="s-title bGray">인증</p></a>
               <a href="${pageContext.request.contextPath}/app/admin/adminMList.jsp"><p id="memberList" class="s-title bGray" >회원목록</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminNoticeListOk.ad"><p id="inform" class="s-title bGray" >공지</p></a>
			</div>
								<div class="twoBox">
									<div class="col-6 col-12-small" style=" margin-left: -3em; ">
										<section id="content" style="width: 100%; padding: 0 0 0 0; font-size: 14px;">
          								
<table>
                  						<tr>
                     						<td>상태</td>
                     						<td>제목</td>
                     						<td>아이디</td>
                     						<td>이름</td>
                     						<td>구분</td>
                     						<td>작성일</td>
                  						</tr>
                  						<c:choose>
								<c:when test="${reportList != null and fn:length(reportList) > 0}">
									<c:forEach var="report" items="${reportList}">
                  								<tr>
                  									<c:choose>
                     									<c:when test="${report.getAskStatus() eq 0}"><td class="qa-result" style="color:red;">대기중</td></c:when>
                     									<c:when test="${report.getAskStatus() eq 1}"><td class="qa-result" style="color:blue;">완료</td></c:when>
                     								</c:choose>
                    								<td><a href="${pageContext.request.contextPath}/admin/AdminReportUpdate.ad?askNum=${report.getAskNum()}&page=${page}" class = "titleTag">${report.getAskTitle()}</a></td>
                     								<td>${report.getUserId()}</td>
                     								<td>${report.getUserName()}</td>
                     								<c:choose>
                     									<c:when test="${report.getUserStatus() eq 1}">
                     										<td>맘</td>
                     									</c:when>
                     									<c:when test="${report.getUserStatus() eq 2}">
                     										<td>시터</td>
                     									</c:when>
                     								</c:choose>
                     								<td>${report.getAskDate()}</td>
                  								</tr>
                  					</c:forEach>
                  				</c:when>
                  				<c:otherwise>
                  				<tr>
                  					<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
                  				</tr>
                  				</c:otherwise>
                  			</c:choose>
               			</table>
               						<table style="font-size:1.3rem">
											<tr align="center" valign="middle">
												<td class="mobile-view">
													<c:if test="${page > 1}">
														<a href="${pageContext.request.contextPath}/admin/AdminReportListOk.ad?page=${page - 1}">&lt;</a>
													</c:if>
												
													<c:out value="${page}"/>&nbsp;&nbsp;
													
													<c:if test="${page < realEndPage}">
														<a href="${pageContext.request.contextPath}/admin/AdminReportListOk.ad?page=${page + 1}">&gt;</a>
													</c:if>
												</td>
												<td class="web-view">
													<c:if test="${startPage > 1}">
														<a href="${pageContext.request.contextPath}/admin/AdminReportListOk.ad?page=${startPage - 1}">&lt;</a>
													</c:if>
												
													<c:forEach var="i" begin="${startPage}" end="${endPage}">
														<c:choose>
															<c:when test="${i eq page}">
																<c:out value="${i}"/>&nbsp;&nbsp;
															</c:when>
															<c:otherwise>
																<a href="${pageContext.request.contextPath}/admin/AdminReportListOk.ad?page=${i}"><c:out value="${i}"/></a>&nbsp;&nbsp;
															</c:otherwise>
														</c:choose>
													</c:forEach>
													
													<c:if test="${endPage < realEndPage}">
														<a href="${pageContext.request.contextPath}/admin/AdminReportListOk.ad?page=${endPage + 1}">&gt;</a>
													</c:if>
												</td>
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
		
									<div class="sBox" style="border-bottom: 1px solid #d8dadb; border-top: 1px solid #d8dadb; display: flex; padding-top: 1em; padding-bottom: 1em;">
										<div style="width: 50%;">
											<span class="s-title link-title" >문의글 개수</span>
											<hr>
											<p>${total} 개</p>
										</div>
									</div>
									<div class="sBox" style="display: flex; padding-top: 1em;">
										<div style="width: 100%;">
											<span class="s-title link-title" >대기중</span>
											<p>${total0} 개</p>
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