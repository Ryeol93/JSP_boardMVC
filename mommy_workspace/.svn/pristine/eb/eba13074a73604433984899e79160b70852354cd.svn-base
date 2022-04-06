<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

 
<!DOCTYPE html>

<html>
	<head>
		<title>시터 찾기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.googleapis.com">
		 <script src="https://code.jquery.com/jquery-latest.min.js" type="application/javascript"></script>
  <script type="application/javascript" src="https://zelkun.tistory.com/attachment/cfile8.uf@99BB7A3D5D45C065343307.js"></script>
<link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.gstatic.com" >
<link href="${pageContext.request.contextPath}/https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/assets/css/searchMom.css" rel="stylesheet" >
	<link href="${pageContext.request.contextPath}/assets/css/loginModal.css" rel="stylesheet" type="text/css"> 
	<link rel="icon" href="${pageContext.request.contextPath}/images/favicon3.ico" type="image/x-icon" sizes="16x16"/>
	</head>
	<body>
		<c:set var="momList" value="${momList}"/>
		<c:set var="page" value="${page}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="total" value="${total}"/>
		<c:set var="year" value="<%=new java.util.Date()%>" />
		<c:set var="year"><fmt:formatDate value="${year}" pattern="yyyy" /></c:set> 
		
		
<!-- Header -->
  <jsp:include page="../fix/header.jsp" flush="true"/>
			
			<!-- Main -->
			<div class="main">
			
			
			<!-- Aside -->
        	<jsp:include page="../fix/aside.jsp" flush="true"/>
        
        
        
        
			<br><br>
			<h3 style="font-family: 'GmarketSansLight'; font-size: 28px; margin-bottom: 100px;" class="h3"> 시터 찾기</h3>
			 
			 
			 				<!--돌봄지역-->
		
					<div class="locationFilter_1">
					<div class="locationImg">
						<img src="${pageContext.request.contextPath}/images/location2.png" style="width: 100%; " class="media_img">
					</div>
					<span class="locationInput span openBtn3" id="searchArea">
						돌봄지역을 선택해주세요.</span>
					</div>
				<div class="locationFilter_wrap">	
					<!-- 돌봄유형 -->
				 	<div class="locationFilter_2">
						<div class="locationImg baby">
							<img src="${pageContext.request.contextPath}/images/baby2.png" style="width: 100%; " class="media_img">
						</div>
						<span class="locationInput span openBtn2" id="careType">돌봄유형 선택하기.</span>
					</div>
	
	
	
				<!-- 상세검색 -->
				<div class="detailSearch" >
					<button class="openBtn" id="searchDetail" style="cursor: pointer;">
					<img src="${pageContext.request.contextPath}/images/filter.png" class="filter" style=" margin-top: 4px;" >
					
					<span>상세검색</span></button>
				</div> 

		</div>

			 
		<c:choose>
				 <c:when test="${userNum eq null}">
				   <div id="modal" class="modal-overlay" style="z-index: 2 !important; position: fixed;">
         
        <div class="modal-window">
            <div class="title">
                <h3>1분만에 회원가입하고</h3>
            </div>
            <div class="content">
                <br>
                <br>
                <br>
                <img alt="icon" src="https://cdn.mom-sitter.com/momsitter-app/static/public/affordance/popup-image-1.svg">
                <p>시터의 다양한 인증을 빠르고 정확하게 확인!</p>
                <img alt="icon" src="https://cdn.mom-sitter.com/momsitter-app/static/public/affordance/popup-image-2.svg">
                <p>시터의 활동 가능 시간을 간단하게 확인!</p>
                <img alt="icon" src="https://cdn.mom-sitter.com/momsitter-app/static/public/affordance/popup-image-3.svg">
                <p>원하는 시터에게 나의 카톡 연락처 남기기!</p>
                <a class= "a-button" href ="${pageContext.request.contextPath}/user/UserJoin.user"><button class="button-size01">가입하기</button></a>
                
            </div>
        </div>
    </div>
				 
				  </c:when>
	
				</c:choose>
	 





