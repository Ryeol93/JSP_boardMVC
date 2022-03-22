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
	
 
 
 
 /*  $('.openBtn').on("click", open());   ------------> 안됨 */
/*   document.querySelector(".openBtn").addEventListener("click", open); */
  document.querySelector(".submitBtn").addEventListener("click", close);
  document.querySelector(".bg").addEventListener("click", close);

  
  /*
  
 제이쿼리로 변경 ( 또는 객체에 담아서 반복 )
  document.getElementsByClassName('openBtn').addEventListener("click", open);
*/
