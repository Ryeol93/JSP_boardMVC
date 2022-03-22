  const $newbornBaby = $("img#newbornBaby");
    const $baby = $("img#baby");
    const $kinder = $("img#kinder");
    const $elementary =$("img#elementary");
    const $monday = $("img#monday");
    const $tuesday = $("img#tuesday ");
    const $wednesday = $("img#wednesday");
    const $thursday = $("img#thursday");
    const $friday = $("img#friday");
    const $saturday = $("img#saturday");
    const $sunday = $("img#sunday");
    const $morning = $("img#morning");
    const $lunch = $("img#lunch");
    const $dinner = $("img#dinner");
    const $twenty= $("img#twenty");
    const $thirty= $("img#thirty");
    const $fourty= $("img#fourty");
    const $fifty= $("img#fifty");
    const $sixty= $("img#sixty");
    const $play = $("img#play ");
    const $goingSchool = $("img#goingSchool");
    const $makeEat = $("img#makeEat");
    const $cleaning = $("img#cleaning");
    const $study = $("img#study");
    

    $('#close').on("click", function(){
    	var newbornBaby =$('#newbornBaby').hasClass('on');
    	var baby =$('#baby').hasClass('on');
    	var kinder =$('#kinder').hasClass('on');
    	var elementary =$('#elementary').hasClass('on');
    	var monday =$('#monday').hasClass('on');
    	var tuesday =$('#tuesday').hasClass('on');
    	var wednesday =$('#wednesday').hasClass('on');
    	var thursday =$('#thursday').hasClass('on');
    	var friday =$('#friday').hasClass('on');
    	var saturday =$('#saturday').hasClass('on');
    	var sunday =$('#sunday').hasClass('on');
    	var morning =$('#morning').hasClass('on');
    	var lunch =$('#lunch').hasClass('on');
    	var dinner =$('#dinner').hasClass('on');
    	var twenty =$('#twenty').hasClass('on');
    	var thirty =$('#thirty').hasClass('on');
    	var fourty =$('#fourty').hasClass('on');
    	var fifty =$('#fifty').hasClass('on');
    	var sixty =$('#sixty').hasClass('on');
    	var play =$('#play').hasClass('on');
    	var goingSchool =$('#goingSchool').hasClass('on');
    	var makeEat =$('#makeEat').hasClass('on');
    	var cleaning =$('#cleaning').hasClass('on');
    	var study =$('#study').hasClass('on');
    	 
    	
    	/*window.parent.postMessage(
    		    // 전달할 data (부모창에서 호출할 함수명)
    		    { functionName : 'modal',
    		    	baby:baby

    		    
    		    }
    		    // 부모창의 도메인
    		    // , 'http://test.com'
    		    // 모든 도메인에 대하여 허용 ( 추천하지 않음 )
    		    , '*' 
    		);
    	*/
    	
    	window.parent.location.href="/mommy_workspace/service/SearchMomOk.ser?newbornBaby="+newbornBaby +"&baby="+baby;
  
    	
    	/*window.parent.location.reload(); // 부모창 새로고침 */    
    	/*window.parent.location.href = url;*/
    	
    	
    });

    $newbornBaby.on("click",function(){

        if($newbornBaby.attr('src')=='../../images/신생아.png'){
    		$newbornBaby.removeClass('on');
            $newbornBaby.attr('src','../../images/신생아no.png');
			}else{
				$newbornBaby.attr('src','../../images/신생아.png');
				$newbornBaby.addClass('on');
			}
    })

    $baby.on("click",function(){
        if($baby.attr('src')=='../../images/영아.png'){
        	$baby.removeClass('on');
            $baby.attr('src','../../images/영아no.png');
			}else{$baby.attr('src','../../images/영아.png');
			$baby.addClass('on');
			}
    })
   
    $kinder.on("click",function(){
        if($kinder.attr('src')=='../../images/유치원.png'){
        	$kinder.removeClass('on');
            $kinder.attr('src','../../images/유치원no.png');
			}else{$kinder.attr('src','../../images/유치원.png');
			$kinder.addClass('on');}
    })
    $elementary.on("click",function(){
        if($elementary.attr('src')=='../../images/초등학생.png'){
        	$elementary.removeClass('on');
            $elementary.attr('src','../../images/초등학생no.png');
			}else{$elementary.attr('src','../../images/초등학생.png');
			$elementary.addClass('on');}
    })
    $monday.on("click",function(){
        if($monday.attr('src')=='../../images/월.png'){
        	$monday.removeClass('on');
            $monday.attr('src','../../images/월1.png');
			}else{
			$monday.attr('src','../../images/월.png');
			$monday.addClass('on');}
    })
    $tuesday.on("click",function(){
        if($tuesday.attr('src')=='../../images/화.png'){
        	$tuesday.removeClass('on');
            $tuesday.attr('src','../../images/화1.png');
			}else{$tuesday.attr('src','../../images/화.png');
			$tuesday.addClass('on');}
    })
    $wednesday.on("click",function(){
        if($wednesday.attr('src')=='../../images/수.png'){
        	$wednesday.removeClass('on');
            $wednesday.attr('src','../../images/수1.png');
			}else{$wednesday.attr('src','../../images/수.png');
			$wednesday.addClass('on');}
    })
    $thursday.on("click",function(){
        if($thursday.attr('src')=='../../images/목.png'){
        	$thursday.removeClass('on');
            $thursday.attr('src','../../images/목1.png');
			}else{$thursday.attr('src','../../images/목.png');
			$thursday.addClass('on');}
    })
    $friday.on("click",function(){
        if($friday.attr('src')=='../../images/금.png'){
        	$tuesday.removeClass('on');
            $friday.attr('src','../../images/금1.png');
			}else{$friday.attr('src','../../images/금.png');
        	$tuesday.addClass('on');
}
    })
    $saturday.on("click",function(){
        if($saturday.attr('src')=='../../images/토.png'){
        	$saturday.removeClass('on');
            $saturday.attr('src','../../images/토1.png');
			}else{$saturday.attr('src','../../images/토.png');
			saturday.addClass('on');}
    })
    $sunday.on("click",function(){
        if($sunday.attr('src')=='../../images/일.png'){
        	$sunday.removeClass('on');
            $sunday.attr('src','../../images/일1.png');
			}else{$sunday.attr('src','../../images/일.png');
			$sunday.addClass('on');}
    })
    $morning.on("click",function(){
        if($morning.attr('src')=='../../images/아침.png'){
        	$morning.removeClass('on');
            $morning.attr('src','../../images/아침1.png');
			}else{$morning.attr('src','../../images/아침.png');
			$morning.addClass('on');}
    })
    $lunch.on("click",function(){
        if($lunch.attr('src')=='../../images/오후.png'){
			$lunch.removeClass('on');
            $lunch.attr('src','../../images/오후1.png');
			}else{$lunch.attr('src','../../images/오후.png');
			$lunch.addClass('on');}
    })
    $dinner.on("click",function(){
        if($dinner.attr('src')=='../../images/저녁.png'){
        	$dinner.removeClass('on');
            $dinner.attr('src','../../images/저녁1.png');
			}else{$dinner.attr('src','../../images/저녁.png');
			$dinner.addClass('on');}
    })
    $twenty.on("click",function(){
        if($twenty.attr('src')=='../../images/20대.jpg'){
        	$twenty.removeClass('on');
            $twenty.attr('src','../../images/20대1.jpg');
			}else{$twenty.attr('src','../../images/20대.jpg');
			$twenty.addClass('on');}
    })
    $thirty.on("click",function(){
        if($thirty.attr('src')=='../../images/30대.jpg'){
        	$thirty.removeClass('on');
            $thirty.attr('src','../../images/30대1.jpg');
			}else{$thirty.attr('src','../../images/30대.jpg');
			$thirty.addClass('on');}
    })
    $fourty.on("click",function(){
        if($fourty.attr('src')=='../../images/40대.jpg'){
        	$fourty.removeClass('on');
            $fourty.attr('src','../../images/40대1.jpg');
			}else{$fourty.attr('src','../../images/40대.jpg');
		  	$fourty.addClass('on');}
    })
    $fifty.on("click",function(){
        if($fifty.attr('src')=='../../images/50대.jpg'){
        	$fifty.removeClass('on');
            $fifty.attr('src','../../images/50대1.jpg');
			}else{$fifty.attr('src','../../images/50대.jpg');
			$fifty.addClass('on');}
    })
    $sixty.on("click",function(){
        if($sixty.attr('src')=='../../images/60대.jpg'){
        	$sixty.removeClass('on');
            $sixty.attr('src','../../images/60대1.jpg');
			}else{$sixty.attr('src','../../images/60대.jpg');
			$sixty.addClass('on');}
    })
    $play.on("click",function(){
        if($play.attr('src')=='../../images/실내놀이.png'){
        	$play.removeClass('on');
            $play.attr('src','../../images/no실내놀이.png');
			}else{$play.attr('src','../../images/실내놀이.png');
			$play.addClass('on');}
    })
    $goingSchool.on("click",function(){
        if($goingSchool.attr('src')=='../../images/등하원.png'){
        	$goingSchool.removeClass('on');
            $goingSchool.attr('src','../../images/no등하원.png');
			}else{$goingSchool.attr('src','../../images/등하원.png');
			$goingSchool.addClass('on');}
    })
    $makeEat.on("click",function(){
        if($makeEat.attr('src')=='../../images/밥챙겨주기.png'){
        	$makeEat.removeClass('on');
            $makeEat.attr('src','../../images/no밥챙겨주기.png');
			}else{$makeEat.attr('src','../../images/밥챙겨주기.png');
			$makeEat.addClass('on');}
    })
    $cleaning.on("click",function(){
        if($cleaning.attr('src')=='../../images/청소.png'){
        	$cleaning.removeClass('on');
            $cleaning.attr('src','../../images/no청소.png');
			}else{$cleaning.attr('src','../../images/청소.png');
			$cleaning.addClass('on');}
    })
    $study.on("click",function(){
        if($study.attr('src')=='../../images/학습지도.png'){
        	$study.removeClass('on');
        	$study.attr('src','../../images/no학습지도.png');
			}else{$study.attr('src','../../images/학습지도.png');
			$study.addClass('on');}
    })
   


