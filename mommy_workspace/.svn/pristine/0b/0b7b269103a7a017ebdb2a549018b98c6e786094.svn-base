




const $heart = $('#heart');

$heart.on("click", function(){

	if($heart.attr("src")=='../../images/heart.png'){

		$heart.attr("src", "../../images/emptyHeart.png");
	}else{

		$heart.attr("src", "../../images/heart.png");
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

