/**
 * 
 */

  const open = () => {
    document.querySelector(".modal").classList.remove("hidden");
    console.log("check");
  }

  const close = () => {
    document.querySelector(".modal").classList.add("hidden");
  }

 
 	
	 $("#user1").on("click",function(){
		open();
	 });  
	 $("#user2").on("click",function(){
		open();
	 });  
	 $("#user3").on("click",function(){
		open();
	 });  
	 $("#user4").on("click",function(){
		open();
	 });  
	 $("#user5").on("click",function(){
		open();
	 });  
	
	 
	 
	
	 const $chatBox = $('.chatBox');

// 클릭 시 읽음 처리
	 $chatBox.on("click", function(){ 
		 var chatNum = $(this).attr('id');
	      $.ajax({
	            url: contextPath + "/chat/ChatReadOne.chat",      
	            dataType: "json",         
	            type:"get"   ,
	            contentType: "application/json;charset=utf-8",
	            data:  {
		    			"chatNum": chatNum},
		    	success: function(data){
				            if (data.count == 0){
				            	  $("p#newMSG", parent.document).css({"display" : "none"});
				    		      $("img#chat", parent.document).css({ "-webkit-filter": "grayscale(100%)"});
				            }
				    	 },
				  error: function(){
				    		 console.log("실패");
				    	 }
	         });
	      
	   
	  	$(this).find("span.chat-balloon").css({"display" : "none"});
	 });
	 
	 const $all = $('#all');

	 
	 
	// 전체 읽음 처리
	 $all.on("click", function(){ 
		 console.log("userNum: " + userNum);
		 console.log("클릭 성공");
			 var chatNum = $(this).attr('id');
		      $.ajax({
		            url: contextPath + "/chat/ChatReadAll.chat",      
		            dataType: "json",         
		            type:"post"   ,
		            data:  {
			    			"chatNum": chatNum},
			    	
		         });
		      $(".chat-balloon").css({"display" : "none"});
		      $("p#newMSG", parent.document).css({"display" : "none"});
		      $("img#chat", parent.document).css({ "-webkit-filter": "grayscale(100%)"});
		    
		  
		 });
		 

/*
	 const $chatBox = $('.chatBox');


	 $chatBox.on("click", function(){
	 	console.log("userNum: " + userNum);
	 	console.log("profileNum: " + userNum2);
	 	if($(this).getElementsByClass('chat-ballon')
	 			attr('src')=='https://cdn.discordapp.com/attachments/954273372760571914/955209503157145660/emptyHeart.png'){
	 		// 찜하기 등록
	 		
	 		$(this).attr('src', 'https://cdn.discordapp.com/attachments/954273372760571914/955209502918082700/heart.png');
	 		  $.ajax({
	 		        url: contextPath + "/service/FavoriteInsertOk.ser",
	 		        type: "post",
	 		        data: {"userNum": userNum, "profileNum": userNum2},
	 		        
	 		      
	 		    });
 
 */
 
 /*  $('.openBtn').on("click", open());   ------------> 안됨 */
/*   document.querySelector(".openBtn").addEventListener("click", open); */
 // document.querySelector(".submitBtn").addEventListener("click", close);
 // document.querySelector(".bg").addEventListener("click", close);

  
  /*
  
 제이쿼리로 변경 ( 또는 객체에 담아서 반복 )
  document.getElementsByClassName('openBtn').addEventListener("click", open);
*/
