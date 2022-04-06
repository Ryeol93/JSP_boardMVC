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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noticeDetails.css" />
        <link rel="icon" href="${pageContext.request.contextPath}/images/favicon3.ico" type="image/x-icon" sizes="16x16"/>
    
	</head>
	<body class="is-preload">

	<c:set var="noticeDetail" value="${noticeDetail}"/>
        
 	<!-- Header -->
    <div class="wrapper">
        <div class="inner">
           <jsp:include page="/app/fix/header.jsp" flush="true"/>
        </div>
     </div> 
  
     
		<!-- Main -->
		<div id="main" class="container medium">
				<header class="major">
					<h2 class = "notice">공지사항</h2>
				</header>
				

	<!-- Content -->   
            <div class = "noticeList">
					<table>
						<tr class = "boardHead">
							<td class = "title">${noticeDetail.getNoticeTitle()}</td>
							<td style="visibility: hidden;">게시글번호: ${noticeDetail.getNoticeNum()}</td>
							<td class = "date">${noticeDetail.getNoticeDate()}</td>
						</tr>
					
                        <tr class = "boarderInner"> 
                        
						</tr>
					</table>
                 <div id ="noInner" style = "margin-left: 35px;">
                        <span name="" id="" cols="30" rows="10" class = "innerText" readonly>                
${noticeDetail.getNoticeContent()}
                    </span>
                    </div>
                   <table style = "margin-top: 55px;">
                            <tr class = "next">
                             <td class = "titleBelow"></td></tr>
					</table>
                    <!-- 다음. 이전 글 목록-->
<!--                     <div>
                        <table style = "margin-top: 55px;">
                            <tr class = "next">
                                <td style = "width:140px;;padding: 0.75em 1.75em;">다음</td>
                                <td class = "titleBelow">다음 공지사항이 없습니다.</td>
                            </tr>
                            <tr class = "before">
                                <td style = "width:140px;;padding: 0.75em 1.75em;">이전</td>
                                <td class = "titleBelow">이전 게시글 입니다.</td>
                            </tr>
                        </table>

                    </div> -->
                    <div style="text-align: center;">
                        <a href = "${pageContext.request.contextPath}/notice/NoticeListOk.no"><button class = "goBack">목록</button></a>
                        <br>
                        <br>
               
                    </div>
               </div>

                                    
		    </section>
                                
		</div>



				

		
<%--  		<!-- footer -->
        <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/footer.jsp" flush="true"/>
            </div>
          </div> --%>
	
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
			<script src="${pageContext.request.contextPath}/assets/js/noticeDetails.js"></script>

	</body>

</html>