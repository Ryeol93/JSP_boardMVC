
const $heart = $('#heart');

$heart.on("click", function(){

	if($heart.attr("src")=='../../images/heart.png'){

		$heart.attr("src", "../../images/emptyHeart.png");
	}else{

		$heart.attr("src", "../../images/heart.png");
	}

	
});





function winPopup() {
    var popUrl = "chatNew.jsp";
    var popOption = "top=150, left=600, width=400, height=700, status=no, menubar=no, toolbar=no, resizable=no";
    window.open(popUrl, "_blank" , popOption, true);
}
