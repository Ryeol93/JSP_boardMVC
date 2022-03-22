<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Header -->
         <header style="height: 4.5em;" id="header">
         <c:set var="userStatus" value="${sessionScope.userStatus}"/>
         <c:set var="userName" value="${sessionScope.userName}"/>
       
            <a href = "${pageContext.request.contextPath}/user/UserMainOk.user" style="border-bottom: none;"><img class = "mommyLogo"  style = "width:112px; margin-top:15px; margin-left:20px" src="${pageContext.request.contextPath}/images/로고1.png"></a></h1>
            <nav id="nav">
               <ul>
               
            <!--        <li style="padding: 5px 1em;"><button type="button" onclick="location.href='#'" value = "회원가입"></a></li>
                     <li style="padding: 5px 1em;"><a href="#">Log In</a></li>
                  -->
            <c:choose>
               <c:when test="${userNum eq null}">
                  <li style="padding: 1.2em 0 1.2em 0;"><button tabindex="0" type="button" style="border: 1px solid #ffb61a; box-sizing: border-box; margin-top: 10px; display: inline-block; font-family: &quot;Noto Sans KR&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer; text-decoration: none; margin: 0px 10px 0px 0px; padding: 0px; outline: none; font-size: inherit; font-weight: inherit; position: relative; vertical-align: top; z-index: 1; height: 38px; line-height: unset; min-width: 90px; color: rgba(0, 0, 0, 0.87); transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; border-radius: 19px; user-select: none; overflow: hidden; background-color: #ffb61a; text-align: center;">
                     <div style ="margin-top:-1em;">
                        <a href ="${pageContext.request.contextPath}/user/UserJoin.user"> <span style="position: relative; padding-left: 16px; padding-right: 16px; vertical-align: middle; letter-spacing: 0px; text-transform: uppercase; font-weight: 600; font-size: 0.9rem; color: rgb(255, 255, 255);">가입하기</span></a>
                     </div></button></li>
                  <li style="padding: 1.2em;margin-left: -10px;"><button tabindex="0" type="button" style="border: 1px solid #ffb61a; box-sizing: border-box; display: inline-block; font-family: &quot;Noto Sans KR&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer; text-decoration: none; margin: 0px; padding: 0px; outline: none; font-size: inherit; font-weight: inherit; position: relative; vertical-align: top; z-index: 1; height: 38px; line-height: unset; min-width: 90px; color: rgba(0, 0, 0, 0.87); transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; border-radius: 19px; user-select: none; overflow: hidden; background-color: rgb(255, 255, 255); text-align: center;">
                     <div style ="margin-top:-1em;">
                        <a href = "${pageContext.request.contextPath}/user/UserLogin.user" style="border-bottom: none;"><span style="position: relative; padding-left: 16px; padding-right: 16px; vertical-align: middle; letter-spacing: 0px; text-transform: uppercase; font-weight: 600; font-size: 0.9rem; color: #ffb61a;">로그인</span></a>
                     </div></button></li> 
               </c:when>
               <c:otherwise>
                     <li>
                        <span style = "margin-top: 6px; margin-right: 20px; font-size: 14px;">
                         <span style = "color:#ffb61a"> <c:out value = "${userName}" /></span>
                          <c:choose>
                        
                              <c:when test="${userStatus eq 0 }"><span>관리자</span></c:when>
                              <c:when test="${userStatus eq 1 }"><span>부모</span></c:when>
                              <c:when test="${userStatus eq 2 }"><span>시터</span></c:when>
                           </c:choose> <span style = "font-weight:lighter">님, 환영합니다.</span>
                        </span>
                     </li>
                  <li style="padding: 1.2em 0 1.2em 0;"><button tabindex="0" type="button" style="border: 1px solid #ffb61a; box-sizing: border-box; margin-top: 10px; display: inline-block; font-family: &quot;Noto Sans KR&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer; text-decoration: none; margin: 0px 10px 0px 0px; padding: 0px; outline: none; font-size: inherit; font-weight: inherit; position: relative; vertical-align: top; z-index: 1; height: 38px; line-height: unset; min-width: 90px; color: rgba(0, 0, 0, 0.87); transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; border-radius: 19px; user-select: none; overflow: hidden; background-color: #ffb61a; text-align: center;">
                     <div style ="margin-top:-1em;">
                        <a href ="${pageContext.request.contextPath}/user/UserLogout.user"> <span style="position: relative; padding-left: 16px; padding-right: 16px; vertical-align: middle; letter-spacing: 0px; text-transform: uppercase; font-weight: 600; font-size: 0.9rem; color: rgb(255, 255, 255);">로그아웃</span></a>
                     </div></button></li>
               </c:otherwise>
                 </c:choose>
                  
                  <li style="padding: 9px 1em;" class="special">
                     <a href="#menu" class="icon solid fa-bars">Menu</a>
                     <div id="menu">
                        <ul>
                        <li><a href="${pageContext.request.contextPath}/user/UserJoin.user">로그인</a></li>
                           <li><a href="${pageContext.request.contextPath}/myPage/Mypage.my">마이페이지</a></li>
                            <li><a onclick="location.href='${pageContext.request.contextPath}/service/SearchJobOk.ser'">일자리 찾기</a></li>
                             <li><a onclick="location.href='${pageContext.request.contextPath}/service/SearchMomOk.ser'">시터 찾기</a></li>
                              <li><a onclick="location.href='${pageContext.request.contextPath}/community/CommunityListOk.com'">커뮤니티</a></li>
                           <li>
                              <span>고객센터</span>
                              <ul>
                                 <li><a href="${pageContext.request.contextPath}/notice/NoticeListOk.no">공지사항</a></li>
                                 <li><a href="${pageContext.request.contextPath}/app/ask/askInsert.jsp">1:1 문의하기</a></li>
                              </ul>
                           </li>
                        </ul>
                     </div>
                  </li>
               </ul>
            </nav>
         </header>
         