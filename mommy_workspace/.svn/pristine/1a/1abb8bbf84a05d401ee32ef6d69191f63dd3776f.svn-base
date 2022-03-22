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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/askDetails.css" rel="stylesheet"/>
   </head>
   
   <body class="is-preload">
   		<c:set var="ask" value="${ask}"/>
   		<c:set var="files" value="${files}"/>
   		<c:set var="page" value="${page}"/>
   <!-- Header -->
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/header.jsp" flush="true"/>
            </div>
         </div> 
         
      <!-- Main -->
      <div id="main" class="container medium">
            <header class="major">
               <h2 class = "ask">내 문의내역</h2>
            </header>
            

      <!-- Content -->   
            <div class = "noticeList">
                <p class = "basic">※ 문의 내용 중 욕설, 폭언, 위협, 허위사실 등이 포함되었거나 중복된 문의인 경우 삭제될 수 있습니다.</p>
               <table style = "color:black; border-top: 2px solid #000;">
                     <td class = "bold">등록일</td>
                            <td class = "normal" style ="color:#b7b7b7;"  colspan = "3">${ask.getAskDate()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td class = "bold"><span>처리상태</span></td>
                            <td class = "bold">
                            	<c:choose>
                              		<c:when test="${ask.getAskStatus() eq 0}"><button class = "boldButtonRed">처리중</button></c:when>
                              		<c:when test="${ask.getAskStatus() eq 1}"><button class = "boldButton">답변완료</button></c:when>
                            	</c:choose>
                            </td>
                            <!-- 
                             <td class = "bold" style = "background-color:color:#1E90FF; font-size:16px;">상담완료</td>
                             -->
                        <tr>
                            <td class = "bold">제목</td>
                            <td  class = "bold" style = "font-size:16px;" colspan = "3">${ask.getAskTitle()}</td>
                        	<td class = "bold">카테고리</td>
                        	<td class = "normal" style ="color:#b7b7b7">
                        	<c:choose>
                              		<c:when test="${ask.getCategoryNum() eq 1}">문의</c:when>
                              		<c:when test="${ask.getCategoryNum() eq 2}">신고</c:when>
                            	</c:choose>
                        	</td>
                        </tr>

                        <tr>
                            <td class = "bold">내용</td>
                            <td colspan = "3" ><textarea name="" id="" cols="30" rows="10" class = "innerText" style = "box-shadow:none;" readonly> 
${ask.getAskContent()}                     
                            </textarea></td>
                        </tr>
                        <tr style = "border-top: 1.1px solid #000; border-bottom: 2px solid #000;">
                            <td class = "bold">답변</td>                       
<c:choose>
	<c:when test="${ask.getAskAnswer() eq null}">
		<td colspan = "3" style="color:#93999a;"><textarea  name="" id="" cols="30" rows="10" class = "innerText" placeholder="답변까지는 최대 3일 까지 소요 됩니다." readonly> 	
답변까지는 최대 3일 소요 됩니다.		 
		 </textarea></td>
	</c:when>
	<c:otherwise>
		<td colspan = "3"><textarea name="" id="" cols="30" rows="10" class = "innerText" placeholder="" readonly> 	
${ask.getAskAnswer()}
	 </textarea></td>
	</c:otherwise>
</c:choose>
				</tr>
                    </table>
                 
                    
                    
                    <p class="basic">답변이 만족스럽지 않으셨거나 이 외 다른 문의사항이 있으신 경우 다시 문의주시면 최대한 빠르게 답변 드리겠습니다.</p>
                    <br><br>
                    <div style="text-align: center;">
                        <a href = "${pageContext.request.contextPath}/ask/AskInsert.ask"><button class = "askAgain">다시 문의하기</button></a>&nbsp;&nbsp;&nbsp;
                        <a href = "${pageContext.request.contextPath}/ask/AskList.ask"><button class = "goBack">목록</button></a>
                        <br>
                        <br>
                        <br>
                        <br>
                    </div>
               </div>

                                    
          </section>
                                
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
         <script src="${pageContext.request.contextPath}/assets/js/askDetails.js"></script>
   </body>
</html>