<!-- ********************************************************** -->

		<div class="userAll" name="userAll">
		
		
		<div ></div>
		 <c:choose>
			<c:when test="${momList != null and fn:length(momList) > 0}">
				<c:forEach var="mom" items="${momList}">
					<c:if test="${mom.getProfileProcess() == 1}">
						<input type="hidden" value="${mom.getProfileNum()}"> 
						
							<!-- 유저정보 -->
							<div class="userPf">
						<%-- 	 	<img src="${pageContext.request.contextPath}/images/heart.png" class="heart" id="heart"> --%>
							
							<div class="userImg ">
							<c:choose>
										<c:when test="${empty mom.getProfilePicture()}">
											<img src="${pageContext.request.contextPath}/images/기본 이미지.png"class="userImgDetail medi2">
										</c:when>
										<c:otherwise>
											<img src="/profileData/${mom.getProfilePicture()}" class="userImgDetail ">
										 </c:otherwise>
									</c:choose> 
							<div>
							</div>
									<c:set var="count" value="${mom.getCheckMedi()+mom.getCheckUniversity()+mom.getCheckMom()+mom.getCheckTeacher()+mom.getCheckCitizen() }"/>
									<p class="p p4">확인된 인증 <span class="span" style="color: rgb(247, 87, 87); font-weight: bold;">${count}</span>개</p>
									
									<div class="certify ">
									
									<div>
									<c:choose>
										<c:when test="${mom.getCheckMedi() ==1 }">
											<input type="button" value="건강인증" class="certifyList medi5 p3" style="color:white !important" >
										</c:when>
									</c:choose>
									<c:choose>
										<c:when test="${mom.getCheckUniversity() ==1 }">
											<input type="button" value="학력인증" class="certifyList medi5 p3" style="color:white !important" >
										</c:when>
									</c:choose>
									<c:choose>
										<c:when test="${mom.getCheckMom() ==1 }">
											<input type="button" value="부모님인증" class="certifyList medi5 p3" style="color:white !important" >
										</c:when>
									</c:choose>
									<c:choose>
										<c:when test="${mom.getCheckTeacher() ==1 }">
											<input type="button" value="선생님인증" class="certifyList medi5 p3" style="color:white !important" >
										</c:when>
									</c:choose>
									<c:choose>
										<c:when test="${mom.getCheckCitizen() ==1 }">
											<input type="button" value="본인인증" class="certifyList medi5 p3" style="color:white !important" >
										</c:when>
									</c:choose>
									</div>	
			
									</div>
							</div>
								<div class="userName">

							<%-- 	<h4 style="margin-bottom: 4px;"><a href="${pageContext.request.contextPath}/service/LookSitterProfileOk.ser?userNum=${mom.getUserNum()}"  style="border:none;">             --%>                                      

								<h4 style="margin-bottom: 0;" class="h4"><a href="${pageContext.request.contextPath}/service/LookSitterProfileOk.ser?userNum=${mom.getUserNum()}&profile=${mom.getProfileNum()}"  style="border:none;">                                                  

								${fn:substring(mom.getProfileDescription(),0,15)}</a></h4>
								<div class="infoDetail medi7">${mom.getLocationSido()}  ${mom.getLocationSigun()}</div>&nbsp;
								<div class="infoDetail medi7">${year-mom.getUserBirthYear()}세</div>
								&nbsp;&nbsp;<div class="infoDetail medi7 medi13">희망시급 ${mom.getProfileSalary()}원</div>
							
							
							<!-- 돌봄가능날짜 -->
										<div class="day" style="margin-top: 7px;  margin-left: -1px;">
										
										<div class="days medi9" style="margin-left: -3.5px;"> 
										<c:choose>
										<c:when test="${mom.getP_mon()==1}"> 
											<img src="${pageContext.request.contextPath}/images/월1.png" style="width: 35px;" class="medi10">
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/월.png" style="width: 35px;" class="medi10" >
										</c:otherwise>
										</c:choose>
										
										<c:choose>
										<c:when test="${mom.getP_tue()==1}">
											<img src="${pageContext.request.contextPath}/images/화1.png" style="width: 35px;" class="medi10" >
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/화.png" style="width: 35px;"  class="medi10">
										</c:otherwise>
										</c:choose>
										
										<c:choose>
										<c:when test="${mom.getP_wed()==1}">
											<img src="${pageContext.request.contextPath}/images/수1.png" style="width: 35px;"  class="medi10">
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/수.png" style="width: 35px;"  class="medi10">
										</c:otherwise>
										</c:choose>
										
										<c:choose>
										<c:when test="${mom.getP_thu()==1}">
											<img src="${pageContext.request.contextPath}/images/목1.png" style="width: 35px;"  class="medi10">
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/목.png" style="width: 35px;"  class="medi10">
										</c:otherwise>
										</c:choose>
										
										<c:choose>
										<c:when test="${mom.getP_fri()==1}">
											<img src="${pageContext.request.contextPath}/images/금1.png" style="width: 35px;"  class="medi10">
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/금.png" style="width: 35px;"  class="medi10">
										</c:otherwise>
										</c:choose>
										
										<c:choose>
										<c:when test="${mom.getP_sat()==1}">
											<img src="${pageContext.request.contextPath}/images/토1.png" style="width: 35px;"  class="medi10">
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/토.png" style="width: 35px;"  class="medi10">
										</c:otherwise>
										</c:choose>
										
										<c:choose>
										<c:when test="${mom.getP_sun()==1}">
											<img src="${pageContext.request.contextPath}/images/일1.png" style="width: 35px;"  class="medi10">
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/일.png" style="width: 35px;"  class="medi10">
										</c:otherwise>
										</c:choose>
								
										</div>
									</div>
						<%-- 
							<div class=chatIcon>
							<img src="${pageContext.request.contextPath}/images/chatIcon.png" style="width: 100%;margin-top: 5px; float: left;">
							</div>
							<span class="span" style="line-height: 2;">&nbsp;"${mom.getProfileDescription()}"</span> --%>
							</div>	
							</div>
	 
	
							</c:if>
					</c:forEach>
					<%-- 	<c:if test="${mom.getProfileProcess() != 1}">		
						<div style="font-size: 42px; padding: 237px;text-align: center;border: 1px solid #d6d6d6;border-radius: 15px;margin-top: 27px !important;">
						현재 작성된 게시글이 없습니다.</div>
						</c:if> --%>
				</c:when>
			</c:choose> 
		</div>
		
		
		<!-- 상세검색 모달 --> 

                <div class="modal hidden">
                 <div class="bg"></div>
                    <div class="modalBox"> 
							<!-- main -->
   
						<div class="main2">
				        <div class="header">
				        <div	style="
				           	background-color: #ffb61a9e;
					    	width: 551px;
					      	height: 83px;
					   		line-height: 5;">
					    <h3 style="color:white; margin-left: -30px; font-size:23px;padding-top: 25px; " class="media2">상세 검색</h3></div>
				      <%--  onclick="location.href='${pageContext.request.contextPath}/service/MomDetailModalOk.ser'" --%>
				        <input type="button" value="적용" class="apply" style="cursor: pointer; color: #ffb61a !important;" id="close" >
				        </div>
  
         
				        <div class="content media4">
				        
				            <h3  class="font-size">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이 나이</h3>
				            
				            <span class="grade"><img src="${pageContext.request.contextPath}/images/신생아no.png" class="gradeImgSize media6"  id="newbornBaby"></span>
				            <span class="grade"><img src="${pageContext.request.contextPath}/images/영아no.png"  class="gradeImgSize media6"  id="baby"></span>
				            <span class="grade"><img src="${pageContext.request.contextPath}/images/유치원no.png" class="gradeImgSize media6"  id="kinder"></span>
				            <span class="grade"><img src="${pageContext.request.contextPath}/images/초등학생no.png" class="gradeImgSize media6"   id="elementary"></span>
				    		<div style="margin-top: -11px;">
				            <span class="grade2  media7">&nbsp;&nbsp;&nbsp;신생아</span>
				            <span class="grade2 media7">&nbsp;&nbsp;영아</span>
				            <span class="grade2" >&nbsp;&nbsp;유치원</span>
				            <span class="grade2 media7">초등학생</span>
				            </div>
				        </div>
        
				        <hr>
				        <div class="content media8">
				            <h3  class="font-size">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;돌봄 요일</h3>
				            <div style="     margin-bottom: 4px; margin-top: -14px;" class="media10">
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
					            <h3 " class="font-size">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;돌봄 시간대</h3>
					       
					            <span class="timeIcon"><img src="${pageContext.request.contextPath}/images/아침1.png"  class="timeIcon media14" 
					                id="morning"></span>
					            <span class="timeIcon"><img src="${pageContext.request.contextPath}/images/오후1.png" class="timeIcon media14"
					                id="lunch"></span>
					            <span class="timeIcon"><img src="${pageContext.request.contextPath}/images/저녁1.png" class="timeIcon media14"
					               id="dinner"></span>
					                <div style="margin-bottom: 13px;    margin-top: -17px;" class="media16">
									<span class="time media15">오전9시~오후12시</span>
									<span class="time media15">오후12시~오후3시</span>
									<span class="time media15">오후3시~오후6시</span>
									</div>												
					        </div>
       
					        <hr>
					
				<%-- 	        <div class="content media17">
					            <h3 style="text-align: left;" class="font-size">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;원하는 시터 나이대</h3>
					            
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
					        
					        <hr> --%>

						        <div class="content media20">
						            <h3  class="font-size">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;원하는 활동</h3>
						            
						            <div class="time media22" style="margin-top: 15px height: 175px; ">
						                <div style="margin-top: -16px !important;" >
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
						                    <span style="margin:37.3px;" class="media24">실내놀이</span>
						                    <span style="margin: 9px;"class="media24">등하원</span>
						                    <span style="margin: 33px;"class="media24">밥 챙겨주기</span>
						                    <span style="margin: 16px;"class="media24">청소</span>
						                    <span style="margin: 34px;"class="media24">학습 지도</span>
						
						                </div>
						                </div>
						            </div>
						        </div>
						        
						        
						        <!------------------------------------------------------------------------------  -->
		                    </div>
	                    </div>
					</div>
                
                
		
		
		   <!-- 돌봄유형 선택 모달 --> 

                <div class="modal2 hidden">
                    <div class="bg2"></div>
                    <div class="modalBox2">
                     <!-- 돌봄유형 모달창 main -->
    <div class="main3">
   
        <div style=" background-color: #ffb61a9e; width: 477px;height: 86px; text-align: center;">
        <h2 style="color:white; line-height: 3;font-size: 29px;">&nbsp;돌봄유형 선택</h2></div>
    	<div style=" text-align: center;width: 477px; height: 683px;" >
        <br>
        <h3 style="margin: 1px; font-family: GmarketSansMedium;" >어떤 돌봄이 필요하세요?</h3>
        <p style="margin: 0; color: gray;" class="media21">돌봄 유형을 선택하시면, 맞춤 시터를 보여드려요</p>

        <div>
            <div class="child">
                2~10세 정기 돌봄
            </div>

            <div>
                <img src="${pageContext.request.contextPath}/images/등하원.png" style="width: 50px; margin: 0 70px; cursor:pointer;" id="goToSchool" >
                <img src="${pageContext.request.contextPath}/images/학습지도.png" style="width: 50px; margin: 0 70px; cursor:pointer;" id="teach">
            </div>
            <div style="margin: 0 auto; width: 500px; height: 45px; margin-left: -7px; margin-top: -15px;" >
                <div class="text">
                   주 5일 등하원 
                    <p class="p2">기관 전/후 등하원 및 돌봄</p>
                </div>
                <div class="text" style="margin-left: 60px;">
                    놀이/학습시터
                    <p class="p2">주 1~4일 또는 짧은시간</p>
                </div>
            </div>
        </div>



        <div>
            <div class="child" style="margin-top:20px;">
                신생아/영아 정기돌봄
            </div>
            <div>
                <img src="${pageContext.request.contextPath}/images/풀타임.png" style="width: 55px; margin: 0 70px; cursor:pointer;" id="fullTime">
                <img src="${pageContext.request.contextPath}/images/보조.png" style="width: 55px; margin: 0 70px; cursor:pointer;"  id="assistance">
            </div>
            <div style="margin: 0 auto; width: 500px; height: 45px; margin-left: 3px; margin-top: -14px !important;" >
                <div class="text" style="margin-left: 91px;">
                  풀타임
                    <p class="p2">평균8시간 이상</p>
                </div>
                <div class="text" style="margin-left: 139px;">
                    보조
                    <p class="p2">짧은시간</p>
                </div>
            </div>
        </div>


        <div class="media15">
            <div class="child" style="margin-top:20px;">
                긴급/단기 돌봄
            </div>
            <div>
                <img src="${pageContext.request.contextPath}/images/긴급.png" style="width: 50px; cursor:pointer;" id="emergency">

            </div>
            <div class="main" style="font-weight: bold;">
                긴급/단기
                <p class="p2">하루 또는 며칠만 급하게 필요할 때</p>
              </div>
        	</div>

            <button class="button" id="fullType" 
            onclick="location.href='/mommy_workspace/service/SearchMomOk.ser?careType=6'";
            >모든 돌봄유형 보기</button>
            
			</div>

	   				 </div>
                    </div>
                </div>
		
		
		<!-- 돌봄지역 선택 모달 -->
		
		 <div class="modal3 hidden">
                    <div class="bg3"></div>
                    <div class="modalBox3">
                    	<div class="location_title">
                      		<h2 style="color: white; line-height: 3; font-size: 29px;">&nbsp;돌봄지역 선택</h2>
          				</div>
                      <div class="region_select">
						    <select id="sido" name="sido" class="area" style="background-color: white; cursor:pointer;">
						      <option value="" >'시/도'를 선택해주세요</option>
						    </select>
						    <select id="sigugun" name="sigugun" class="area" style="background-color: white; cursor:pointer;">
						      <option value="" >'시/군/구'를 선택해주세요</option>
						    </select>
						    <select id="dong" name="dong" class="area" style="background-color: white; cursor:pointer;">
						      <option value="">'동'을 선택해주세요</option>
						    </select>
						     <div>
					               <input class="region_btn" type="button" id="areaButton" value="확인" style="    color: #ffb61a !important;
				    outline: 0 !important;
				    border: none !important;
				    padding: 0 !important;
				    line-height: 0;">
					            </div>
						 </div>
                   </div>
               </div>
		
	
	<br>
	<br>
	</div>
	
<!-- footer -->
        <jsp:include page="../fix/footer.jsp" flush="true"/>

	</body>

		<!-- Scripts -->
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/searchMom.js"></script>

<script type="text/javascript" >
var contextPath = "${pageContext.request.contextPath}";

</script>




























</html>