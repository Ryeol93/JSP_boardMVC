/**
 * 
 */
var	 userName= $('#userName').val();
var userEmail=$('#userEmail').val();
var param = {"userName": $('#userName').val(), "userEmail":$('#userEmail').val()}


	
$('#certified').click(function(){
		console.log(userName);
		console.log(userEmail);
   $.ajax({
	   		url: context +"/user/UserFindIdPwOk.user",
	   		type: "post",
	   		contentType: "application/x-www-form-urlencoded",	
         dataType: "json",
         data : {"userName": $('#userName').val(), "userEmail":$('#userEmail').val()},
         success: function(result){
        	 		if(result.status == "not-ok"){
        	 			$('#input_error').text("일치하는 정보가없습니다.");
        	 			$('#input_error').css("color", "red");
        	 		}
        	 		if(result.status == "ok"){
        	 			var userId =result.userId;
        	 			
        	 			
						
        	 	location.href= context +"/user/UserFindID.user"
        	 			
        	 				
        	 				
        	 			
        	 		
        	 		}
        
        	   
        	   
        	   
         
        	 
        	 
        	 
        	 
        	 
         },
         error: function(){
            console.log("중복검사 오류");
         }
      });
});


//	const $certified = $('#certified');
//	var contents;
//	
//	$certified.on("click", function(){
//		
//		contents= $.ajax({
//			url:"certified.jsp", 
//			datatype:"html",
//			type:"get",
//			
//			success:function(e){
//				$('div#mainbox').html(e);
//				
//			},
//			error:function(){
//				alert("실패");
//				
//			}
//		
//		});
//	})
	
	/*  $('.button-size').click(function() {
		$('.font-position').css({"display":"none"}); 
		 
	 }); */
	