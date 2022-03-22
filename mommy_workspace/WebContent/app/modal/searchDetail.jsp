<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>     
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link href="${pageContext.request.contextPath}/assets/css/searchDetail.css" rel="stylesheet" >
	
    <title>상세검색</title>
</head>

<body>
    <!-- main -->
   
<div class="main">
        <div class="header">
        <div	style="
        background-color: #ffb61a9e;
	    width: 550px;
	    height: 98px;
	    line-height: 5;"
        class="media1"
        ><h3 style="color:white; margin-left: -30px; font-size:23px; " class="media2">상세 검색</h3></div>
      <%--  onclick="location.href='${pageContext.request.contextPath}/service/MomDetailModalOk.ser'" --%>
        <input type="button" value="적용" class="apply" style="cursor: pointer;" class="media3" id="close" >
        </div>
  
         
        <div class="content media4">
        
            <h3 style="text-align: left; margin-top: 15px;" class="media5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이 나이</h3>
            
            <span class="grade"><img src="${pageContext.request.contextPath}/images/신생아no.png" class="gradeImgSize media6"  id="newbornBaby"></span>
            <span class="grade"><img src="${pageContext.request.contextPath}/images/영아no.png"  class="gradeImgSize media6"  id="baby"></span>
            <span class="grade"><img src="${pageContext.request.contextPath}/images/유치원no.png" class="gradeImgSize media6"  id="kinder"></span>
            <span class="grade"><img src="${pageContext.request.contextPath}/images/초등학생no.png" class="gradeImgSize media6"   id="elementary"></span>
            <br>
            <span class="grade2  media7">&nbsp;&nbsp;신생아</span>
            <span class="grade2 media7">&nbsp;&nbsp;&nbsp;영아</span>
            <span class="grade2 media7">&nbsp;&nbsp;&nbsp;&nbsp;유치원</span>
            <span class="grade2 media7">초등학생</span>
        </div>
        
        <hr>
        <div class="content media8">
            <h3 style="text-align: left;" class="media9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;돌봄 요일</h3>
            <div style="padding:15px; margin-bottom: -15px;" class="media10">
                <img src="${pageContext.request.contextPath}/images/월.png"  class="days2 media11" 
                 id="monday">
                <img src="${pageContext.request.contextPath}/images/화.png" class="days2 media11" 
                 id="tuesday" >
                <img src="${pageContext.request.contextPath}/images/수.png" class="days2 media11" 
                id="wednesday">
                <img src="${pageContext.request.contextPath}/images/목.png" class="days2 media11" 
                id="thursday">
                <img src="${pageContext.request.contextPath}/images/금.png" class="days2 media11" 
                id="friday">
                <img src="${pageContext.request.contextPath}/images/토.png" class="days2 media11"  
                id="saturday">
                <img src="${pageContext.request.contextPath}/images/일.png" class="days2 media11"  
                id="sunday">
            </div>
        </div>
        
        <hr>

        <div class="content media12">
            <h3 style="text-align: left;" class="media13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;돌봄 시간대</h3>
       
            <span class="timeIcon"><img src="${pageContext.request.contextPath}/images/아침1.png"  class="timeIcon media14" 
                id="morning"></span>
            <span class="timeIcon"><img src="${pageContext.request.contextPath}/images/오후1.png" class="timeIcon media14"
                id="lunch"></span>
            <span class="timeIcon"><img src="${pageContext.request.contextPath}/images/저녁1.png" class="timeIcon media14"
               id="dinner"></span>
                <div style="margin-bottom: 13px;" class="media16">
				<span class="time media15">오전9시~오후12시</span>
				<span class="time media15">오후12시~오후3시</span>
				<span class="time media15">오후3시~오후6시</span>
				</div>												
        </div>
       
        <hr>

        <div class="content media17">
            <h3 style="text-align: left;" class="media18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;원하는 시터 나이대</h3>
            
            <div class="time">
                <img src="${pageContext.request.contextPath}/images/20대1.jpg"  class="age media19"
                id="twenty"> 
                <img src="${pageContext.request.contextPath}/images/30대1.jpg" class="age media19"
                id="thirty"> 
                <img src="${pageContext.request.contextPath}/images/40대1.jpg" class="age media19"
                id="fourty"> 
                <img src="${pageContext.request.contextPath}/images/50대1.jpg" class="age media19"
                id="fifty">
                <img src="${pageContext.request.contextPath}/images/60대1.jpg"  class="age media19"
                id="sixty">
                
            </div>
        </div>
        
        <hr>

        <div class="content media20">
            <h3 style="text-align: left;" class="media21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;원하는 활동</h3>
            
            <div class="time media22" style="margin-top: 15px height: 175px; ">
                <div >
                <img src="${pageContext.request.contextPath}/images/no실내놀이.png" class="activity media23"
                id="play">
                <img src="${pageContext.request.contextPath}/images/no등하원.png" class="activity media23"
                id="goingSchool" >
                <img src="${pageContext.request.contextPath}/images/no밥챙겨주기.png"class="activity media23"
                id="makeEat">
                <img src="${pageContext.request.contextPath}/images/no청소.png" class="activity media23" 
                id="cleaning">
                <img src="${pageContext.request.contextPath}/images/no학습지도.png" class="activity media23"
                id="study">
                <div class="media25">
                    <span style="margin:17.3px;" class="media24">실내놀이</span>
                    <span style="margin: 2px;"class="media24">등하원</span>
                    <span style="margin: 15px;"class="media24">밥 챙겨주기</span>
                    <span style="margin: 15px;"class="media24">청소</span>
                    <span style="margin: 15px;"class="media24">학습 지도</span>

                </div>
                </div>
            </div>
        </div>




</div>

</body>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/searchDetail.js"></script>



</html>