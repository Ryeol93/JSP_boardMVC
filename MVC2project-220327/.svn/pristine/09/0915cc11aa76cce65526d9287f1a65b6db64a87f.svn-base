<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<!--
   Phantom by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<html>
   <head>
      <title>문의하기</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/askInsert.css" rel="stylesheet"/>
   </head>
   <body class="is-preload">
		<c:set var="userId" value="${userId}"/>

       <!-- Header -->
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/header.jsp" flush="true"/>
            </div>
         </div> 
         

      <!-- Wrapper -->
         <div id="wrapper">

      
            <!-- title -->
            <div style = "position: relative;">
               <img src = "https://cdn.discordapp.com/attachments/954273372760571914/955483195921563648/09443220dff9ac88.jpg" style = "width:100%; opacity: 0.6;">
               <div>
                  <h2 class = "textOnImg">1:1 문의하기</h2>
               </div>
            </div>
            <!-- Main -->
            <div id="main" class="container medium">
               <div>
                  <p style = "font-weight: bold; font-size:16px; color:#5F5F5F;">※ 1:1 문의를 통한 전화상담 요청을 불가하오니 이 점 양해하여 주시기 바랍니다.<br>
                     ※ <span style = "text-decoration:underline"> 문의 내용 중 욕설, 폭언, 위협, 허위사실 등이 포함될 경우 모욕, 협박, 명예훼손 등으로 간주하여 답변이 제외될 수 있으며, 관련 법규에 의거 처벌될 수 있습니다.</span></p>
                  <p  style = "font-weight: bold; font-size:16px; padding-top:24px;">문의 사항을 상세히 작성해주세요</p>
                  <div style = "text-align: right;">
                     <span class = "necessary"><span style = "color:red">*</span> 필수 입력 항목</span>
                  </div>   
               </div>
               <hr style = "margin-top:15px !important;">

					<!-- 회원 정보 입력 창-->
					 <form action="${pageContext.request.contextPath}/ask/AskInsertOk.ask" name="insertForm" method="post" enctype="multipart/form-data">
							<div class= "label">
								<label for = "username" class = "innerLabel">아이디</label>
								<input type = "text" id ="username" class = "input" value ="${userId}" style = "background:white; width: 200px !important;" readonly>
							</div>
							<div class= "label">  
								<label for = "category"  class = "innerLabel">카테고리 선택<span style = "color:red; font-weight:bold"> *</span></label>
								<select id = "category" name="category"  class = "input" style ="width:200px;" required>
									<option value = "1">서비스 문의</option>
									<option value = "2">신고</option>
								</select>
							</div>
							<div class= "label">
								<label for = "titleQ"  class = "innerLabel inner-A">제목<span style = "color:red; font-weight:bold"> *</span></label>
								<div>
									<input type = "text" id ="titleQ" name="title"  class = "input inputTitle" style ="width:79%; background: white;" required >
								</div>
							</div>
							<div class= "label" style = "height: 260px;">
								<label for = "innerQ"  class = "innerLabel">상담 내용<span style = "color:red; font-weight:bold"> *</span></label>
								<div>
									<textarea id ="titleQ" name="content" cols = "30" rows = "10" class = "inputTextarea" required></textarea>
								</div>
							</div>
								<div class= "label uploadBar" id="filebox">
                                <div class="uploadFile" style = "display:flex; flex-wrap: wrap">
                                    <p class="file-p" style = "margin-bottom: 35px;
                                        font-size: 16px;
                                        padding-top: 4px;
                                        color: black;
                                        font-weight: bold;">첨부파일</p>
                                    <label class="input-file-button" for="attachQ" id = "upload">업로드</label>
                                <input class="file-select" type="file" accept="" id="attachQ" style= "display:none; margin-top:7px;padding-left:6px; color: #b7b7b7 !important;" class = "input" onchange="checkFile(this)"> 

                                <!--
                        <label for = "attachQ"><button class = "attachButton">첨부하기</button></label>
                        <input type = "file" accept="" id ="attachQ"  class = "input" onchange="checkFile(this)" style = "margin-top:10px;">
                                -->
                                </div>
                                <p id = "msgAttach">- 첨부파일은 5MB를 초과할 수 없으며, 최대 1개까지 가능합니다.</p>


                        </div>
					
					<br><br>
					<div class="bButton" style = "text-align: center;">
						<input class="uploadButton" type="submit" style = "" value="글쓰기"onclick="send()"><br>
					</div>
					</form>
					<br>
					<br>
			
						
				</div>

         </div>
         
         <!-- Aside -->
  <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/aside.jsp"/>
            </div>
         </div> 
      
       <!--footer-->
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/footer.jsp" flush="true"/>
            </div>
          </div>


      <!-- Scripts -->
      
             <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script> 
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/askInsert.js"></script>
   </body>

</html>