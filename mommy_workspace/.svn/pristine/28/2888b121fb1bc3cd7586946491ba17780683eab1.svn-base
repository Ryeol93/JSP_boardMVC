<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>     
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
      <link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.googleapis.com">
      <link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.gstatic.com" >
      <link href="${pageContext.request.contextPath}/https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/lookMomProfile2.css" rel="stylesheet" type="text/css">
    <title>부모님 프로필 상세보기</title>


</head>

<body>
	<c:set var="user" value="${user}"/>
	<c:set var="userAge" value="${userAge}"/>

<!-- Aside -->
   <div class="wrapper">
	<div class="inner">
        <jsp:include page="../fix/aside222.jsp" flush="true"/>
            </div>
	</div>
       
<!-- Header -->
  <jsp:include page="../fix/header.jsp" flush="true"/>
         
            <!-- aside -->
        <aside class = "aside2">
        
        <div style="
        width: 300px; 
        border : solid 1px #e2eaec;
        overflow: hidden;
        padding: 25px;
        background-color: white;
        ">
        <div>
        	<h5 style = "font-weight:500">채팅 신청하기</h5>
                <button class = "buttonAside" id = "chatbutton" style="background-color:#ff7065 !important;">채팅 신청하기</button>
        	</div>
        </div>
        <br>
        <div style="
        width: 300px; 
        border : solid 1px #e2eaec;
        overflow: hidden;
        padding: 25px;
        background-color: white;
        ">
        
        
            <div>
                <h5 style = "font-weight:500">일자리 찾기 바로가기</h5>
                <p style = "font-size:16px;">다른 부모님이 올린 공고를 확인해보세요! 어디서 일을 구해야할 지 모르겠다면, 부모님들과 손쉽게 만날 수 있는 마미랑을 이용해보세요.</p>
                <a href = "${pageContext.request.contextPath}/app/serviceSearch/searchJob.jsp;"><button class = "buttonAside">일자리 찾기</button></a>
            </div>
        </div>
  
    </aside>
         
         
      <!-- Main -->

         
   
      <!-- Main -->

         

     



      <div id="main" class="container medium" style="margin-top: -100px;">
         <!-- profile header -->
        <p style="font-size: 15px; width: 57%; margin-top: -46px; display: inline-block;">작성시간[2022-03-07]</p>
              <div style="display:inline; position: relative;" class="media_correct">
	                  <a class="a" style="font-size:17px; cursor: pointer;">수정</a> &nbsp;&nbsp;&nbsp;
	                  
	                	<a class="a" style="font-size:17px; cursor: pointer;">삭제</a>  
	                  </div>
         <br>
            <div style = "width: 70%; background: white; position:relative; display: inline-block;" class="mobileDiv">
                <div style="text-align: left; display:inline-block; margin-left:15px;">
                    <label><input type="file" style="display:none;">
                    <img src="${pageContext.request.contextPath}/images/후기1.png" style="width: 100px; border-radius: 150px; cursor: pointer; ">
                    </label>
                    <div style = "position:absolute; top: 20px; left: 136px;">
                          <h3 style="margin-bottom: 3px; font-size: 18px;">${user.getUserName()}
                          <img src="${pageContext.request.contextPath}/images/heart.png" class="heart" id="heart"></h3>
                          <span style = "margin-top: 20px; font-size:16px;">${userAge}세,                                    
                           <c:choose>
                                    	<c:when test="${user.getUserGender() == 1}">남</c:when>
                                    	<c:when test="${user.getUserGender() == 0}">여</c:when>
                                    	<c:otherwise>정보없음</c:otherwise>
                                    </c:choose> </span>
                     </div>
                  
                </div>
                
                
                <div class="mobileEntBut">  
                <a href = "#"><button class = "buttonAside" style="background-color:#ff7065 !important; ">지원하기</button></a>
                </div>
                <hr class="split">
              		 	<div style="display: flex; margin-top: 23px; margin-bottom: 10px;" > 
		              		 	<p class="innerTitle" style="width:100px; margin:0px ;">희망시급</p>
		                        <div style="display: inline-block; width: 28px; margin-left: 33px;">
		                            <img src="${pageContext.request.contextPath}/images/money.png" style="width: 100%;">
		                        </div>
		                        <div style="display:inline-block;"><span style="font-size:20px;">10,000원</span></div>
                     </div>   
                <hr class="split">

                <div class = "innerContent mobileWant">
                <p class ="innerTitle" >⭐이런 사람을 원해요</p>
                
                <div style = "float:left; margin-right:30px; margin-top: 20px;">
                    <p style="margin: 0;  font-size: 15px; color:#797d7e;
                       
                    ">정기적으로 일해주실 분만 구합니다.</p>
                   
                </div>


                </div>

				<div class="mobileMoney" style="display: none;">
				<p class ="innerTitle mobileP" style="margin:0px;">희망 시급</p>
				<span>10,000원</span>
				</div>



                <hr class = "split">
                    <div class = "innerContent2" style="float: left;">
                        <p class ="innerTitle" style="margin-bottom: 29px;">기본정보</p>

                        <ul style="list-style: none; margin-left: -28px; width: 423px; margin-bottom: 0; ">
                            <li class="liCss" id="li1"> <img src="${pageContext.request.contextPath}/images/시터 나이.png" class="imgIcon">
                            <a onMouseOver="this.innerHTML='20대~40대'" onMouseOut="this.innerHTML='원하는 시터나이'"> 원하는 시터나이</a> </li>
                            
                            <br><li class="liCss" id="li2"><img src="${pageContext.request.contextPath}/images/활동아이콘.png" class="imgIcon">
                            <a onMouseOver="this.innerHTML='실내놀이, 등하원, 밥해주기'" onMouseOut="this.innerHTML='원하는 활동'">원하는 활동</a> </li>
                            
                            <br><li class="liCss" id="li3"><img src="${pageContext.request.contextPath}/images/돌봄가능연령아이콘.png" class="imgIcon">
                              <a onMouseOver="this.innerHTML='초등학생'" onMouseOut="this.innerHTML='아이 정보'">아이 정보</a></li>
                            
                            <br><li class="liCss" id="li4"><img src="${pageContext.request.contextPath}/images/돌봄가능기간.png" class="imgIcon">
                              <a onMouseOver="this.innerHTML='시작날짜[2022-03-07] / 3개월 이상'" onMouseOut="this.innerHTML='원하는 돌봄 기간'">원하는 돌봄 기간</a></li>
                            
                            <br><li class="liCss" id="li5"><img src="${pageContext.request.contextPath}/images/활동가능시간.png" class="imgIcon">
                              <a onMouseOver="this.innerHTML='오후3시~오후6시'" onMouseOut="this.innerHTML='원하는 돌봄 시간'">원하는 돌봄 시간</a></li>
                           

                        </ul>
                       

                        
                    </div>
                    <div class = "innerContent add" style="float: left;  margin-left: 32%;">
                        <p class ="innerTitle" style="margin: 0;"><img src="${pageContext.request.contextPath}/images/지역.png" style="width: 25px; margin-right: 10px; ">활동가능 지역</p>
                        <p style="margin:0px; font-size: 14px;">(경기도 용인시 수지구 상현동)</p>
                        <div >

								<div id="map" style="width:350px;height:220px;"class="map" ></div>
						

 

                        </div>
                    </div>


                     
        
                                        
            <hr class="split" >
               
           
                <div class = "innerContent" style = "position:relative;">
                   






                </div>
                
            </div>
                
            </div>
           
<!-- footer -->
        <jsp:include page="../fix/footer.jsp" flush="true"/>
               
         
      
</body>
<script src="assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/additional.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/lookMomProfile2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6316b3fde93fb6bb4a1526abb1494b47&libraries=services"></script>
<script>
//맵 api

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('경기도 용인시 수지구 상현동', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

     

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
    map.relayout();
	map.setCenter(coords);
});    

</script>




</html>