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
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminDetail.css" rel="stylesheet"/>

   </head>
   <body class="is-preload" style="display:block; padding-top: 0; overflow-y: hidden">
	   	<c:set var="admin" value="${admin}"/>
   		<c:set var="files" value="${files}"/>
   		<c:set var="page" value="${page}"/>


      <!-- Main -->
         <div id="main" class="container">
               <!-- 배너 -->
         <div class="mainBox" style="padding-top: 3.5em;">
         	<a href="${pageContext.request.contextPath}/admin.jsp"><img src="https://cdn.discordapp.com/attachments/954273372760571914/955478975797403648/1.png" style="width: 9%; position: absolute; margin: -50px 0px 0 26px;"></a>
            <h3 class="caption" style="position: absolute; margin: -46px 0px -1px 207px; padding-left: 20px;">관리자 페이지</h3>
            <ul class="actions small">
               <li><span id="memberList" class="s-title text bGray" style="padding: 0em 0 0 10em;" >문의 <span class="auth-num" style="color:red;">4</span></span></li>

            </ul>
         </div>
				<!-- Three -->
					<section id="three" class="feature">
						<div class="row row-total main-total" style="display: flex; justify-content: center; margin-right: 0em;">
								<div class="side-header">
               <a href="${pageContext.request.contextPath}/admin/AdminMainOk.ad"  style="border-bottom:2px solid #ffb61a;"><p id="total" class="s-title text bYellow">메인 </p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminQnaListOk.ad"><p id="qna" class="s-title text bGray" >문의</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminReportListOk.ad"><p id="report" class="s-title bGray" >신고</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminAuthListOk.ad"><p id="auth" class="s-title bGray">인증</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminMemberListOk.ad"><p id="memberList" class="s-title bGray" >회원목록</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminNoticeListOk.ad"><p id="inform" class="s-title bGray" >공지</p></a>
			</div>
	<div class="twoBox" style="width: 91.5%;">
									<div class="col-6 col-12-small" style=" margin-left: -3em; ">
										<section id="content" style="width: 100%; padding: 0 0 0 0; font-size: 14px;">
		<form action="${pageContext.request.contextPath}/admin/AdminQnaUpdateOk.ad" name="updateForm" method="post" enctype="multipart/form-data">                
                            <input type="hidden" name="page" value="${page}">
                            <input type="hidden" name="askNum" value="${admin.getAskNum()}">
<table style = "color:black; border-top: 2px solid #000;">
                     <td class = "bold">등록일</td>
                            <td class = "normal" style ="color:#b7b7b7">${admin.getAskDate()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td class = "bold"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상태</span></td>
                            <c:choose>
                     			<c:when test="${admin.getAskStatus() eq 0}"><td class="qa-result" style="color:red;">대기중</td></c:when>
                     			<c:when test="${admin.getAskStatus() eq 1}"><td class="qa-result" style="color:blue;">완료</td></c:when>
                     		</c:choose>
                            <!-- 
                             <td class = "bold" style = "background-color:color:#1E90FF; font-size:16px;">상담완료</td>
                             -->
                  </tr>
                        <tr>
                            <td class = "bold">제목</td>
                            <td  class = "bold" style = "font-size:16px;" colspan = "3">${admin.getAskTitle()}</td>
                        </tr>

                        <tr style="background-color: #fff;">
                            <td class = "bold">내용</td>
                            <td colspan = "3" ><textarea name="" id="" cols="30" rows="9" class = "innerText" readonly> 
${admin.getAskContent()}                           
                            </textarea></td>
                        </tr>
                    </table>
                    
                    <input type="button"  value="완료" onclick="updateForm.submit()" style="font-size:14px; float: right; margin-top: -0.5em;">
								</form>	
									</section>
									</div>
									</div>

									<div class="col-6 col-12-small v-total" style=" border: 1px solid #f6f6f6; width: 30%; display:table; height: 400px; padding-top:1em; background-color:#f6f6f6">
									<div class="oneBox" style="margin-bottom: 3%; width: 35%; display: contents;">
										</div>
									</div>
								</div>
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