
    function open(){
      document.querySelector(".modal").classList.remove("hidden");
    }
  
    function close(){
      document.querySelector(".modal").classList.add("hidden");
    }
    
    function open2(){
    	document.querySelector(".modal2").classList.remove("hidden");
    }
    
    function close2(){
    	document.querySelector(".modal2").classList.add("hidden");
    }
    function open3(){
    	document.querySelector(".modal3").classList.remove("hidden");
    }
    
    function close3(){
    	document.querySelector(".modal3").classList.add("hidden");
    }
  

    document.querySelector(".openBtn").addEventListener("click", open);
    document.querySelector(".bg").addEventListener("click", close);
    
    document.querySelector(".openBtn2").addEventListener("click", open2);
    document.querySelector(".bg2").addEventListener("click", close2);
  
    document.querySelector(".openBtn3").addEventListener("click", open3);
    document.querySelector(".bg3").addEventListener("click", close3);

    
 

	
		const $heart = $('.heart');

		$heart.on("click", function(){

			if($(this).attr("src")=='../images/emptyHeart.png'){
				
				$(this).attr("src", '../images/heart.png');
			}else{
			
				$(this).attr("src", '../images/emptyHeart.png');
			}
			
		});
		
/*		window.addEventListener( 'message', (e) => {
		    // 전달 된 데이터 
		    console.log( e.data.functionName );
		  
		    // 부모창의 함수 실행
		    if( e.data.functionName === 'modal' ){
		    		console.log(e.data.baby);
		    		$('input[name=baby]').val(e.data.baby);
		    }
		      
		});
		*/
		
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
		    const $play = $("img#play ");
		    const $goingSchool = $("img#goingSchool");
		    const $makeEat = $("img#makeEat");
		    const $cleaning = $("img#cleaning");
		    const $study = $("img#study");
		    
		    $newbornBaby.on("click",function(){

		        if($newbornBaby.attr('src')=='../images/신생아.png'){
		    		$newbornBaby.removeClass('on');
		            $newbornBaby.attr('src','../images/신생아no.png');
					}else{
						$newbornBaby.attr('src','../images/신생아.png');
						$newbornBaby.addClass('on');
					}
		    })

		    $baby.on("click",function(){
		        if($baby.attr('src')=='../images/영아.png'){
		        	$baby.removeClass('on');
		            $baby.attr('src','../images/영아no.png');
					}else{$baby.attr('src','../images/영아.png');
					$baby.addClass('on');
					}
		    })
		   
		    $kinder.on("click",function(){
		        if($kinder.attr('src')=='../images/유치원.png'){
		        	$kinder.removeClass('on');
		            $kinder.attr('src','../images/유치원no.png');
					}else{$kinder.attr('src','../images/유치원.png');
					$kinder.addClass('on');}
		    })
		    $elementary.on("click",function(){
		        if($elementary.attr('src')=='../images/초등학생.png'){
		        	$elementary.removeClass('on');
		            $elementary.attr('src','../images/초등학생no.png');
					}else{$elementary.attr('src','../images/초등학생.png');
					$elementary.addClass('on');}
		    })
		    $monday.on("click",function(){
		        if($monday.attr('src')=='../images/월1.png'){
		        	$monday.removeClass('on');
		            $monday.attr('src','../images/월.png');
					}else{
					$monday.attr('src','../images/월1.png');
					$monday.addClass('on');}
		    })
		    $tuesday.on("click",function(){
		        if($tuesday.attr('src')=='../images/화1.png'){
		        	$tuesday.removeClass('on');
		            $tuesday.attr('src','../images/화.png');
					}else{$tuesday.attr('src','../images/화1.png');
					$tuesday.addClass('on');}
		    })
		    $wednesday.on("click",function(){
		        if($wednesday.attr('src')=='../images/수1.png'){
		        	$wednesday.removeClass('on');
		            $wednesday.attr('src','../images/수.png');
					}else{$wednesday.attr('src','../images/수1.png');
					$wednesday.addClass('on');}
		    })
		    $thursday.on("click",function(){
		        if($thursday.attr('src')=='../images/목1.png'){
		        	$thursday.removeClass('on');
		            $thursday.attr('src','../images/목.png');
					}else{$thursday.attr('src','../images/목1.png');
					$thursday.addClass('on');}
		    })
		    $friday.on("click",function(){
		        if($friday.attr('src')=='../images/금1.png'){
		        	$friday.removeClass('on');
		            $friday.attr('src','../images/금.png');
					}else{$friday.attr('src','../images/금1.png');
					$friday.addClass('on');
		}
		    })
		    $saturday.on("click",function(){
		        if($saturday.attr('src')=='../images/토1.png'){
		        	$saturday.removeClass('on');
		            $saturday.attr('src','../images/토.png');
					}else{$saturday.attr('src','../images/토1.png');
					$saturday.addClass('on');}
		    })
		    $sunday.on("click",function(){
		        if($sunday.attr('src')=='../images/일1.png'){
		        	$sunday.removeClass('on');
		            $sunday.attr('src','../images/일.png');
					}else{$sunday.attr('src','../images/일1.png');
					$sunday.addClass('on');}
		    })
		    $morning.on("click",function(){
		        if($morning.attr('src')=='../images/아침.png'){
		        	$morning.removeClass('on');
		            $morning.attr('src','../images/아침1.png');
					}else{$morning.attr('src','../images/아침.png');
					$morning.addClass('on');}
		    })
		    $lunch.on("click",function(){
		        if($lunch.attr('src')=='../images/오후.png'){
					$lunch.removeClass('on');
		            $lunch.attr('src','../images/오후1.png');
					}else{$lunch.attr('src','../images/오후.png');
					$lunch.addClass('on');}
		    })
		    $dinner.on("click",function(){
		        if($dinner.attr('src')=='../images/저녁.png'){
		        	$dinner.removeClass('on');
		            $dinner.attr('src','../images/저녁1.png');
					}else{$dinner.attr('src','../images/저녁.png');
					$dinner.addClass('on');}
		    })
		   
		    $play.on("click",function(){
		        if($play.attr('src')=='../images/실내놀이.png'){
		        	$play.removeClass('on');
		            $play.attr('src','../images/no실내놀이.png');
					}else{$play.attr('src','../images/실내놀이.png');
					$play.addClass('on');}
		    })
		    $goingSchool.on("click",function(){
		        if($goingSchool.attr('src')=='../images/등하원.png'){
		        	$goingSchool.removeClass('on');
		            $goingSchool.attr('src','../images/no등하원.png');
					}else{$goingSchool.attr('src','../images/등하원.png');
					$goingSchool.addClass('on');}
		    })
		    $makeEat.on("click",function(){
		        if($makeEat.attr('src')=='../images/밥챙겨주기.png'){
		        	$makeEat.removeClass('on');
		            $makeEat.attr('src','../images/no밥챙겨주기.png');
					}else{$makeEat.attr('src','../images/밥챙겨주기.png');
					$makeEat.addClass('on');}
		    })
		    $cleaning.on("click",function(){
		        if($cleaning.attr('src')=='../images/청소.png'){
		        	$cleaning.removeClass('on');
		            $cleaning.attr('src','../images/no청소.png');
					}else{$cleaning.attr('src','../images/청소.png');
					$cleaning.addClass('on');}
		    })
		    $study.on("click",function(){
		        if($study.attr('src')=='../images/학습지도.png'){
		        	$study.removeClass('on');
		        	$study.attr('src','../images/no학습지도.png');
					}else{$study.attr('src','../images/학습지도.png');
					$study.addClass('on');}
		    })
		   

		   
    var newbornBaby=0;
    var baby =0;
    var kinder = 0;
    var elementary =0;
    var monday = 0;
    var tuesday = 0;
    var wednesday = 0;
    var thursday = 0;
    var friday = 0;
    var saturday = 0;
    var sunday = 0;
    var morning = 0;
    var lunch = 0;
    var dinner = 0;
    var twenty= 0;
    var thirty= 0;
    var fourty= 0;
    var fifty= 0;
    var sixty= 0;
    var play = 0;
    var goingSchool =0;
    var makeEat = 0;
    var cleaning = 0;
    var study = 0;
    var check=0;
    
    
    $('#close').on("click",function(){
    	check=1;
    	console.log(check);
    	if($("#baby").hasClass("on")==true){
    		baby=1; 
    		console.log("베이비 찍힘");
    	}
    	
    	if($("#newbornBaby").hasClass('on')==true){
    		newbornBaby=1;
    		console.log("신생아 찍힘");
    	}
    	if($("#kinder").hasClass('on')==true){
    		kinder=1;
    		console.log("유치원 찍힘");
     		
    	}
    	if($("#elementary").hasClass('on')==true){
    		elementary =1; 
    		console.log("초등학생 찍힘");
     		
    	}
    	if($("#monday").hasClass('on')==true){
    		monday=1; 
     		
    	}
    	if($("#tuesday").hasClass('on')==true){
    		tuesday =1; 
    	}
    	if($("#wednesday").hasClass('on')==true){
    		wednesday =1; 
    	}
    	if($("#thursday").hasClass('on')==true){
    		thursday =1;
    	}
    	if($("#friday").hasClass('on')==true){
    		friday =1; 
    	}
    	if($("#saturday").hasClass('on')==true){
    		saturday =1;
    	}
    	if($("#sunday").hasClass('on')==true){
    		sunday =1; 
    	}
    	if($("#morning").hasClass('on')==true){
    		morning =1;
    	}
    	if($("#lunch").hasClass('on')==true){
    		lunch =1; 
    	}
    	if($("#dinner").hasClass('on')==true){
    		dinner =1; 
    	}
    	
    	if($("#play").hasClass('on')==true){
    		play =1; 
    	}
    	if($("#goingSchool").hasClass('on')==true){
    		goingSchool =1; 
    	}
    	if($("#makeEat").hasClass('on')==true){
    		makeEat  =1; 
    	}
    	if($("#cleaning").hasClass('on')==true){
    		cleaning  =1; 
    	}
    	if($("#study").hasClass('on')==true){
    		study  =1;  
    	}
    	
    	submit();

    });

    
    
    function submit(){
    	
    	var form = document.createElement("form");
    	form.setAttribute("charset", "UTF-8");
        form.setAttribute("method", "Post");  //Post 방식
        form.setAttribute("action", "/mommy_workspace/service/SearchMomOk.ser"); //요청 보낼 주소
        

        var hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "babyNewborn");
        hiddenField.setAttribute("value", newbornBaby);
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "check");
        hiddenField.setAttribute("value", check);
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "babyKinder");
        hiddenField.setAttribute("value", baby);
        form.appendChild(hiddenField);
        
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "babyChild");
        hiddenField.setAttribute("value", kinder);
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "babyElementary");
        hiddenField.setAttribute("value", elementary );
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "P_mon");
        hiddenField.setAttribute("value", monday);
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "P_tue");
        hiddenField.setAttribute("value", tuesday );
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "P_wed");
        hiddenField.setAttribute("value", wednesday );
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "P_thu");
        hiddenField.setAttribute("value", thursday );
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "P_fri");
        hiddenField.setAttribute("value", friday );
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "P_sat");
        hiddenField.setAttribute("value", saturday );
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "P_sun");
        hiddenField.setAttribute("value", sunday );
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "P_morning");
        hiddenField.setAttribute("value", morning );
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "P_lunch");
        hiddenField.setAttribute("value", lunch );
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "P_noon");
        hiddenField.setAttribute("value", dinner );
        form.appendChild(hiddenField);
       
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "careIndoor");
        hiddenField.setAttribute("value", play);
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "careCommit");
        hiddenField.setAttribute("value", goingSchool);
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "careFood");
        hiddenField.setAttribute("value", makeEat );
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "careClean");
        hiddenField.setAttribute("value", cleaning );
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "careStudy");
        hiddenField.setAttribute("value", study );
        form.appendChild(hiddenField);

        document.body.appendChild(form);
        form.submit();
    	
    }
    
