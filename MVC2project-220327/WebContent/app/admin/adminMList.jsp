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
     <c:set var="members" value="${members}" />
     <c:set var="membersTotal" value="${membersTotal}" />
     <c:set var="membersMom" value="${membersMom}" />
     <c:set var="membersSitter" value="${membersSitter}" />
     <!-- Main -->
         <div id="main" class="container">
               <!-- 배너 -->
         <div class="mainBox" style="padding-top: 3.5em;">
         	<a href="${pageContext.request.contextPath}/app/admin/admin.jsp"><img src="https://cdn.discordapp.com/attachments/954273372760571914/955478975797403648/1.png" style="width: 9%; position: absolute; margin: -50px 0px 0 26px;"></a>
            <h3 class="caption" style="position: absolute; margin: -46px 0px -1px 207px; padding-left: 20px;">관리자 페이지</h3>
            <ul class="actions small">
               <li><span id="memberList" class="s-title text bGray" style="padding: 0em 0 0 10em;" >회원목록</span></li>

            </ul>
         </div>
				<!-- Three -->
					<section id="three" class="feature">
						<div class="row row-total main-total" style="display: flex; justify-content: center; margin-right: 0em;">
								<div class="side-header">
               <a href="${pageContext.request.contextPath}/admin/AdminMainOk.ad" style="border-bottom:2px solid #ffb61a;"><p id="total" class="s-title text bYellow">메인 </p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminQnaListOk.ad"><p id="qna" class="s-title text bGray" >문의</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminReportListOk.ad"><p id="report" class="s-title bGray" >신고</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminAuthListOk.ad"><p id="auth" class="s-title bGray">인증</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminMemberListOk.ad"><p id="memberList" class="s-title bGray" >회원목록</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminNoticeListOk.ad"><p id="inform" class="s-title bGray" >공지</p></a>
			</div>
								<div class="twoBox">
									<div class="col-6 col-12-small" style=" margin-left: -3em; ">
										<section id="content" style="width: 100%; padding: 0 0 0 0; font-size: 14px;">
          								<div class="col-12" style="width:12%; margin-bottom: 1em;">
									<select name="category" id="category" style="font-size: 14px; margin: -7px 0 0px 0;">
										<option value="">선택</option>
										<option value="1">전체</option>
										<option value="2">맘</option>
										<option value="3">시터</option>
									</select>
								</div>
                                <table>
                  						<tr>
                     						<td>번호</td>
                     						<td>아이디</td>
                     						<td>이름</td>
                     						<td>분류</td>
                  						</tr>
                                          <c:choose>
                                                <c:when test="${members != null}" >
                                          	 <c:forEach var="members" items="${members}" >
                                                                 <tr>
                                                                    <td>${members.getUserNum()}</td>
                                                                    <td>${members.getUserId()}</td>
                                                                    <td>${members.getUserName()}</td>
                                                                    <c:choose>
                                                                    	<c:when test="${members.getUserStatus() eq 1}">
                                                                    		<td>맘</td>
                                                                    	</c:when>
                                                                    	<c:when test="${members.getUserStatus() eq 2}">
                                                                    		<td>시터</td>
                                                                    	</c:when>
                                                                    </c:choose>
                                                                 </tr> 
                                               </c:forEach>  
                                                </c:when>
                                                 <c:when test="${members eq null}">
															<tr>
                                                         <td colspan=4 style="text-align: center;">
                                                            <b>등록된 회원이 없습니다.</b>
                                                         </td>  
                                                       </tr>
                                                </c:when>
                                          </c:choose>
                				</table>
               					<!-- 페이징 처리 -->	
               															<!-- 페이징 처리 -->	
					<table style="text-align:center;">
						<tr>
							<td >1 2 3 4 5 6 7 8 9 10 </td>
						</tr>	
					</table>
									</section>
									</div>
									</div>
									<div class="col-6 col-12-small v-total" style="width: 30%; display:table; height: 400px; border: 1px solid #bbb; border-radius: 3px; padding-top:1em;">
									<div class="oneBox" style="margin-bottom: 3%; width: 35%; display: contents;">
										<a class="title" href="#">
											<span class="s-title link-title" >메인</span>
										</a>
										<hr>
										<hr>
		
									<div class="sBox" style="border-bottom: 1px solid #d8dadb; border-top: 1px solid #d8dadb; display: flex; padding-top: 1em; padding-bottom: 1em;">
										<div style="width: 100%;">
											<span class="s-title link-title" >회원수</span>
											<hr>
											<p>${membersTotal}</p>
										</div>
									</div>
									<div class="sBox" style="display: flex; padding-top: 1em; padding-bottom: 1em;">
										<div style="width: 50%; border-right: 1px solid #d8dadb;">
											<span class="s-title link-title" >맘</span>
											<hr>
											<p>${membersMom}</p>
										</div>
										<div style="width: 50%; padding-left:1em">
											<span class="s-title link-title" >시터</span>
											<p>${membersSitter}</p>
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