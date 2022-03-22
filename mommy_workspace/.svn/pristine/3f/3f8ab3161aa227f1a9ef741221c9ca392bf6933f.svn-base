<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	
	<script src="https://code.jquery.com/jquery-latest.min.js" type="application/javascript"></script>
  <script type="application/javascript" src="https://zelkun.tistory.com/attachment/cfile8.uf@99BB7A3D5D45C065343307.js"></script>
      
    <title>부모님 글 작성 및 수정</title>

</head>

<body>
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
	<iframe src="${pageContext.request.contextPath}/app/modal/periodModal2.jsp" style="
      position: absolute;
    width: 106%;
    margin-left: -69px;
    height: 100%;
    margin-top: -38px;
			">대체 내용</iframe>  
			  <a class="modal_close_btn"><img src="${pageContext.request.contextPath}/images/whiteX.png" style="width:20px;"></a>
        </div>
			
		<!-- Main -->
		<div id="main" class="container medium" style = "display:flex;">
			<!-- profile header -->
			<form action="${pageContext.request.contextPath}/service/WriteMomOk.ser" name="writeForm" method="post" enctype="multipart/form-data">
            <div style = "width: 70%; background: white; position:relative;" class="mediaMain">
           
                <div style="text-align: left; display:inline-block; margin-left:15px;">
                    <label><input type="file" style="display:none;">
                    <!--  유저테이블 정보 뿌려야함 -->
                    <img src="${pageContext.request.contextPath}/images/유저.png" style="width: 100px; border-radius: 150px; cursor: pointer; ">
                    </label>
                    <div style = "position:absolute; top: 19px; left: 136px;">
                          <h3 style="margin-bottom: 3px; font-size: 18px;">김아무개</h3><span style = "margin-top: 20px; font-size:16px;">29세, 여</span>
                     </div>
                     
                     
                    
                    <!--  인풋 시작 -->
                  
                     <div  style = "position:absolute; top: 30px; left: 76%;">
                            <button class = "button" onclick = "send();">글 저장하기</button></a>
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
                                <input type="checkbox" id="commit" name="commit" checked>
                                <label for="commit" style = "font-size:16px;">등하원</label>
                            </div>
                            <div style = "float:left;  margin-right:30px;">
                                <input type="checkbox" id="food" name="food" checked>
                                <label for="food" style = "font-size:16px;">밥 챙겨주기</label>
                            </div>
                            <div style = "float:left;  margin-right:30px;">
                                <input type="checkbox" id="clean" name="clean" checked>
                                <label for="clean" style = "font-size:16px;">청소</label>
                            </div>
                            <div>
                                <input type="checkbox" id="teach" name="teach" checked>
                                <label for="teach" style = "font-size:16px;">학습 지도</label>
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
                                    <input type="checkbox" id="kinder" name="kinder" checked>
                                    <label for="kinder" style = "font-size:16px;">유치원생</label>
                                </div>
                                <div style = "float:left;  margin-right:30px;">
                                    <input type="checkbox" id="elememtary" name="elememtary" checked>
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
	                          <input type = "number" min="9160" step="20" id = "wage" value = "9160">
	                          <span>원</span>
                          </div>
                    
                </div>
              
                <hr style = "margin: 0px; width: 95%; padding: 10px 0;" >
                <div class = "innerContent" style = "position:relative;">
                    <p class ="innerTitle">이런 사람을 원해요</p>             
                    <textarea name="message" id="message" placeholder="원하는 시터에 대한 설명을 적어주세요" rows="4"></textarea>
                </div>

                <hr style = "margin: 0px; width: 95%; padding: 10px 0;" >
                <div class = "innerContent" style = "position:relative;">
                    <p class ="innerTitle">활동 가능 지역</p>             
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
                <a href = "${pageContext.request.contextPath}/app/serviceSearch/searchJob.jsp;"><button class = "buttonAside">부모님 게시글 목록</button></a>
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
                <a href = "${pageContext.request.contextPath}/app/serviceSearch/searchMom.jsp;"><button class = "buttonAside">시터 찾기</button></a>
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
          <script src="${pageContext.request.contextPath}/assets/js/WriteSitter.js"></script>
          <script>
          function send(){
        	  /*
				if(!writeForm.title){
					alert("제목을 작성해주세요");
					return;
				}
				if(!writeForm.content){
					alert("내용을 작성해주세요");
					return;
				}
				*/
				writeForm.submit();
			}	
          </script>
</body>


</html>