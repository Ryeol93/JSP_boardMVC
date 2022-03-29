



const $heart = $('#heart');


$heart.on("click", function(){
	console.log("userNum: " + userNum);
	console.log("profileNum: " + userNum2);
	if($(this).attr('src')=='https://cdn.discordapp.com/attachments/954273372760571914/955209503157145660/emptyHeart.png'){
		/* 찜하기 등록 */
		
		$(this).attr('src', 'https://cdn.discordapp.com/attachments/954273372760571914/955209502918082700/heart.png');
		  $.ajax({
		        url: contextPath + "/service/FavoriteInsertOk.ser",
		        type: "post",
		        data: {"userNum": userNum, "profileUserNum": userNum2,"profileNum":profileNum},
		        
		      
		    });
	}else{
		/*찜하기 삭제*/
		$(this).attr('src', 'https://cdn.discordapp.com/attachments/954273372760571914/955209503157145660/emptyHeart.png');
		 $.ajax({
		        url: contextPath + "/service/FavoriteDeleteOk.ser",
		        type: "post",
		        data: {"userNum": userNum, "profileUserNum": userNum2,"profileNum":profileNum},
		        
		     
		    });
	
	}
	
});


const open = () => {
    document.querySelector(".modal").classList.remove("hidden");
    console.log("check");
  }

  const close = () => {
    document.querySelector(".modal").classList.add("hidden");
  }

  
  document.querySelector(".openBtn").addEventListener("click", open);
  document.querySelector(".submitBtn").addEventListener("click", close);
  document.querySelector(".bg").addEventListener("click", close);
  
  

// 인서트하기  
function insert(){
	
	var chatTitle = $('#chatTitle').val();
	var chatContent = $('#chatContent').val();
	console.log("요청");
	$.ajax({
	       url: contextPath + "/chat/ChatInsertOk.chat",
	       type: "get",
	       dataType: "json",
	       data: {"userNum": userNum , "userNum2": userNum2,
	    	   "chatTitle": chatTitle, "chatContent": chatContent},
	   	success:function(data){
			console.log(data);
		},
		error:function(){
			console.log("실패");
		}
	 
	});
	 alert("요청 전송 완료!");
}




const label = document.querySelectorAll('.label');
label.forEach(function(lb){
    lb.addEventListener('click', e => {
        let optionList = lb.nextElementSibling;
        let optionItems = optionList.querySelectorAll('.optionItem');
        clickLabel(lb, optionItems);
    })
});
const clickLabel = (lb, optionItems) => {
    if(lb.parentNode.classList.contains('active')) {
        lb.parentNode.classList.remove('active');
        optionItems.forEach((opt) => {
            opt.removeEventListener('click', () => {
                handleSelect(lb, opt)
            })
        })
    } else {
        lb.parentNode.classList.add('active');
        optionItems.forEach((opt) => {
            opt.addEventListener('click', () => {
                handleSelect(lb, opt)
            })
        })
    }
}
const handleSelect = (label, item) => {
    label.innerHTML = item.textContent;
    label.parentNode.classList.remove('active');
}


$( '.activity:empty' ).css('display','none');


