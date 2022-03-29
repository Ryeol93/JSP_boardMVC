<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Exponent by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>공지사항 글쓰기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
		<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noticeInsert.css" />
		<link rel="icon" href="${pageContext.request.contextPath}/images/favicon3.ico" type="image/x-icon" sizes="16x16"/>
		
		
		
	</head>
	<body class="is-preload">
	
			
 		<!-- Header -->
			<div class="wrapper">
				<div class="inner">
					<jsp:include page="/app/fix/header.jsp" flush="true"/>
				</div>
			</div> 
			

		<!-- 글쓰기 -->
			
		<div id="main" class="container medium">
			
			<table>
				<form method="post">

					<div class="inner">
						<div style="display:flex; justify-content:space-between; margin-top: 50px; margin-bottom: -59px;">
							<p></p>
							<div style="margin-right:0px">
							<input type="button" id="btn" value="글쓰기"onclick="location.href='communityInsert.html'"><br>
						</div>
					
						
					</div>

					

					<tr style = "background-color: white;">
						<input type ="text" id="title" name = "title" placeholder="제목을 입력하세요" style = " resize: none;">
					

						<br>
						
						<td colspan="2" style = "padding:0;">
							<br>
							<textarea id="summernote" name="editordata">


							</textarea>
							
						</td>
					</tr>
				</form>
			</table>		
			
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
</script>
			
	</body>
</html>