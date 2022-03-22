




const $heart = $('#heart');


/*
 * $heart.on("click", function(){
	if($(this).attr('src')=='../images/emptyHeart.png'){
		
		
		console.log("찜하기");
		  $.ajax({
		        url: contextPath + "/service/FavoriteInsertOk.com",
		        type: "post",
		        data: {"userNum": userNum, "profileNum": profileNum},
		        
		        success: function(){
		        	$(this).attr('src', '../images/heart.png');
		            console.log("찜하기 완료");
		        },
		        error: function(){
		            console.log("찜하기 오류");
		        }
		    });
	}else{
		
		
		 $.ajax({
		        url: contextPath + "/service/FavoriteDeleteOk.com",
		        type: "post",
		        data: {"userNum": userNum, "profileNum": profileNum},
		        
		        success: function(){
		        	$(this).attr("src", '../images/heart.png');
		            console.log("찜하기 완료");
		        },
		        error: function(){
		            console.log("찜하기 오류");
		        }
		    });
		$(this).attr('src', '../images/emptyHeart.png');
	}
	
});
 * */

$heart.on("click", function(){
	console.log("userNum: " + userNum);
	console.log("profileNum: " + userNum2);
	if($(this).attr('src')=='https://cdn.discordapp.com/attachments/954273372760571914/955209503157145660/emptyHeart.png'){
		/* 찜하기 등록 */
		
		$(this).attr('src', 'https://cdn.discordapp.com/attachments/954273372760571914/955209502918082700/heart.png');
		  $.ajax({
		        url: contextPath + "/service/FavoriteInsertOk.ser",
		        type: "post",
		        data: {"userNum": userNum, "profileNum": userNum2},
		        
		        success: function(){
		            console.log("찜하기 완료");
		        },
		        error: function(){
		            console.log("찜하기 오류");
		        }
		    });
	}else{
		/*찜하기 삭제*/
		$(this).attr('src', 'https://cdn.discordapp.com/attachments/954273372760571914/955209503157145660/emptyHeart.png');
		 $.ajax({
		        url: contextPath + "/service/FavoriteDeleteOk.ser",
		        type: "post",
		        data: {"userNum": userNum, "profileNum": userNum2},
		        
		        success: function(){
		        	$(this).attr("src", '../images/heart.png');
		            console.log("찜하기 삭제");
		        },
		        error: function(){
		            console.log("찜하기 오류");
		        }
		    });
	
	}
	
});


/*

$(function(){
	
	$("#heart").on("click", function(){
			console.log("들어모");

		   if($(this).attr("src") == "${pageContext.request.contextPath}/images/heart.png"){

		      $(this).attr("src", "${pageContext.request.contextPath}/images/emptyHeart.png");
		   }else{

		      $(this).attr("src", "${pageContext.request.contextPath}/images/heart.png");
		   }

		   
		});
	
})
*/


/*
 * const $heart = $("#heart");

$heart.on("click", function(){

   if($heart.attr("src")=='images/heart.png'){

      $heart.attr("src", "images/emptyHeart.png");
   }else{

      $heart.attr("src", "images/heart.png");
   }

   
});
 * */



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

