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
   	 <link rel="stylesheet" href="${pageContext.request.contextPath}/https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
      <link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.googleapis.com">
      <link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.gstatic.com" >
      <link href="${pageContext.request.contextPath}/https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
      
        <link href="${pageContext.request.contextPath}/assets/css/WriteSitter.css" rel="stylesheet" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/etcMain.css" />
	<link rel="icon" href="${pageContext.request.contextPath}/images/favicon3.ico" type="image/x-icon" sizes="16x16"/>
	<script src="https://code.jquery.com/jquery-latest.min.js" type="application/javascript"></script>
  <script type="application/javascript" src="https://zelkun.tistory.com/attachment/cfile8.uf@99BB7A3D5D45C065343307.js"></script>
      
    <title>부모님 글 작성 및 수정</title>

</head>

<body>
<c:set var="userVO" value="${userVO}"/>
<c:set var="userAge" value="${userAge}"/>
<!-- Aside -->
     <div class="wrapper">
	<div class="inner">
        <jsp:include page="../fix/aside.jsp" />
            </div>
	</div>
         
     
<!-- Header -->
	<div class="wrapper">
		<div class="inner">
	  <jsp:include page="../fix/header.jsp" />
	     </div>
	</div>
         
         <!-- 모달창 -->
		   <div id="my_modal">
	<iframe id="modalIframe"  src="${pageContext.request.contextPath}/app/modal/periodModal2.jsp" style="
       position: absolute;
    width: 106%;
    margin-left: -69px;
    height: 100%;
    margin-top: -28px;
    margin-left: -62px;
			">대체 내용</iframe>  
		  <a class="modal_close_btn"></a>  
        </div>
			
		<!-- Main -->
		<div id="main" class="container medium" style = "display:flex;">
			<!-- profile header -->
			<form action="${pageContext.request.contextPath}/service/WriteMomOk.ser" name="writeProfileForm" method="post" enctype="multipart/form-data">
            <div style = "width: 100%; background: white; position:relative;" class="mediaMain">
           <span class="caution" style="float: right;font-size: 12px;color: #93999A; "><img style="max-width: 15px;" src="https://cdn.discordapp.com/attachments/954273372760571914/956558128898519090/aed53ff36d53bb73.jpg">
                	글 저장후 프로필 수정은 불가능하오니 주의하시기 바랍니다.
                </span>
                <div style="text-align: left; display:inline-block; margin-left:15px;">
                	<div class="profile">
                    <label><input type="file" name ="profilePicture"style="display:none;">
                    <img class="profileImg"src="https://cdn.discordapp.com/attachments/954273372760571914/955479398054772796/unknown.png" style="width: 100px; border-radius: 150px; cursor: pointer; ">
                    </label>
                    </div>                    
                    <div style = "position:absolute; top: 19px; left: 136px;">
                          <h3 style="margin-bottom: 3px; font-size: 18px;">${userVO.getUserName()}</h3><span style = "margin-top: 20px; font-size:16px;">${userAge}세,                                    
	                           <c:choose>
	                                    	<c:when test="${user.getUserGender() == 1}">남</c:when>
	                                    	<c:when test="${user.getUserGender() == 2}">여</c:when>
	                                    	<c:otherwise>정보없음</c:otherwise>
	                           </c:choose> 
                           </span>
                     </div>
                     
                     
                    
                    <!--  인풋 시작 -->
                  
                     <div  style = "position:absolute; top: 30px; left: 76%;">
                            <button class = "button" onclick = "writeProfileFormSend()">글 저장하기</button>
                     </div>
                </div>
                
                <hr class = "split">
                    <div class = "innerContent">
                        <p class ="innerTitle">선호하는 돌봄유형</p>
                        <div>
                            <div style = "float:left; margin-right:30px;">
                                <input type="checkbox" id="inside" name="inside">
                                <label for="inside" style = "font-size:16px;">실내놀이</label>
                            </div>
                            <div style = "float:left;  margin-right:30px;">
                                <input type="checkbox" id="commit" name="commit"  >
                                <label for="commit" style = "font-size:16px;">등하원</label>
                            </div>
                            <div style = "float:left;  margin-right:30px;">
                                <input type="checkbox" id="food" name="food"  >
                                <label for="food" style = "font-size:16px;">밥 챙겨주기</label>
                            </div>
                            <div style = "float:left;  margin-right:30px;">
                                <input type="checkbox" id="clean" name="clean"  >
                                <label for="clean" style = "font-size:16px;">청소</label>
                            </div>
                            <div>
                                <input type="checkbox" id="study" name="study"  >
                                <label for="study" style = "font-size:16px;">학습 지도</label>
                            </div>
                              <div>
                                <input type="checkbox" id="careEmergency" name="careEmergency"  >
                                <label for="careEmergency" style = "font-size:16px;">긴급 돌봄</label>
                            </div>
                        </div>
                    </div>
                    <hr style = "margin: 0px; width: 95%; padding: 10px 0;" >
                        <div class = "innerContent">
                            <p class ="innerTitle">아이 정보</p>
                            <div>
                                <div style = "float:left; margin-right:30px;">
                                    <input type="checkbox" id="newborn" name="newborn">
                                    <label for="newborn" style = "font-size:16px;">신생아</label>
                                </div>
                                <div style = "float:left;  margin-right:30px;">
                                    <input type="checkbox" id="baby" name="baby">
                                    <label for="baby" style = "font-size:16px;">영아</label>
                                </div>
                                <div style = "float:left;  margin-right:30px;">
                                    <input type="checkbox" id="kinder" name="kinder"  >
                                    <label for="kinder" style = "font-size:16px;">유치원생</label>
                                </div>
                                <div style = "float:left;  margin-right:30px;">
                                    <input type="checkbox" id="elememtary" name="elememtary"  >
                                    <label for="elememtary" style = "font-size:16px;">초등학생</label>
                                </div>
                               
                            </div>
                        </div>
                     
            <hr style = "margin: 0px; width: 95%; padding: 10px 0;" >
                        <div class = "innerContent" style = "position:relative;">
                            <p class ="innerTitle">원하는 돌봄 기간</p>
                            <div class = "innerModify" id="period">수정</div> <!-- 모달 창으로 이동 -->
                            <div class="content3">
                                <!-- ajax 로 선택한 것 여기에 출력 -->
                               <p style ="font-size:16px;" >원하는 돌봄 기간을 입력해주세요.</p>
                            </div>
                        </div>

                                        
            <hr style = "margin: 0px; width: 95%; padding: 10px 0;" >
               <div class = "innerContent" style = "position:relative;">
                    <p class ="innerTitle">희망 시급</p>             
                     
                     	 <div style = "font-size:16px;">
	                          <input type = "number" min="9160" step="20" id = "wage" value = "9160" name="profileSalary">
	                          <span>원</span>
                          </div>
                    
                </div>
              
                <hr style = "margin: 0px; width: 95%; padding: 10px 0;" >
                <div class = "innerContent" style = "position:relative;">
                    <p class ="innerTitle">이런 사람을 원해요</p>             
                    <textarea name="message" id="message" placeholder="원하는 시터에 대한 설명을 적어주세요" rows="4" required></textarea>
                </div>

                <hr style = "margin: 0px; width: 95%; padding: 10px 0;" >
                <div class = "innerContent" style = "position:relative;">
                    <p class ="innerTitle">선호하는 활동 지역</p>             
                    <div class="content3" style="padding-bottom: 10px;">
                        <div>
                            <select id="sido" class="address">
                            <option value="">선택</option>
                            </select>
                            <select id="sigugun" class="address">
                            <option value="">선택</option>
                            </select>
                            <select id="dong" class="address">
                            <option value="">선택</option>
                            </select>
                        </div>
                     </div>
                </div>
            </div>
            
             
                
            
            				<!-- 모달 데이터를 받기위해 생성되는 히든 인풋영역 -->				
				<div id="formDataFromIf">
				</div>
            
             </form>
          
            <!-- aside part -->
            
            <div style="padding-left:20px;">
                
                      
            </div>
        </div>
 
        
    <aside class = "aside2">
        <div style="
        width: 300px; 
        border : solid 1px #e2eaec;
        overflow: hidden;
        padding: 25px;
        background:white;
        ">
            <div>
                <h5 style = "font-weight:500">부모님 게시글 목록</h5>
                <p style = "font-size:16px;">마미랑 부모님들의 프로필을 참고해서 나의 프로필을 더 멋지게 꾸며보세요! 멋진 프로필은 좋은 시터와 높은 매칭률에 도움이 됩니다!</p>
                <a href = "${pageContext.request.contextPath}/service/SearchJobOk.ser"><button class = "buttonAside">부모님 게시글 목록</button></a>
            </div>
        </div>
        <br>
        <div style="
        width: 300px; 
        border : solid 1px #e2eaec;
        overflow: hidden;
        padding: 25px;
        background:white;
        ">
            <div>
                <h5 style = "font-weight:500">시터 찾기 바로가기</h5>
                <p style = "font-size:16px;">마미랑만의 인증 시스템을 거친 믿음직한 시터들을 지금 바로 만나보세요.</p>
                <a href = "${pageContext.request.contextPath}/service/SearchMomOk.ser"><button class = "buttonAside">시터 찾기</button></a>
            </div>
        </div>
    </aside>	
    
    

<!-- footer -->
<div class="wrapper">
		<div class="inner">
        <jsp:include page="../fix/footer.jsp" flush="true"/>
        </div>
 </div>
          
		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
          <script src="${pageContext.request.contextPath}/assets/js/WriteProfile.js"></script>
          <script>
/*           function send(){
        	
				if(!writeForm.title){
					alert("제목을 작성해주세요");
					return;
				}
				if(!writeForm.content){
					alert("내용을 작성해주세요");
					return;
				}
				
				writeForm.submit();
			}	
*/
          </script> 
</body>


</html>