//	돌봄유형 모달창--------------------------------------------------------------------------
		const $goToSchool=$('#goToSchool');
		const $teach =$('#teach');
		const $fullTime=$('#fullTime');
		const $assistance=$('#assistance');
		const $emergency=$('#emergency');
		const $fullType=$('#fullType');
		
		
		$goToSchool.on("click",function(){
			location.href='/mommy_workspace/service/SearchMomOk.ser?careType=1';
		})
		$teach.on("click",function(){
			location.href='/mommy_workspace/service/SearchMomOk.ser?careType=2';
		})
		$fullTime.on("click",function(){
			location.href='/mommy_workspace/service/SearchMomOk.ser?careType=3';
		})
		$assistance.on("click",function(){
			location.href='/mommy_workspace/service/SearchMomOk.ser?careType=4';
		})
		$emergency.on("click",function(){
			location.href='/mommy_workspace/service/SearchMomOk.ser?careType=5';
		})
		$fullType.on("click",function(){
			location.href='/mommy_workspace/service/SearchMomOk.ser?careType=6';
		})
		
// 돌봄지역 모달창-------------------------------------------------------------------------

		$('#areaButton').on("click",function(){
			var sido=$("#sido option:selected").text();
			var sigugun=$("#sigugun option:selected").text();
			var dong=$("#dong option:selected").text();
				if(dong=="선택"){
					dong="";
				}
			location.href='/mommy_workspace/service/SearchMomOk.ser?sido='+sido+'&sigugun='+sigugun+'&dong='+dong;
		})

	
