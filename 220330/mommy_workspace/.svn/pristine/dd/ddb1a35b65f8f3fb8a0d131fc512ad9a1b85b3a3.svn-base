
$(document).ready(function(){

$('#checkMedi').on('change', function(){
	$('#CheckMedi').val(this.checked ? 1 : 0);
	});

$('#checkMom').on('change', function(){
	$('#checkMom').val(this.checked ? 1 : 0);
	});
$('#checkTeacher').on('change', function(){
	$('#checkTeacher').val(this.checked ? 1 : 0);
	});
$('#checkCitizen').on('change', function(){
	$('#checkCitizen').val(this.checked ? 1 : 0);
	});
$('#checkUniversity').on('change', function(){
	$('#checkUniversity').val(this.checked ? 1 : 0);
	});



$('#btnn').click(function() {
	
	 
      $.ajax({
            url: context + "/admin/AdminAuthChangeOk.ad",      
            dataType: "json",         
            type:"post"   ,
            data:  {"profileNum": profileNum,
	    			"checkMom":$('#checkMom').val(),
	    			"checkTeacher":$('#checkTeacher').val(),
	    			"checkCitizen":$('#checkCitizen').val(),
	    			"checkMedi":$('#checkMedi').val(),
	    			"checkUniversity":$('#checkUniversity').val()},
            success:function(e){
            	alert('수정하였습니다');
            },
            error:function(){
               alert("실패");
            }
            
            });

}); 	

	
});