<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css" />
	<footer id="footer" style = "background: #f6f6f6;">
				<div class="container">
					<div class="row">
						<section class="col-4 col-12-medium about" style = "width: 45%; padding-left:156px;">
							<img src = "https://cdn.discordapp.com/attachments/954273372760571914/955487224336625684/2.png" style = "width:100px;" class = "footerLogo">
								
							<p id = "footerText" style ="font-size:0.8em;"><br>육아에 도움이 필요한 부모님들을 위해 <br>언제 어디서나 마미랑이 함께 하겠습니다.</p>
						<ul class="labeled-icons">
							
								<li style = "margin: 0 0 1em 0 !important;">
									<h4 class="icon alt solid fa-phone"><span class="label">Phone</span></h4>
									<a href="tel:02)123-1234">02)123-1234</a>
								</li>
								<li>
									<h4 class="icon alt solid fa-envelope"><span class="label">Email</span></h4>
									<a href="mailto:mommyrang@gmail.com">mommyrang@gmail.com</a>
								</li>
								
							</ul>
						</section>
						<section class="col-4 col-6-medium col-12-small" style = "width: 33.33333%;">
							<h3 style = "font-size: 1em !important;" id="mediahidden" >서비스 종류</h3>
							<ul class="updates">
								<li>
									<p style = "margin-bottom:-20px; font-size:0.9em !important;"><a onclick="location.href='${pageContext.request.contextPath}/service/SearchMomOk.ser'" id="mediahidden" >신생아/영아 풀타임 베이비시팅</a></p>
								</li>
								<li>
									<p style = "margin-bottom:-20px; font-size:0.9em !important;"><a onclick="location.href='${pageContext.request.contextPath}/service/SearchMomOk.ser'" id="mediahidden">신생아/영아 풀타임 보조 베이비시팅</a></p>
								</li>
								<li>
									<p style = "margin-bottom:-20px; font-size:0.9em !important;"><a onclick="location.href='${pageContext.request.contextPath}/service/SearchMomOk.ser'" id="mediahidden">등하원 베이비시팅</a></p>
								</li>
								<li>
									<p style = "margin-bottom:-20px; font-size:0.9em !important;"><a onclick="location.href='${pageContext.request.contextPath}/service/SearchMomOk.ser'" id="mediahidden">놀이/학습 베이비시팅</a></p>
								</li>
									<li>
									<p style = "margin-bottom:-20px; font-size:0.9em !important;"><a onclick="location.href='${pageContext.request.contextPath}/service/SearchMomOk.ser'" id="mediashow">긴급/단기 베이비시팅</a></p>
								</li>
								</li>
									<li>
									<p style = "margin-bottom:-20px; font-size:0.9em !important;"><a onclick="location.href='${pageContext.request.contextPath}/service/SearchJobOk.ser'" id="mediashow">일자리 찾기</a></p>
								</li>
									<li>
									<p style = "margin-bottom:-20px; font-size:0.9em !important;"><a onclick="location.href='${pageContext.request.contextPath}/community/CommunityListOk.com'" id="mediahidden">부모님/시터 커뮤니티</a></p>
								</li>
							</ul>
						</section>
						<section class="col-4 col-6-medium col-12-small" style = "width: 16.6666%;" id="mediahidden">
							<h3 style = "font-size: 1em !important;">고객센터</h3>
							<ul class="updates" id="mediahidden" >
								<li>
									<p style = "margin-bottom:-20px; font-size:0.9em !important;"><a href="${pageContext.request.contextPath}/notice/NoticeListOk.no">공지사항</a></p>
								</li>
								
								<li>
									<p style = "margin-bottom:-20px; font-size:0.9em !important;"><a href="${pageContext.request.contextPath}/user/joinInfo.user">이용약관</a></p>
								</li>
								<li>
									<p style = "margin-bottom:-20px; font-size:0.9em !important;"><a href="${pageContext.request.contextPath}/user/joinInfo.user">개인정보처리방침</a></p>
								</li>
							</ul>
						</section>
					</div>
				</div>
				
			</footer>