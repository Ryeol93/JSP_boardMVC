<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>
<!--
   Exponent by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<html>
   <head>
      <title>관리자 페이지</title>
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" >
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	  <link href="${pageContext.request.contextPath}/assets/css/admin.css"" rel="stylesheet" type="text/css"> 
   </head>
   <style>
   		td{
   			background-color: white;
   		}
   		
		a { text-decoration: none;
    border-bottom: 0px solid;}
   </style>
   <body class="is-preload" style="display:block; padding-top: 0; overflow-y: hidden">
   		<c:set var="qnaList" value="${qnaList}"/>
   		<c:set var="reportList" value="${reportList}"/>
   		<c:set var="authList" value="${authList}"/>
   		<c:set var="noticeList" value="${noticeList}"/>

		<c:set var="page" value="${page}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="realEndPage0" value="${realEndPage0}"/>
		<c:set var="realEndPage1" value="${realEndPage1}"/>
		<c:set var="realEndPage2" value="${realEndPage2}"/>
		<c:set var="realEndPage3" value="${realEndPage3}"/>
		<c:set var="total0" value="${total0}"/>
		<c:set var="total1" value="${total1}"/>
		<c:set var="total2" value="${total2}"/>
		<c:set var="total3" value="${total3}"/>



      <!-- Main -->
         <div id="main" class="container">
               <!-- 배너 -->
         <div class="mainBox" style="padding-top: 3.5em;">
         	<a href="${pageContext.request.contextPath}/app/admin/admin.jsp"><img src="https://cdn.discordapp.com/attachments/954273372760571914/955478975797403648/1.png" style="width: 9%; position: absolute; margin: -50px 0px 0 26px;"></a>
            <h3 class="caption" style="position: absolute; margin: -46px 0px -1px 207px; padding-left: 20px;">관리자 페이지</h3>
            <ul class="actions small">
               <li><span id="memberList" class="s-title text bGray" style="padding: 0em 0 0 10em;" >통계</span></li>

            </ul>
         </div>
				<!-- Three -->
					<section id="three" class="feature">
						<div class="row row-total main-total" style="display: flex; justify-content: center; margin-right: 0em;">
								<div class="side-header">
               <a href="${pageContext.request.contextPath}/admin/AdminMainOk.ad" style="border-bottom:2px solid #ffb61a;"><p id="total" class="s-title text bYellow">통계 </p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminQnaListOk.ad"><p id="qna" class="s-title text bGray" >문의</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminReportListOk.ad"><p id="report" class="s-title bGray" >신고</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminAuthListOk.ad"><p id="auth" class="s-title bGray">인증</p></a>
               <a href="${pageContext.request.contextPath}/app/admin/adminMList.jsp"><p id="memberList" class="s-title bGray" >회원목록</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminNoticeListOk.ad"><p id="inform" class="s-title bGray" >공지</p></a>
			</div>
			<!-- 메인페이지 -->
			<div class="twoBox" style="width: 91.5%;">
			<div style="margin-top: 0.5em;">
			
					<div>
					<!-- 문의 테이블 -->
						<div>
							<a href="${pageContext.request.contextPath}/admin/AdminQnaListOk.ad">
								<span style="margin-right: 22em; font-size: 20px; position: fixed; margin-top: 0.6em;">문의</span>
								<img src="${pageContext.request.contextPath}/images/right.png" style="width:5%; margin-left: 26em;">
							</a>
						</div>
				<div style="width: 45%; margin-right: 3em; height: 261.88px; border:1px solid;">
					<table>
						<c:choose>
							<c:when test="${qnaList != null}">
								<c:forEach var="qna" items="${qnaList}">
						<tr>
							<td colspan = "4" style="width: 16em; padding-left: 2em;"><a href="${pageContext.request.contextPath}/admin/AdminQnaUpdate.ad?askNum=${qna.getAskNum()}&page=${page}" class = "titleTag">${qna.getAskTitle()}</a></td>
							<td>${qna.getAskDate()}</td>
						</tr>
								</c:forEach>
							</c:when>
						<c:otherwise>
                  				<tr>
                  					<td colspan="3" align="center">등록된 게시물이 없습니다.</td>
                  				</tr>
                  				</c:otherwise>
						</c:choose>	
					</table>
				</div>
				<!-- 신고 테이블 -->
						<div style="position: absolute; margin-top: -17.65em; margin-left: 31.8em;">
							<a href="${pageContext.request.contextPath}/admin/AdminReportListOk.ad">
								<span style="margin-right: 22em; font-size: 20px; position: fixed; margin-top: 0.6em;">신고</span>
								<img src="${pageContext.request.contextPath}/images/right.png" style="width:8.051%; margin-left: 25.96em;">
							</a>
						</div>
				<div style="width: 45%; margin-right: 3em; height: 261.88px; border:1px solid; float: right; margin-top: -14em;">
					<table>
						<c:choose>
							<c:when test="${reportList != null}">
								<c:forEach var="report" items="${reportList}">
						<tr>
							<td colspan = "4" style="width: 16em; padding-left: 2em;"><a href="${pageContext.request.contextPath}/admin/AdminReportUpdate.ad?askNum=${report.getAskNum()}&page=${page}" class = "titleTag">${report.getAskTitle()}</a></td>
							<td>${report.getAskDate()}</td>
						</tr>
								</c:forEach>
							</c:when>
						<c:otherwise>
                  				<tr>
                  					<td colspan="3" align="center">등록된 게시물이 없습니다.</td>
                  				</tr>
                  				</c:otherwise>
						</c:choose>	
					</table>
				</div>
				</div>
				<div style="margin-bottom:1.5em"></div>
				<div>
					<!-- 인증 테이블 -->
						<div>
							<a href="${pageContext.request.contextPath}/admin/AdminAuthListOk.ad">
								<span style="margin-right: 22em; font-size: 20px; position: fixed; margin-top: 0.6em;">인증</span>
								<img src="${pageContext.request.contextPath}/images/right.png" style="width:5%; margin-left: 26em;">
							</a>
						</div>
				<div style="width: 45%; margin-right: 3em; height: 261.88px; border:1px solid;">
					<table>
						<c:choose>
							<c:when test="${authList != null}">
								<c:forEach var="auth" items="${authList}">
						<tr>
							<td colspan = "4" style="width: 0em; padding-left: 2em;">${auth.getProfileNum()}</td>
							<td colspan = "4" style="width: 12em; padding-left: 2em;">${auth.getUserId()}</td>
							<td>${auth.getProfileDate()}</td>
						</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
                        			<td colspan="3" style="text-align: center;">인증이 필요한 회원이 없습니다.</td>
                        	</c:otherwise>
						</c:choose>
						
						
					</table>
				</div>
					<!-- 공지 테이블 -->
						<div style="position: absolute; margin-top: -17.65em; margin-left: 31.8em;">
							<a href="${pageContext.request.contextPath}/admin/AdminNoticeListOk.ad">
								<span style="margin-right: 22em; font-size: 20px; position: fixed; margin-top: 0.6em;">공지</span>
								<img src="${pageContext.request.contextPath}/images/right.png" style="width:8.051%; margin-left: 25.96em;">
							</a>
						</div>
				<div style="width: 45%; margin-right: 3em; height: 261.88px; border:1px solid; float: right; margin-top: -14em;">
					<table>
						<c:choose>
							<c:when test="${noticeList != null}">
								<c:forEach var="notice" items="${noticeList}">
									<tr>
										<td colspan = "4" style="width: 16em; padding-left: 2em;">${notice.getNoticeTitle()}</td>
										<td>${notice.getNoticeDate()}</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
                        			<td colspan="3" style="text-align: center;">등록된 게시물이 없습니다.</td>
                        		</c:otherwise>
						</c:choose>

						
					</table>
				</div>
				</div>
			</div>
			</div>
		</section>
	</div>
		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/admin.js"></script>
			<script src="https://www.gstatic.com/charts/loader.js"></script>
			<!-- 구글 차트 api -->
          <script type="text/javascript">
          google.charts.load('current', {'packages':['line']});
            google.charts.setOnLoadCallback(drawChart);

           function drawChart() {

          var data = new google.visualization.DataTable();
          data.addColumn('number', 'Day');
         data.addColumn('number', '글개수');
       	data.addColumn('number', '댓글수');
          /*data.addColumn('number', '비회원'); */

          data.addRows([
            [1,  100 , 210, /*41.8 */],
            [2,  100 , 240, /*41.8 */],
            [3,  90 , 203, /*41.8 */],
           [4,  80, 180, /*41.8 */],
            [5,  90, 164,/* 41.8 */],
            [6,   110, 202,/* 41.8 */],
            [7,   120 , 197,/* 41.8 */],
            [8,  130, 190,/* 41.8 */],
            [9,  110, 160, /*41.8 */],
            [10, 120 , 170, /*41.8 */],
            [11,  125, 200,/* 41.8 */],
            [12,  140 , 240,/* 41.8 */],
            [13,  150 , 230,/* 41.8 */],
            [14,  170 , 260, /*41.8 */]
          ]);

          var options = {
            chart: {
/*         title: 'Box Office Earnings in First Two Weeks of Opening',
           subtitle: 'in millions of dollars (USD)' */
            },
            width: '100%',
            height: 400
          };

          var chart = new google.charts.Line(document.getElementById('linechart_material'));

          chart.draw(data, google.charts.Line.convertOptions(options));
           }
       </script>
       <script>
       
		  const $total = $('#total');
          const $qna = $('#qna');
          const $qnaList = $('#qnaList');
          const $report = $('#report');
          const $reportList = $('#reportList');
          const $auth = $('#auth');
          const $mList = $('#mList');
          const $inform = $('#inform');
          
          
       
          $total.on("click",function(){
             
             contents=$.ajax({
               url: "adminTotal.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('div.twoBox').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
          $total.on("click",function(){
             
             contents=$.ajax({
               url: "adminTotalS.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('div.oneBox').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
          $total.on("click",function(){
             
             contents=$.ajax({
               url: "adminTotalM.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('span#adminM').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
         
           $qna.on("click",function(){
             
             contents=$.ajax({
               url: "adminQna.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('div.twoBox').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
          $qna.on("click",function(){
             
             contents=$.ajax({
               url: "adminQnsS.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('div.oneBox').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
          $qna.on("click",function(){
             
             contents=$.ajax({
               url: "adminQnaM.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('span#adminM').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
          
       $auth.on("click",function(){
             
             contents=$.ajax({
               url: "adminAuthS.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('div.oneBox').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
       $auth.on("click",function(){
             
             contents=$.ajax({
               url: "adminAuth.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('div.twoBox').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
       $auth.on("click",function(){
             
             contents=$.ajax({
               url: "adminAuthM.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('span#adminM').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
       $mList.on("click",function(){
             
             contents=$.ajax({
               url: "adminMList.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('div.twoBox').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
       $mList.on("click",function(){
             
             contents=$.ajax({
               url: "adminMListS.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('div.oneBox').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
       $mList.on("click",function(){
             
             contents=$.ajax({
               url: "adminMListM.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('span#adminM').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
       $inform.on("click",function(){
             
             contents=$.ajax({
               url: "admin-inform.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('div.twoBox').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
       $inform.on("click",function(){
             
             contents=$.ajax({
               url: "admin-informS.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('div.oneBox').html(e);
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
       $inform.on("click",function(){
             
             contents=$.ajax({
               url: "admin-informM.jsp",       // 통신할url
               dataType: "html",         //전송받은 데이터를 변환시킬 컨텐츠 타입
               type:"get"   ,
               success:function(e){
                  $('span#adminM').html(e);
                  if($informWrite.on())
               },
               error:function(){
                  alert("실패");
               }
               
               });
 
          })
       
       
       </script>
       			
	</body>
</html>	