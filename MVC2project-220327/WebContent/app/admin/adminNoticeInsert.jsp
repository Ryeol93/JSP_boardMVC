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
      <meta charset="utf-8" />
      <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
	  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">		
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminDetail.css" />
   	<style>
   		         .note-editable{
         	height:470px;
         }
   	</style>
   </head>
   <body class="is-preload" style="display:block; padding-top: 0; overflow-y: hidden">



      <!-- Main -->
         <div id="main" class="container">
               <!-- 배너 -->
         <div class="mainBox" style="padding-top: 3.5em;">
         	<a href="${pageContext.request.contextPath}/app/admin/admin.jsp"><img src="https://cdn.discordapp.com/attachments/954273372760571914/955478975797403648/1.png" style="width: 9%; position: absolute; margin: -50px 0px 0 26px;"></a>
            <h3 class="caption" style="position: absolute; margin: -46px 0px -1px 207px; padding-left: 20px;">관리자 페이지</h3>
            <ul class="actions small">
               <li><span id="memberList" class="s-title text bGray" style="    padding: 0em 0 0 10.35em;" >공지</span></li>

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
<table>
				<form action="${pageContext.request.contextPath}/admin/AdminNoticeInsertOk.ad" method="post" name="writeForm" enctype="multipart/form-data">

					<div class="inner">
						<div style="display:flex; justify-content:space-between; margin-top: 50px; margin-bottom: -59px;">
							<p></p>
	
					</div>

					

					<tr style = "background-color: white;">
						<input type ="text" id="title" name = "noticeTitle" placeholder="제목을 입력하세요" style = " resize: none; width: 100%;">
					

						<br>
						
						<td colspan="2" style = "padding:0;">
							<br>
							<textarea id="summernote" name="noticeContent">

							</textarea>
							
						</td>
					</tr>
				</form>

			</table>			
									<div style="margin-right:0px; float: right; margin-top: -19px;">
							<input type="button" id="btn" value="완료" onclick="send()"><br>
						</div>
		<!-- Scripts -->
						<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/admin.js"></script>
			<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  			<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
			<script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
	$("#summernote").summernote({
		disableResizeEditor: true
	});
	
	function send(){
		writeForm.submit();
	}

  </script>
	</body>
</html>								