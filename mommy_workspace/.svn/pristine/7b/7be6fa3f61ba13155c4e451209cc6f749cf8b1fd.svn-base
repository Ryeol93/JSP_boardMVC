<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   <body class="is-preload" style="display:block; padding-top: 0; overflow-y: hidden">



      <!-- Main -->
         <div id="main" class="container">
               <!-- 배너 -->
         <div class="mainBox" style="padding-top: 3.5em;">
         	<a href="${pageContext.request.contextPath}/app/admin/admin.jsp"><img src="${pageContext.request.contextPath}/images/로고1.png" style="width: 9%; position: absolute; margin: -50px 0px 0 26px;"></a>
            <h3 class="caption" style="position: absolute; margin: -46px 0px -1px 207px; padding-left: 20px;">관리자 페이지</h3>
            <ul class="actions small">
               <li><span id="memberList" class="s-title text bGray" style="padding: 0em 0 0 10em;" >통계</span></li>

            </ul>
         </div>
				<!-- Three -->
					<section id="three" class="feature">
						<div class="row row-total main-total" style="display: flex; justify-content: center; margin-right: 0em;">
								<div class="side-header">
               <a href="${pageContext.request.contextPath}/app/admin/admin.jsp" style="border-bottom:2px solid #ffb61a;"><p id="total" class="s-title text bYellow">통계 </p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminQnaListOk.ad"><p id="qna" class="s-title text bGray" >문의</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminReportListOk.ad"><p id="report" class="s-title bGray" >신고</p></a>
               <a href="${pageContext.request.contextPath}/app/admin/adminAuth.jsp"><p id="auth" class="s-title bGray">인증</p></a>
               <a href="${pageContext.request.contextPath}/app/admin/adminMList.jsp"><p id="memberList" class="s-title bGray" >회원목록</p></a>
               <a href="${pageContext.request.contextPath}/admin/AdminNoticeListOk.ad"><p id="inform" class="s-title bGray" >공지</p></a>
			</div>
								<div class="twoBox">
									<div class="col-6 col-12-small" style=" margin-left: -3em; ">
										<a class="title" href="#">
											<span class="s-title">이용 현황</span>
										</a>
										<hr>
										<div id="linechart_material" style="margin-left: 1em;"></div>
									</div>
								</div>
								<div class="col-6 col-12-small v-total" style="width: 30%; display:table; height: 400px; border: 1px solid #bbb; border-radius: 3px; padding-top: 1em;">
									<div class="oneBox" style="margin-bottom: 3%; width: 35%; display: contents;">
										<a class="title" href="#">
											<span class="s-title link-title" >주간 통계</span>
										</a>
										<hr>
										<hr>
		
									<div class="sBox" style="border-bottom: 1px solid #d8dadb; border-top: 1px solid #d8dadb; display: flex; padding-top: 1em; padding-bottom: 1em;">
										<div style="width: 50%; border-right: 1px solid #d8dadb;">
											<span class="s-title link-title" >글개수</span>
											<hr>
											<p>600개</p>
										</div>
										<div style="width: 50%; padding-left:1em">
											<span class="s-title link-title" >일평균</span>
											<p>85개</p>
										</div>
									</div><div class="sBox" style="display: flex; padding-top: 1em;">
										<div style="width: 50%; border-right: 1px solid #d8dadb;">
											<span class="s-title link-title" >댓글수</span>
											<p>900개</p>
										</div>
										<div style="width: 50%; padding-left:1em">
											<span class="s-title link-title" >일평균</span>
											<p>144개</p>
										</div>
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