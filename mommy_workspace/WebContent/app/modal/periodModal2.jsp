<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
      
          <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
           <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/periodModal.css" />
	
    <title>Document</title>
</head>

<body style = "padding-top: 0.5em !important;">
<!-- 부모가 보게되는 모달창 -->
    <div class="main">
        
      <div style="text-align: center;
    background-color: #ffb61a9e;
    height: 66px;
    padding: 11px;
    line-height: 2.3;
    padding-bottom: 19px;
    color: white;
    font-size: 19px;"> <h3 style="display: inline; color:white;">돌봄 기간</h3>
    </div> 
   	<button class="ok">완료</button>
     <br>
     <div class = "wrapper" style = "text-align:center;">
      <h4 style="display: inline-block; width: 150px;">원하는 활동 시작일</h4>
        
       <div class="input_date_box" style="display: inline-block;">
        <input type="date" placeholder="날짜를 입력해주세요" id="startDate">
     </div>
  
        <hr>
         <div style = "text-align:center; height: 100px" class = "first" >
                  <p class ="innerTitle">원하는 활동 요일</p>
                       <div style = "text-align: center; margin-left: 29px;">
                            <div class = "days">
                                <input type="checkbox" id="P_mon" value="P_mon" name="P_mon">
                                <label for="P_mon" style = "font-size:16px;">월</label>
                            </div>
                            <div class = "days">
                                <input type="checkbox" id="P_tue" value="P_tue" name="P_tue" >
                                <label for="P_tue" style = "font-size:16px;">화</label>
                            </div>
                            <div class = "days">
                                <input type="checkbox" id="P_wed" value="P_wed" name="P_wed" >
                                <label for="P_wed" style = "font-size:16px;">수</label>
                            </div>
                            <div class = "days">
                                <input type="checkbox" id="P_thu" value="P_thu" name="P_thu" >
                                <label for="P_thu" style = "font-size:16px;">목</label>
                            </div>
                             <div class = "days">
                                <input type="checkbox" id="P_fri" value="P_fri" name="P_fri" >
                                <label for="P_fri" style = "font-size:16px;">금</label>
                            </div>
                              <div class = "days">
                                <input type="checkbox" id="P_sat" value="P_sat" name="P_sat" >
                                <label for="P_sat" style = "font-size:16px;">토</label>
                            </div>
                             <div class = "days">
                                <input type="checkbox" id="P_sun" value="P_sun" name="P_sun" >
                                <label for="P_sun" style = "font-size:16px;">일</label>
                            </div>
                   </div>
            </div>
		
        
	<hr>
		  
			
			 <div style = "text-align:center;" class ="second">
                  <p class ="innerTitle">원하는 활동 시간</p>
                       <div style="margin-left: 30px;">
                            <div style = "float:left;  ">
                                <input type="checkbox" id="P_morning" value="P_morning" name="P_morning">
                                <label for="P_morning" style = "font-size:16px;">09:00~12:00</label>
                            </div>
                            <div style = "float:left;  margin-left: 24px;">
                                <input type="checkbox" id="P_lunch" value="P_lunch" name="P_lunch" >
                                <label for="P_lunch" style = "font-size:16px; ">12:00~15:00</label>
                            </div>
                            <div style = "float:left;  margin-left: 24px;">
                                <input type="checkbox" id="P_noon" value="P_noon" name="P_noon" >
                                <label for="P_noon" style = "font-size:16px;">15:00~18:00</label>
                            </div>
                         </div>
              	</div>

		<hr>
	<br>
	<hr>
	<div>
        <p>원하는 활동 기간 </p>
       <div class="week">
				<input type="checkbox" id="P_week" name="P_week" value="P_week">
				<label for ="P_week">1주일 이상</label>
			</div>
        	<div class="month">
				<input type="checkbox" id="P_month" name="P_month" value="P_month">
				<label for="P_month">1개월 이상</label>
			</div>
        	<div class="quarter">
				<input type="checkbox" id="P_quarter" name="P_quarter" value="P_quarter">
				<label for="P_quarter">3개월 이상</label>
			</div>
        	<div class="semiAnnual">
				<input type="checkbox" id="P_semiAnnual" name="P_semiAnnual" value="P_semiAnnual">
				<label for="P_semiAnnual">6개월 이상</label>
			</div>
			
        <!-- <button style="background-color: #ffb61a; color: white; font-weight: bold; font-size: 20px;
            width: 300px; height: 50px; border: none; margin-top: 35px; border-radius: 25px;
            cursor: pointer;
        ">완료</button> -->
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
			  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/periodModal.js"></script>
</html>