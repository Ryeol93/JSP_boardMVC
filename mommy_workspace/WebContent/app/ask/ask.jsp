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
		<title>문의사항</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ask.css" rel="stylesheet"/>
        <link rel="icon" href="${pageContext.request.contextPath}/images/favicon3.ico" type="image/x-icon" sizes="16x16"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/etcMain.css" />
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
	<body class="is-preload">
		<c:set var="total" value="${total}"/>
		<c:set var="askList" value="${askList}"/>
		<c:set var="page" value="${page}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="realEndPage" value="${realEndPage}"/>
		 <c:set var="userStatus" value="${userStatus}"/>
		 <c:set var="askStatus" value="${askStatus}"/>
		  <c:set var="categoryNum" value="${categoryNum}"/>
         <c:set var="userName" value="${userName}"/>
         <c:set var="userNum" value="${userNum}"/>


	<!-- Header -->
          <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/header.jsp" flush="true"/>
            </div>
         </div>
		
		
		<!-- Main -->
		<div id="main" class="container medium">
				<header class="major">
					<h2 class = "notice">내 문의내역</h2>
				</header> 
				

		<!-- Content -->
             
            <div class = "noticeList">
                <div style = "position:relative;">
                    <p class = "basic"><strong>${userName}</strong>님의 문의내역입니다.</p>
                    <!--새 글쓰기-->   
                    <div style="text-align: center;">
                            <a href = "${pageContext.request.contextPath}/ask/AskInsert.ask"><button class = "new">새 문의</button></a>
                    </div>
           		 </div>
					<table>
						<tr class = "boardHead">
							<td class = "num">상태 </td>
                            <td class = "category">카테고리</td>
                            <td class = "title">제목</td>
							<td class = "date" style="width: 15%;">작성일</td>
						</tr>
			<c:choose>
				<c:when test="${askList != null and fn:length(askList) > 0}">
					<c:forEach var="ask" items="${askList}">

						<tr class = "boarderInner">
							<td class = "bold" style = "text-align: center;">
							<c:choose>
                              		<c:when test="${ask.getAskStatus() eq 0}"><button class = "boldButtonRed">처리중</button></c:when>
                              		<c:when test="${ask.getAskStatus() eq 1}"><button class = "boldButton">답변완료</button></c:when>
                            </c:choose>
                            </td>
                           <td class = "category">
								<c:choose>
									<c:when test="${ask.getCategoryNum() eq 1}">문의</c:when>
									<c:when test="${ask.getCategoryNum() eq 2}">신고</c:when>
								</c:choose>
							</td>
							<td class = "title"><a href ="${pageContext.request.contextPath}/ask/AskDetailsOk.ask?askNum=${ask.getAskNum()}&page=${page}" class = "titleTag">${ask.getAskTitle()}</a></td>
							<td class = "date">${ask.getAskDate()}</td>
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
														<a href="${pageContext.request.contextPath}/ask/AskList.ask?page=${page - 1}">&lt;</a>
													</c:if>
												
													<c:out value="${page}"/>&nbsp;&nbsp;
													
													<c:if test="${page < realEndPage}">
														<a href="${pageContext.request.contextPath}/ask/AskList.ask?page=${page + 1}">&gt;</a>
													</c:if>
												</td>
												<td class="web-view">
													<c:if test="${startPage > 1}">
														<a href="${pageContext.request.contextPath}/ask/AskList.ask?page=${startPage - 1}">&lt;</a>
													</c:if>
												
													<c:forEach var="i" begin="${startPage}" end="${endPage}">
														<c:choose>
															<c:when test="${i eq page}">
																<c:out value="${i}"/>&nbsp;&nbsp;
															</c:when>
															<c:otherwise>
																<a href="${pageContext.request.contextPath}/ask/AskList.ask?page=${i}"><c:out value="${i}"/></a>&nbsp;&nbsp;
															</c:otherwise>
														</c:choose>
													</c:forEach>
													
													<c:if test="${endPage < realEndPage}">
														<a href="${pageContext.request.contextPath}/ask/AskList.ask?page=${endPage + 1}">&gt;</a>
													</c:if>
												</td>
											</tr>
										</table>
				</div>
		</div>
		
		<!-- footer -->
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/footer.jsp" flush="true"/>
            </div>
          </div>

          <!-- Aside -->
	    <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/aside.jsp" flush="true"/>
            </div>
         </div>


		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/ask.js"></script>
	</body>
    <script>

    </script>
</html>