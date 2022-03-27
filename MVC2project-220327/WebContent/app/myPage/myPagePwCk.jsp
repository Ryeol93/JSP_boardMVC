<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>   

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link href="${pageContext.request.contextPath}/assets/css/myPageInfo.css" rel="stylesheet" type="text/css">
</head>
<body>
<c:set var="userNum" value="${sessionScope.userNum}"/>
<div>
                  
       <h1 class="mainTitle">개인정보 수정을 원하시면 비밀번호를 입력해주세요 !</h1>
     
     <!-- 폼으로 수정 -->
    <!--   <form name="myPagePwCkForm"> -->
	       <div class="infoWrapper">
	           <p class="p-font-color"  >비밀번호 <span id="idFaildText"></span></p>
	            <input id="myPagePwInput" name="myPagePwInput" type="password" class="input-font" style="width: 95%;" >
	            
		       <br>
		       <div class="myPagePwBtnWrap">
		       		<button class = "phoneBtn" id="myPageCkbtn" onclick="myPageCk(myPagePwInput)">확인</button> 
		       </div>
		       
		     
	       </div>                         
	         <!--  <button class = "phoneBtn" id="myPageCkbtn">확인</button> -->
     <!--   </form> -->
       
</div>
</body>
	<!--script-->
	<script>
	 var context = '${pageContext.request.contextPath}'; 
	 var userNum = '${userNum}';
	</script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/myPageFirst.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/myPage.js"></script> 
</html>