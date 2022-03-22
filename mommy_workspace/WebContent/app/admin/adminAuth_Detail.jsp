<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<style>
	body{
		width: 800px;
		height: 500px;
		margin: 0 auto;
	
	}
	
	
	.cotain_warp{
		margin: 0 auto;
		padding 5px 10px;
		text-align: center;
		border-left: solid 1px black;
		border-right: solid 1px black;
		
	}
	
	
	td{
	
	padding : 10px 10px;
	
	}
	
	input[type=submit]{
	width: 130px;
	height:55px;
	border:none;
	background-color: white;
	text-align: center;
	
	}
	input[type=checkbox]{
	width: 20px;
	height: 20px;
	}
</style>
</head>
<body>

 			<c:set var="ProfileNum" value="${param.ProfileNum}"/>
 			<c:set var="name" value="${param.name}"/>
			<c:set var="id" value="${param.id}"/>
 			<script>
 			var ProfileNum = "${ProfileNum}";
 			
 			</script>
	<form method="post" action="${pageContext.request.contextPath }/admin/AdminAuthChangeOk.ad?ProfileNum=${ProfileNum}">
		 <table class="cotain_warp" >
		 
		<div> 
                <tr style="border: 1px solid black;">
                <td></td>
                   <td   >프로필번호</td>
                   <td  >이름</td>
                   <td  >아이디</td>
                   <td>
                </tr>
		</div>



		<div class="req_wrap">
			<tr>
			<td></td>
				<td>${ProfileNum}</td>
				<td >${name}</td>
				<td >${id}</td>
				
			</tr>
		</div>	





			<div class="CheckOk"> 
				
				<tr>
					<td>
					<div class="CheckMedi">
					<input type="checkbox" id="CheckMedi" name="CheckMedi" >
					
					<label for="CheckMedi" class="text">건강인증</label>
					</div>
					</td>
					
					
					<td>
					<div class="CheckMom">
					<input type="checkbox" id="CheckMom" name="CheckMom"  >
					
		            <label for="CheckMom"  class= "text">부모님인증</label>
                    </div>
		            </td>
		            
		            <td>
		            <div class="CheckTeacher">
	                <input type="checkbox" id="CheckTeacher" name="CheckTeacher" >
	                
		            <label for="CheckTeacher" class="text">교사인증</label> 
	                </div>
	                </td>
	                
	                <td>
		            <div class="CheckCitizen">
		            <input type="checkbox" id="CheckCitizen" name="CheckCitizen" >
		            <label for="CheckCitizen" class="text">본인인증</label>
		            </div>
		            </td>
		            
		            
		            <td>
		            <div class="CheckUniversity">
		           	
					<input type="checkbox" id="CheckUniversity" name="CheckUniversity"  >
					<label for="CheckUniversity" class="text">학력인증</label>
													
		            </div>
		            </td>
				</tr>
				
				
			</div>
				<tr>
					<td></td>
					<td></td>
					<td>
					<div>				
		            <input type="submit" value="수정하기" id="btnn">
					</div>
					</td>
				</tr>
	
			</table>
</form>		
</body>


<script> var context = '${pageContext.request.contextPath}'</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/adimin_detail.js"></script>

</html>