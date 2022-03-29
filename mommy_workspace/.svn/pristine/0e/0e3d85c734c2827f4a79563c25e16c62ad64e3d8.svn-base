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
		<title>공지사항</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noticeMain.css"/>
		<link rel="icon" href="${pageContext.request.contextPath}/images/favicon3.ico" type="image/x-icon" sizes="16x16"/>
	</head>
	<body class="is-preload">
	
		<c:set var="noticeList" value="${noticeList}"/>

		<c:set var="page" value="${page}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="realEndPage" value="${realEndPage}"/>
		<c:set var="total" value="${total}"/>


 	<!-- Header -->
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/header.jsp" flush="true"/>
            </div>
         </div> 
		
		
		<!-- Main -->
		<div id="main" class="container medium">
				<header class="major">
					<h2 class = "notice" >공지사항</h2>
				</header>
				

		<!-- Content -->
                <!-- search-->
                <!-- <div class="search-box-style">
                    <div class="search-box">
                        
                        <input type="text" placeholder="검색어를 입력하세요"/>
                        
                        <div class="search-btn">
                        
                        <i class="fas fa-search"></i>
                        </div>
                        <div class="cancel-btn" style = "right: -50px !important;">
                        <i class="fas fa-times"></i>
                               
                        </div>
                    </div>
                      
                     
                </div> -->
              
         <!-- 공지 게시판 -->
             
            <div class = "noticeList">
					<table>
				
						<tr class = "boardHead">
							<td class = "num">번호</td>
							<td class = "title">제목</td>
							<td class = "date">작성일</td>
						</tr>
				<c:choose>
					<c:when test="${noticeList != null}">
						<c:forEach var="notice" items="${noticeList}">
						<tr class = "boarderInner"> 
                            <td class = "num">${notice.getNoticeNum()}</td>
							<td class = "title"><a href = "${pageContext.request.contextPath}/notice/NoticeDetail.no?noticeNum=${notice.getNoticeNum()}" class = "titleTag">${notice.getNoticeTitle()}</a></td>
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
			</div>
                    
                <div>
                    <!-- <p style = "text-align: center; margin-top:50px; margin-bottom: -20px;">아래 처럼 구현될 예정입니다.</p> -->
                    <div class="pageingWrap" style = "text-align: center; margin:0 auto; ">
                       <div class="paging" id="noticeList" style = "text-align: center;  margin:0 auto; width:100%;">
                            <!-- <span class="btn_first">
                                <a class="btn_paging first" href="javascript:;" data-page="1"><<  </a>
                            </span>
                            <span class="btn_prev">
                                <a href="javascript:;" data-page="4"> <</a>
                            </span> -->
                            
                            <ul class = "myUl" style="display: inline-block; margin: 0 auto;">
                            	<li class="active page">
                            <c:forEach var="i" begin="${startPage}" end="${endPage}">
                            	<c:choose>
									<c:when test="${i eq page}">
										<span class="pageClass currentPage"><c:out value="${i} " /></span><!-- 현재 페이지를 노란색으로 표현 -->
                            		</c:when>
									<c:otherwise>
										<a href="${pageContext.request.contextPath}/notice/NoticeListOk.no?page=${i}" ><c:out value="${i}"/></a> <!-- 현재 페이지가 아닌 다른 페이지들은 흰색에 마우스오버하면 노란색으로 표현 -->
									</c:otherwise>
								</c:choose>
							</c:forEach>
                                </li>
                              </ul>
                            <!-- <span class="btn_next"><a href="javascript:;" data-page="6">></a></span><span class="btn_last">
                                <a href="javascript:;" data-page="22">>></a></span> -->
                            </div>
                        </div>
                    </div>
                                
                 



                    <!-- 실제 페이징 처리   -->
                    <!-- 
                    <div>
                   
										<table style="font-size:1.3rem;">
											<tr align="center" valign="middle">	
												<td class="web-view" style = "background: white; border:hidden;">
													<c:if test="${startPage > 1}">
														<a href="#">&lt;</a>
													</c:if>
												
													<c:forEach var="i" begin="${startPage}" end="${endPage}">
														<c:choose>
															<c:when test="${i eq page}">
																<c:out value="${i}"/>&nbsp;&nbsp;
															</c:when>
															<c:otherwise>
																<a href="${pageContext.request.contextPath}/board/NoticeListOk.bo?page=${i}"><c:out value="${i}"/></a>&nbsp;&nbsp;
															</c:otherwise>
														</c:choose>
													</c:forEach>
													
													<c:if test="${endPage < realEndPage}">
														<a href="#">&gt;</a>
													</c:if>
												</td>
											</tr>
                                        </div>
										</table>
									</div>
								</section>
						</div>
					</div>
					 -->

		

				
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
			<script src="${pageContext.request.contextPath}/assets/js/notice.js"></script>

	</body>
    
</html>