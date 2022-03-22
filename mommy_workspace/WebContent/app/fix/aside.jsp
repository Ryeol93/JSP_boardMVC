<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<aside class="aside" style="width: 150px;
					left: 93%;
						top: 88% !important;
						cursor:pointer;
               position: fixed;">
                  <a href="#" style = "border-bottom: hidden;"><img src="https://cdn.discordapp.com/attachments/954273372760571914/955486537854910544/asideUp.png" style="width: 200%;"></a>
</aside>

<aside class="aside" id = "chatAside" style="width: 150px;
					left: 92.7%;
						/*-- top: 80% !important; */
						top: 79% !important;
						cursor:pointer;
               position: fixed;">
                 <img src="https://cdn.discordapp.com/attachments/954273372760571914/955486676921249802/asideChat.png" style="width: 210%;" id="button">
                  
                   
        <div id="divToggle" style="display: none; "><iframe src = "${pageContext.request.contextPath}/app/chat/chatLog.jsp" width= "400px !important" height="600px !important" 
        	style = "position:absolute; left:-300px; top: -595px; border-radius:10px; box-shadow: 4px 4px 20px rgb(51 51 51 / 15%); z-index:20;"></iframe>
        </div>
        
     <div></div>

       <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/additional.js"></script>
</aside>
