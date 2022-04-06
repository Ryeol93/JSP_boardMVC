
// 팝업창
           function winPopup() {
               var popUrl = "adminMListDtail.jsp";
               var popOption = "top=100, left=100, width=550, height=340, status=no, menubar=no, toolbar=no, resizable=no";
               window.open(popUrl, "_blank" , popOption, true);
           }
           
           
//          클릭 상세
//           $(".td1").hide(); // display 속성을 none 으로 바꾼다. 
//
//           $(".test").click(function() {
//              $(".td1").toggle();
//      });
           
           
//          클릭 상세
         const $btns = $('.wrap');
         const $aw = $('.td1');
         $.each($btns, function(index, item){
         $(item).click(function(){
             $($aw[index]).toggle('fast');
         })
     });           
   
         
         
         
       
         
         
         $('.checkMedi').on('change', function(){
        	 $('.checkMedi').val(this.checked ? 1 : 0);
         });
         
         $('.checkMom').on('change', function(){
        	 $('.checkMom').val(this.checked ? 1 : 0);
         });
         $('.checkTeacher').on('change', function(){
        	 $('.checkTeacher').val(this.checked ? 1 : 0);
         });
         $('.checkCitizen').on('change', function(){
        	 $('.checkCitizen').val(this.checked ? 1 : 0);
         });
         $('.checkUniversity').on('change', function(){
        	 $('.checkUniversity').val(this.checked ? 1 : 0);
         });
         
         
         
         
         
         
  		 function prooo(profileNum) {
			 
  			 
		      $.ajax({
		            url: context + "/admin/AdminAuthChangeOk.ad",      
		            dataType: "json",         
		            type:"post"   ,
		            data:  {
		            	"checkMedi":$('.checkMedi').val(),
			    			"checkMom":$('.checkMom').val(),
			    			"checkTeacher":$('.checkTeacher').val(),
			    			"checkCitizen":$('.checkCitizen').val(),
			    			"checkUniversity":$('.checkUniversity').val(),
			    			"profileNum": profileNum},
		            success:function(e){
		            	alert('인증이 완료되었습니다');
		            	  location.reload();
		            },
		            error:function(){
		            	alert('인증이 완료되었습니다');
		            	  location.reload();
		            }
		            
		            });
			 
			 
			 
			 
			 
			 
			 
			 
			 
			 
		}
		 
 
         
        
         	
//         $('.btn').click(function() {
//        	/* window.open(context+'/admin/AdminAuthChangeOk.ad=?ProfileNum=${auth.getProfileNum()}');*/
//        	 
//        	 var userId = localStorage.getItem('ProfileNum')
//        	 location.href= context+'/admin/AdminAuthChangeOk.ad'
//        	 
//		})
           
           
           