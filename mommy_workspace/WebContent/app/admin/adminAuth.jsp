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

         
      </style>
   </head>
   <body class="is-preload" style="display:block; padding-top: 0; overflow-y: hidden">
		<c:set var="authList" value="${authList}"/>

		<c:set var="page" value="${page}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="realEndPage" value="${realEndPage}"/>
		<c:set var="total" value="${total}"/>


      <!-- Main -->
         <div id="main" class="container">
               <!-- 배너 -->
         <div class="mainBox" style="padding-top: 3.5em;">
            <a href="${pageContext.request.contextPath}/app/admin/admin.jsp"><img src="https://cdn.discordapp.com/attachments/954273372760571914/955478975797403648/1.png" style="width: 9%; position: absolute; margin: -50px 0px 0 26px;"></a>
            <h3 class="caption" style="position: absolute; margin: -46px 0px -1px 207px; padding-left: 20px;">관리자 페이지</h3>
            <ul class="actions small">
               <li><span id="memberList" class="s-title text bGray" style="padding: 0em 0 0 10em;" >인증 <span class="auth-num" style="color:red;">4</span></span></li>

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
                           <div class="col-6 col-12-small" style=" margin-left: -3em; margin-top: -0.5em;">
                              <section id="content" style="width: 100%; padding: 0 0 0 0; font-size: 14px;">
                                 <table>
                                    <tr>
                                       <td style="width:86.8px;"></td>
                                       <td>프로필번호</td>
                                       <td>이름</td>
                                       <td>아이디</td>
                                       <td>첨부파일</td>
                                       <td>작성일</td>
                                    </tr>

							
								<tbody class="tr_wrap">
								<c:choose>
								<c:when test="${authList != null}">
									<c:forEach var="auth" items="${authList}">
								
								<tr class="wrap">
									<td class="test"><img id="qwe"
										src="https://cdn.discordapp.com/attachments/954273372760571914/955482467148656700/v2.png"
										style="width: 15px"></td>
									<td>${auth.getProfileNum()}</td>
									<td>${auth.getUserName()}</td>
									<td>${auth.getUserId()}</td>
									<td><a
										href="${pageContext.request.contextPath}/images/학력증명서.png"
										download="학력증명서">학력증명서.pdf</a></td>
									<td>${auth.getProfileDate()}</td>
								</tr>

								<tr class="td1">
									<td colspan="7">
										<div class="certification_wrap">
											<div style = "float:left;">
											<c:choose>
												<c:when test="${auth.getCheckMedi() eq 0}">
											<input type="checkbox" id="copy1${auth.getProfileNum()}" name="copy1" class="copy1">
											<label for="copy1${auth.getProfileNum()}" class="text">건강인증</label>
												</c:when>
												<c:when test="${auth.getCheckMedi() eq 1}">
													<input type="checkbox" id="copy1${auth.getProfileNum()}" name="copy1" class="copy1" checked>
													<label for="copy1${auth.getProfileNum()}" class="text">건강인증</label>
												</c:when> 
											</c:choose>
											</div>
											<div style = "float:left;">
												<c:choose>
													<c:when test="${auth.getCheckMom() eq 0}">
														<input type="checkbox" id="copy2${auth.getProfileNum()}" name="copy2" >
														<label for="copy2${auth.getProfileNum()}" class="text">부모님인증</label>
													</c:when>
													<c:when test="${auth.getCheckMom() eq 1}">
														<input type="checkbox" id="copy2${auth.getProfileNum()}" name="copy2" checked>
														<label for="copy2${auth.getProfileNum()}" class="text">부모님인증</label>
													</c:when>
												</c:choose>
											</div>
											
											<div style = "float:left;">
												<c:choose>
													<c:when test="${auth.getCheckTeacher() eq 0}">
														<input type="checkbox" id="copy3${auth.getProfileNum()}" name="copy3" >
														<label for="copy3${auth.getProfileNum()}" class="text">교사인증</label> 
													</c:when>
													<c:when test="${auth.getCheckTeacher() eq 1}">
														<input type="checkbox" id="copy3${auth.getProfileNum()}" name="copy3" checked>
														<label for="copy3${auth.getProfileNum()}" class="text">교사인증</label> 
													</c:when>
												</c:choose>
												
											</div>
											<div style = "float:left;">
												<c:choose>
													<c:when test="${auth.getCheckCitizen() eq 0}">
														<input type="checkbox" id="copy4${auth.getProfileNum()}" name="copy4" >
														<label for="copy4${auth.getProfileNum()}" class="text">본인인증</label>
													</c:when>
													<c:when test="${auth.getCheckCitizen() eq 1}">
														<input type="checkbox" id="copy4${auth.getProfileNum()}" name="copy4" checked>
														<label for="copy4${auth.getProfileNum()}" class="text">본인인증</label>
													</c:when>
												</c:choose>
												
											</div>
											<div style = "float:left;">
												<c:choose>
													<c:when test="${auth.getCheckUniversity() eq 0}">
														<input type="checkbox" id="copy5${auth.getProfileNum()}" name="copy5" >
														<label for="copy5${auth.getProfileNum()}" class="text">학력인증</label>
													</c:when>
												</c:choose>
												<c:choose>
													<c:when test="${auth.getCheckUniversity() eq 1}">
														<input type="checkbox" id="copy5${auth.getProfileNum()}" name="copy5" checked>
														<label for="copy5${auth.getProfileNum()}" class="text">학력인증</label>
													</c:when>
												</c:choose>
											</div>
										</div>
										
									      <c:set var="ProfileNum" value="${auth.getProfileNum()}"/>
									      <c:set var="name" value="${auth.getUserName()}"/>
									      <c:set var="id" value="${auth.getUserId()}"/>
											<div>																										
												<button onclick="window.open(context+'/admin/AdminAuthChange.ad?ProfileNum=${auth.getProfileNum()}&id=${auth.getUserId()}&name=${auth.getUserName()}','인증 수정페이지','left=400px,top=200px,width=900,height=400,status=no, menubar=no, toolbar=no, resizable=no,scrollbars =no')"	 class="btn" >수정하기</button>
											</div>
						
									</td>
								</tr>
								</c:forEach>
								</c:when>
								<c:otherwise>
                        			<td colspan="7" style="text-align: center;">인증이 필요한 회원이 없습니다.</td>
                        		</c:otherwise>
                			</c:choose> 
								</tbody>

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
                           <div class="col-6 col-12-small v-total" style="width: 30%; display:table; height: 400px; border: 1px solid #bbb; border-radius: 3px; padding-top:1em;">
                           <div class="oneBox" style="margin-bottom: 3%; width: 35%; display: contents;">
                              <a class="title" href="#">
                                 <span class="s-title link-title" >통계</span>
                              </a>
                              <hr>
                              <hr>
      
                           <div class="sBox" style="border-bottom: 1px solid #d8dadb; border-top: 1px solid #d8dadb; display: flex; padding-top: 1em; padding-bottom: 1em;">
                              <div style="width: 100%;">
                                 <span class="s-title link-title" >인증된 회원수</span>
                                 <hr>
                                 <p>700 명</p>
                              </div>
                           </div><div class="sBox" style="display: flex; padding-top: 1em;">
                              <div style="width: 100%;">
                                 <span class="s-title link-title" >대기중</span>
                                 <p>${total} 명</p>
                              </div>
                           </div>
                           
                        </div>
                     </div>
                  </section>
               </div>
              
                           

      <!-- Scripts -->
     
         <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
         <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <script> var context = '${pageContext.request.contextPath}'</script>
         <script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/admin.js"></script>
   </body>
</html>                        