//	----------------------------------------------------------------------주소 시군동 오픈소스
	$(document).ready(function(){
	  //sido option 추가
	  $.each(hangjungdong.sido, function(idx, code){
	    //append를 이용하여 option 하위에 붙여넣음
	    $('#sido').append(fn_option(code.sido, code.codeNm));
	  });
	
	  //sido 변경시 시군구 option 추가
	  $('#sido').change(function(){
	    $('#sigugun').show();
	    $('#sigugun').empty();
	    $('#sigugun').append(fn_option('','선택')); //
	    $.each(hangjungdong.sigugun, function(idx, code){
	      if($('#sido > option:selected').val() == code.sido)
	        $('#sigugun').append(fn_option(code.sigugun, code.codeNm));
	    });
	
	    //세종특별자치시 예외처리
	    //옵션값을 읽어 비교
	    if($('#sido option:selected').val() == '36'){
	      $('#sigugun').hide();
	      //index를 이용해서 selected 속성(attr)추가
	      //기본 선택 옵션이 최상위로 index 0을 가짐
	      $('#sigugun option:eq(1)').attr('selected', 'selected');
	      //trigger를 이용해 change 실행
	      $('#sigugun').trigger('change');
	    }
	  });
	
	  //시군구 변경시 행정동 옵션추가
	  $('#sigugun').change(function(){
	    //option 제거
	    $('#dong').empty();
	    $.each(hangjungdong.dong, function(idx, code){
	      if($('#sido > option:selected').val() == code.sido && $('#sigugun > option:selected').val() == code.sigugun)
	        $('#dong').append(fn_option(code.dong, code.codeNm));
	    });
	    //option의 맨앞에 추가
	    $('#dong').prepend(fn_option('','선택'));
	    //option중 선택을 기본으로 선택
	    $('#dong option:eq("")').attr('selected', 'selected');
	
	  });
	
	  $('#dong').change(function(){
	    var sido = $('#sido option:selected').val();
	    var sigugun = $('#sigugun option:selected').val();
	    var dong = $('#dong option:selected').val();
	    var dongCode = sido + sigugun + dong + '00';

	  });
	});
	
	function fn_option(code, name){
	  return '<option value="' + code +'">' + name +'</option>';
	}
	
