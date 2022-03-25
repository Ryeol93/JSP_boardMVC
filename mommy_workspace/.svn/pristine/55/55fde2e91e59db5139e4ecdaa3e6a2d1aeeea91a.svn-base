//구글 차트 api

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
         const $btns = $('.test');
         const $aw = $('.td1');
         $.each($btns, function(index, item){
         $(item).click(function(){
             $($aw[index]).toggle();
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
			 

    
  			 
  			 alert(profileNum);
  			 
  			 
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
		            	alert('수정하였습니다');
		            },
		            error:function(){
		            	alert('수정하였습니다');
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
           
           
           