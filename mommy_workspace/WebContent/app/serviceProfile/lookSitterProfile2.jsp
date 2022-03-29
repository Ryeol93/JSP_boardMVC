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
          <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lookSitterProfile2.css" type="text/css"/>
          <link rel="icon" href="${pageContext.request.contextPath}/images/favicon3.ico" type="image/x-icon" sizes="16x16"/>
    <title>시터 프로필 상세보기</title>

</head>

<body>

   <c:set var="sitter" value="${sitterInfo}"/>
   <c:set var="userNum2" value="${userNum2}"/>
   <c:set var="profileNum" value="${profileNum}"/>
   	<c:set var="fileName" value="${fileName}"/>
   <c:set var="profile" value="${profile}"/>
   <c:set var="userAge" value="${userAge}"/>
   <!--  userNum2 = 프로필을 쓴 사람의 유저넘 -->
   
    <!-- Aside -->
   <div class="wrapper">
   <div class="inner">
        <jsp:include page="../fix/aside.jsp" flush="true"/>
            </div>
   </div>


 <!-- Header -->
  <jsp:include page="../fix/header.jsp" flush="true"/>
  
  

         
         
     <!-- Main -->
      
      <div id="main" class="container medium">
  
    
          
         <!-- profile header -->
                  
                  <p style="font-size: 15px; width: 57%; margin-top: -46px; display: inline-block;">작성시간[${sitter.getProfileDate()}]</p>
                     <div style="display:inline; position: relative;" class="media_correct">
                  <br>
         
            <div  class="moMain" style = "width: 70%; background: white; position:relative;">
            
            
                
     <aside class = "aside2">
     <c:choose>
     <c:when test="${sitter.getUserNum() eq userNum2}">
        </c:when>
        <c:otherwise>
        <div style="
        width: 300px; 
        border : solid 1px #e2eaec;
        overflow: hidden;
        padding: 25px;
        background-color: white;
        ">
        <div>
           <h5 style = "font-weight:500" >돌봄 신청하기</h5>
              <button class = "buttonAside openBtn apply"  name="modal-btn" id = "modal-btn" style="background-color:#ff7065 !important;">돌봄 신청하기</button></a>
           </div>
        </div>
        </c:otherwise>
        </c:choose>
        <br>
        <div style="
        width: 300px; 
        border : solid 1px #e2eaec;
        overflow: hidden;
        padding: 25px;
        background-color: white;
        ">
        
            <div>
                <h5 style = "font-weight:500">시터 찾기 바로가기</h5>
                <p style = "font-size:16px;">다른 시터들의 프로필을 확인해보세요! 마미랑만의 인증 시스템을 거친 믿음직한 시터들을 지금 바로 만나보세요.</p>
                <a onclick="location.href='${pageContext.request.contextPath}/service/SearchMomOk.ser'"><button class = "buttonAside">시터 찾기</button></a>
            </div>
        </div>
  
    </aside>
    
    
               <!--삭제 버튼 -->
                     <!-- 미구현 ================================================================= -->
                     <c:if test="${sitter.getUserNum() eq userNum2}">
                     
                    <div class="top_wrap">
                      <a class="a" style="font-size:17px;" onclick="location.href='${pageContext.request.contextPath}/service/SitterProfileDeleteOk.ser?profile=${profile}&userNum2=${userNum2}'">
                      <img class="can" style="max-width: 20px !important; display: inline-block; float: right;" src="https://cdn.discordapp.com/attachments/953473528030715988/955867805826297876/06f4ee6cc21129a5.png">
                      </a>  
                   </div>
                      </c:if>
            
            
  
                <div style="text-align: left; display:inline-block; margin-left:15px;">
                  
                     <c:choose>
                    	<c:when test="${empty fileName}">
                        <img src="https://cdn.discordapp.com/attachments/954273372760571914/955479398054772796/unknown.png" style="width: 100px; border-radius: 150px; ">
                    	</c:when>
                    	<c:otherwise>
                        <img src="/profileData/${fileName}" style="width: 100px; height: 100px;border-radius: 150px; ">
                    	</c:otherwise>
                    </c:choose>
                    
                    <div style = "position:absolute; top: 20px; left: 136px;">
                    <!-- 유저 이름===============================================     -->
                       <h3 style="margin-bottom: 3px; font-size: 18px;">${sitter.getUserName()}
                     <c:choose>
                        <c:when test="${check eq 1}">
                         <img src="https://cdn.discordapp.com/attachments/954273372760571914/955209502918082700/heart.png" class="heart" id="heart">
                        </c:when>
                        <c:otherwise>
                         <img src="https://cdn.discordapp.com/attachments/954273372760571914/955209503157145660/emptyHeart.png" class="heart" id="heart">
                        </c:otherwise>
                     </c:choose>
                         </h3>
                          <span style = "margin-top: 20px; font-size:16px;"><c:out value="${userAge}"/>살, 
                          <c:choose>
                             <c:when test="${sitter.getUserGender()==2}">
                                <c:out value="여"/>
                             </c:when>
                             <c:when test="${sitter.getUserGender()==1}">
                                <c:out value="남"/>
                             </c:when>
                             <c:otherwise>
                                <c:out value="정보없음"/>
                             </c:otherwise>
                          </c:choose>
                          </span>

                     </div>
                     <div  style = "position:absolute; top: 30px; left: 640px;" class="media_star">
                        <!-- <img src="images/star.png" style="width: 30px; font-size: 12px;"> -->
                      
                     </div>
                </div>


                
                <hr class="split">
                <div class = "innerContent">
	                <p class ="innerTitle" style="float: left; margin: 0;">⭐한 줄 소개</p>
	                <p style="margin: 0;  font-size: 15px; color:#797d7e;"><br>${sitter.getProfileDescription()}</p>
	                <hr class = "split">
	                <div style = "float:left; margin-right:30px; margin-top: 20px;"></div>
                </div>


                
                    <div class = "innerContent2" style="float: left; width: 100%;    margin-top: -20px;">
                        <p class ="innerTitle">기본정보</p>

                           <ul style="list-style: none; margin-left: -28px; width: 859px; margin-bottom: 0; ">
                        <div>
                            <li class="liCss" id="li1"> <img src="${pageContext.request.contextPath}/images/인증완료.png" class="imgIcon">
                            <a  class="b"> 인증완료 여부 </a> 
                            <div style="display: inline-block;" class="subContent">
                            	  <c:choose>
						         <c:when test="${sitter.getCheckMedi()==1}">
						            <div class="activity">건강인증</div>
						         </c:when>
						         </c:choose>
						            <c:choose>
						         <c:when test="${sitter.getCheckMom()==1}">
						               <div class="activity">부모인증</div>
						         </c:when>
						         </c:choose>
						            <c:choose>
						         <c:when test="${sitter.getCheckTeacher()==1}">
						           <div class="activity">교사인증</div>
						         </c:when>
						         </c:choose>
						            <c:choose>
						         <c:when test="${sitter.getCheckCitizen()==1}">
								 <div class="activity">본인인증</div>
						         </c:when>
						         </c:choose>
						         <c:choose>
						         <c:when test="${sitter.getCheckUniversity()==1}">
						           <div class="activity">학력인증</div>
						         </c:when>
						         </c:choose>
	                          </div>
                            </li>
                         </div>
                            
                            
                            <div>
	                            <li class="liCss" id="li2"><img  src="${pageContext.request.contextPath}/images/활동아이콘.png" class="imgIcon">
	                            	<a class="b" >가능한 활동 </a>
	                            	 <div style="display: inline-block;"class="subContent">
									     <c:choose>
								         <c:when test="${sitter.getCareIndoor()==1}">
								       <div class="activity">실내활동</div>
								         </c:when>
								         </c:choose><c:choose>
								         <c:when test="${sitter.getCareCommit()==1}">
								            <div class="activity">등하원</div>
								         </c:when>
								         </c:choose><c:choose>
								         <c:when test="${sitter.getCareFood()==1}">
								        <div class="activity">밥챙겨주기</div>
								         </c:when>
								         </c:choose><c:choose>
								         <c:when test="${sitter.getCareClean()==1}">
								         <div class="activity">청소</div>
								         </c:when>
								         </c:choose><c:choose>
								         <c:when test="${sitter.getCareStudy()==1}">
								        <div class="activity">학습지도</div>
								         </c:when>
								         </c:choose>
								         <c:choose>
								         <c:when test="${sitter.getCareEmergency()==1}">
								          <div class="activity">긴급돌봄</div>
								         </c:when>
								         </c:choose>    
		                         </div>
	                            </li>
                            </div>
                            
                         
                            <div>
	                            <li class="liCss" id="li3"><img src="${pageContext.request.contextPath}/images/돌봄가능연령아이콘.png" class="imgIcon">
	                              <a class="b">돌봄가능 연령 </a>
	                               <div style="display: inline-block;"class="subContent">
	                                    <c:choose>
								         <c:when test="${sitter.getBabyNewborn()==1}">
								          <div class="activity">신생아</div>
								         </c:when>
								         </c:choose>      
								         <c:choose>
								         <c:when test="${sitter.getBabyChild()==1}">
								           <div class="activity">영아</div>
								         </c:when>
								         </c:choose>      
								         <c:choose>
								         <c:when test="${sitter.getBabyKinder()==1}">
								            <div class="activity">유치원생</div>
								         </c:when>
								         </c:choose>      
								         <c:choose>
								         <c:when test="${sitter.getBabyElementary()==1}">
								             <div class="activity">초등학생</div>
								         </c:when>
								         </c:choose>      
      									</div>
	                            </li>
                            </div>
                            
                          
                            <div>
	                            <li class="liCss" id="li4"><img src="${pageContext.request.contextPath}/images/돌봄가능기간.png" class="imgIcon">
	                              <a class="b">활동가능 기간 </a>
		                              	 <div style="display: inline-block;"class="subContent ">
		                              	  <c:choose>
									         <c:when test="${not empty sitter.getP_periodStartDate()}">
									             <div style="width: 92px;" class="activity activity2">${sitter.getP_periodStartDate()} ~</div>
									         </c:when>
									         <c:otherwise> 
									             <div style="width: 92px;" class="activity activity2">시작일 미입력</div>
									         </c:otherwise>
									       </c:choose>
	                                         <c:choose>
									         <c:when test="${sitter.getP_week()==1}">
									          <div class="activity activity2">1주일 이상</div>
									         </c:when>
									         </c:choose>
									            <c:choose>
									         <c:when test="${sitter.getP_month()==1}">
									         <div class="activity activity2">1개월 이상</div>
									         </c:when>
									         </c:choose>
									            <c:choose>
									         <c:when test="${sitter.getP_quarter()==1}">
									            <div class="activity activity2">3개월 이상</div>
									         </c:when>
									         </c:choose>
									            <c:choose>
									         <c:when test="${sitter.getP_semiAnnual()==1}">
									         <div class="activity activity2">6개월 이상</div>
									         </c:when>
									         </c:choose>
      									</div>
	                              </li>
                              </div>
                                                                    
       
                            <div>
	                            <li class="liCss" id="li5"><img src="${pageContext.request.contextPath}/images/활동가능시간.png" class="imgIcon">
	                              <a class="b">활동가능 시간</a>
	                               <div style="display: inline-block;"class="subContent">
							      <c:choose>
						         <c:when test="${sitter.getP_morning()==1}">
						             <div style="width: 86px;" class="activity activity2">09:00~12:00</div>
						         </c:when>
						         </c:choose>
						         <c:choose>
						         <c:when test="${sitter.getP_lunch()==1}">
						         <div style="width: 86px;" class="activity activity2">12:00~15:00</div>
						         </c:when>
						         </c:choose>
						         <c:choose>
						         <c:when test="${sitter.getP_noon()==1}">
						               <div style="width: 86px;" class="activity activity2">15:00~18:00</div>
						         </c:when>
						         </c:choose>
									</div>
	                              </li>
                              </div>
                          
                          
                          <div>
							<li class="liCss" id="li6">
							<img src="${pageContext.request.contextPath}/images/일주일.png" class="imgIcon"> 
								<a class="b">원하는 돌봄 요일 </a>
								 <div style="display: inline-block;"class="subContent">
								<c:choose>
									<c:when test="${sitter.getP_mon()==1}">
										<button class="days">월</button>
									</c:when>
								</c:choose>
								<c:choose>
									<c:when test="${sitter.getP_tue()==1}">
										<button class="days">화</button>
									</c:when>
								</c:choose>
								<c:choose>
									<c:when test="${sitter.getP_wed()==1}">
										<button class="days">수</button>
									</c:when>
								</c:choose>
								<c:choose>
									<c:when test="${sitter.getP_thu()==1}">
										<button class="days">목</button>
									</c:when>
								</c:choose>
								<c:choose>
									<c:when test="${sitter.getP_fri()==1}">
										<button class="days">금</button>
									</c:when>
								</c:choose>
								<c:choose>
									<c:when test="${sitter.getP_sat()==1}">
										<button class="days">토</button>
									</c:when>
								</c:choose>
								<c:choose>
									<c:when test="${sitter.getP_sun()==1}">
										<button class="days">일</button>
									</c:when>
								</c:choose>
								</div>
								</li>
						</div>
						
						<hr class="split" >
                          
                          
                          
                       <!-- 지도 부분 -->
                    <div class = "map_wrap area">
                        <p class ="innerTitle" style="margin: 0;"><img src="${pageContext.request.contextPath}/images/지역.png" style="width: 25px; margin-right: 5px; ">활동가능 지역</p>
                        <p style="margin:0px; font-size: 14px;">(${sitter.getLocationSido()}  ${sitter.getLocationSigun()}  ${sitter.getLocationDong()})</p>
                    	<div id="map" style="width:570px;height:252px;" class="map" ></div>
                    </div>
                        </ul>
                       
                        
                    </div>

           
           <!-- 모달 --> 
			<div class="innerContent moAd1 ">
                <div class="modal hidden">
                    <div class="bg"></div>
                    <div class="modalBox">
                        <h3 class = "modalText">돌봄 신청하기</h3>
                           <p class = "modalSubText">카카오톡 아이디를 남겨주시면<br>
                                 빠른 시일 내에 연락드리겠습니다.</p>
                         <!--  <form style = "padding:5px 20px;"> -->
                           <div>
                           <input id="chatTitle" name="chatTitle" type = "text" placeholder="카카오톡 아이디" style="font-size:16px; margin-bottom:10px;">
                           <input id="chatContent" name="chatContent" type = "text" placeholder="한줄 요청 (최대 20자)" maxlength='20' style="font-size:16px;">
                             <div style = "margin: 20px auto; text-align: center;">
                                 <button class="submitBtn" onclick="insert()">요청 보내기</button>
                                 
                             </div>
                          </div>
                     <!--   </form>  -->
                    </div>
                </div>
                
                
                        

                        </div>
                   


                     
        
                                        
            <hr class="split" >
                <div class = "innerContent" style = "position:relative;">
                    <p class ="innerTitle" >희망 시급</p>   
                    
                    <div style="display: inline-block; width: 50px; "><img src="${pageContext.request.contextPath}/images/money.png" style="width: 100%;"></div>
                    <div style="
                    display: inline-block;
                    display: inline-block;
                    position: relative;
                    top: -12px;
                    left: 7px;
                    margin-bottom: -25px;"><h3>${sitter.getProfileSalary()} 원</h3></div>
                     
                </div>

                  </div>
                  </div>

</div>

</div>



<!-- footer -->
        <jsp:include page="../fix/footer.jsp" flush="true"/>
               
         
      
</body>


<script>var contextPath = "${pageContext.request.contextPath }";</script>
         <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/additional.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/lookSitterProfile2.js"></script>
			<script>
				var profileNum = "${profileNum}";
				var userNum = "${userNum}";
				var userNum2 = "${sitter.getUserNum()}";
				var profileNum = "${sitter.getProfileNum()}";
				console.log('프로파일넘'+profileNum);
			</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6316b3fde93fb6bb4a1526abb1494b47&libraries=services"></script>


<script>

var address="${sitter.getLocationSido()}";
var address2 ="${sitter.getLocationSigun()}";
var address3="${sitter.getLocationDong()}";
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
geocoder.addressSearch(address+address2+address3, function(result, status) {

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