//	무한스크롤---------------------------------------------------------------------------------------

	const contents = document.querySelector(".userAll") // tbody 태그
/*	let paraIndex = 1;
	async function fetchLorem() {
	    const response = await fetch("https://baconipsum.com/api/?type=meat-and-filler&paras=18");
	    const data = await response.json();
	    
	    for(let i = 0; i < 6; i++) {
	        const $tr = document.createElement("tr");
	        $tr.innerHTML = `<td width='50' align='center'>${paraIndex++}</td>
	                            <td>${data[(i * 3)]}<br>${data[(i * 3) + 1]}<br>${data[(i * 3) + 2]}</td>`
	        contents.appendChild($tr);
	    }
	    
	}*/
	
	
	function debounce(callback, limit = 100) {
	    let timeout
	    return function(...args) {  
	        clearTimeout(timeout)
	        timeout = setTimeout(() => {
	            callback.apply(this, args)
	        }, limit)
	    } 
	}
	   
	document.addEventListener("scroll", debounce(e => {
	    
	    // clientHeight : 웹 브라우저 창의 높이
	    // scrollTop : 현재 스크롤된 부분의 맨 위의 높이
	    // scrollHeight : 문서의 총 높이 (= 스크롤의 총 높이)
	    // 스크롤의 마지막에 도달 : clientHeight + scrollTop >= scrollHeight
	    
	    const { clientHeight, scrollTop, scrollHeight } = e.target.scrollingElement
	    if(clientHeight + scrollTop >= scrollHeight) {
	    	contents
	    }
	}, 200))
	
	       
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	