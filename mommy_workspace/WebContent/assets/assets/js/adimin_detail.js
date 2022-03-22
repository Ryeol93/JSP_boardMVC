
$(document).ready(function(){

 


 




$('#CheckMedi').on('change', function(){
	$('#CheckMedi').val(this.checked ? 1 : 0);
	});

$('#CheckMom').on('change', function(){
	$('#CheckMom').val(this.checked ? 1 : 0);
	});
$('#CheckTeacher').on('change', function(){
	$('#CheckTeacher').val(this.checked ? 1 : 0);
	});
$('#CheckCitizen').on('change', function(){
	$('#CheckCitizen').val(this.checked ? 1 : 0);
	});
$('#CheckUniversity').on('change', function(){
	$('#CheckUniversity').val(this.checked ? 1 : 0);
	});

$('#btnn').click(function() {

	
	
	alert("수정완료");
})

});