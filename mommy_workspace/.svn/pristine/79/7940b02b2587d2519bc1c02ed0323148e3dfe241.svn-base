<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>     
<!DOCTYPE HTML>
<!--
   Exponent by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<html>
   <head>
      <title>마이페이지</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
       <link href="${pageContext.request.contextPath}/assets/css/myPageHeart.css" rel="stylesheet" type="text/css">
   
        </head>
  
   
   
   <body>
   <c:set var="profileList" value="${profileList}"/>



                          <!-- -------------------------------------------------------------- -->
                <!--review | 후기 보기 -->
                <div>
                    <h4 class = "mainTitle2"> 찜한 게시글 </h4>
                    
                    <!-- 유저정보 -->
                    <c:forEach var="profile" items="${profileList}">
                    <div class="inline-block userInfoDiv" >
                    <!-- 이미지 경로추출 확인되는 데로 데이터 입력 -->
                      <div class="profileImgWrap" style="width: 100%; height: 68%;" >
                    <c:choose>
                       <c:when test="${empty profile.getFileName()}">
                           <img src="https://cdn.discordapp.com/attachments/954273372760571914/958038149609709608/unknown.png" style="height: 100%;width: 100%; object-fit: contain; ">
                       </c:when>
                       <c:otherwise>
							<c:choose>
			                    <c:when test="${profile.getUserStatus() == 1}">
			                       <img src="/profileData/${profile.getFileName()}" style="width: 100%;" onclick="location.href='${pageContext.request.contextPath}/service/LookMomProfileOk.ser?userNum=${profile.getProfileUserNum()}&profile=${profile.getProfileNum()}';">
			                    </c:when>
			                    <c:otherwise>
		                           <img src="/profileData/${profile.getFileName()}" style="width: 100%;" onclick="location.href='${pageContext.request.contextPath}/service/LookSitterProfileOk.ser?userNum=${profile.getProfileUserNum()}&profile=${profile.getProfileNum()}';">
			                    </c:otherwise>
		                    </c:choose>                           
                           
                       </c:otherwise>
                    </c:choose>
                     <img src="https://cdn.discordapp.com/attachments/954273372760571914/955479972280143972/447a140a0a8dd1b3.png" id="heart"style="width: 30px;
                     position: absolute;
                     left: 125px;
                     top: 115px;" class="media_heart" onclick="favoriteDelete(${profile.getProfileUserNum()},${profile.getUserNum()})">
                     </div>
                     <P class="userInfo">${profile.getUserName()}<span>(${profile.getAge()}세,                                     <c:choose>
                                       <c:when test="${profile.getUserGender() == 1}">남</c:when>
                                       <c:when test="${profile.getUserGender() == 2}">여</c:when>
                                       <c:otherwise>정보없음</c:otherwise>
                                    </c:choose> )</span></P>
                     <div style="display: flex; margin: 0px;margin-top: -8px; align-items: center; justify-content: center;  gap: 5%;">
                     <img src="${pageContext.request.contextPath}/images/money.png" style="width: 20%;">
                     ${profile.getProfileSalary()}원
<!--                      <img src="https://cdn.discordapp.com/attachments/954273372760571914/955480110650232842/star.png" style="width: 17px;">
                     <img src="https://cdn.discordapp.com/attachments/954273372760571914/955480110650232842/star.png" style="width: 17px;">
                     <img src="https://cdn.discordapp.com/attachments/954273372760571914/955480110650232842/star.png" style="width: 17px;">
                     <img src="https://cdn.discordapp.com/attachments/954273372760571914/955480110650232842/star.png" style="width: 17px;">
                     <img src="https://cdn.discordapp.com/attachments/954273372760571914/955480110650232842/star.png" style="width: 17px;"> -->
                      </div>
                    </div>
                    </c:forEach>
                 </div><!-- /유저정보 -->
 
 
      
      
   </body>
         <script >
         var contextPath = "${pageContext.request.contextPath}";
         </script>
       <!--   <script src ="assets/js/myPageHeart.js"></script> -->
        <%--  <script src="${pageContext.request.contextPath}/assets/js/myPage.js"></script>  --%>
   
</html>