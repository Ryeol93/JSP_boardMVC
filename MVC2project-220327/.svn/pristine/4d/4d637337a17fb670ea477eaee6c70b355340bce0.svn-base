    
class Slider {
	  constructor (rangeElement, valueElement, options) {
	    this.rangeElement = rangeElement
	    this.valueElement = valueElement
	    this.options = options

	    // Attach a listener to "change" event
	    this.rangeElement.addEventListener('input', this.updateSlider.bind(this))
	  }

	  // Initialize the slider
	  init() {
	    this.rangeElement.setAttribute('min', options.min)
	    this.rangeElement.setAttribute('max', options.max)
	    this.rangeElement.value = options.cur

	    this.updateSlider()
	  }

	  // Format the money
	  asMoney(value) {
	    return parseFloat(value) + ' 원'
	      .toLocaleString('en-US', { maximumFractionDigits: 2 })
	  }

	  generateBackground(rangeElement) {   
	    if (this.rangeElement.value === this.options.min) {
	      return
	    }

	    let percentage =  (this.rangeElement.value - this.options.min) / (this.options.max - this.options.min) * 100
	    return 'background: linear-gradient(to right, #ffb61a, #ff7065 ' + percentage + '%, #d3edff ' + percentage + '%, #dee1e2 100%)'
	  }

	  updateSlider (newValue) {
	    this.valueElement.innerHTML = this.asMoney(this.rangeElement.value)
	    this.rangeElement.style = this.generateBackground(this.rangeElement.value)
	  }
	}

	let rangeElement = document.querySelector('.range [type="range"]')
	let valueElement = document.querySelector('.range .range__value span') 

	let options = {
	  min: 9160,
	  max: 30001,
	  cur: 9160
	}

	if (rangeElement) {
	  let slider = new Slider(rangeElement, valueElement, options)

	  slider.init()
	}

	    jQuery(document).ready(function(){
	      //sido option 추가
	      jQuery.each(hangjungdong.sido, function(idx, code){
	        //append를 이용하여 option 하위에 붙여넣음
	        jQuery('#sido').append(fn_option(code.sido, code.codeNm));
	      });
	    
	      //sido 변경시 시군구 option 추가
	      jQuery('#sido').change(function(){
	        jQuery('#sigugun').show();
	        jQuery('#sigugun').empty();
	        jQuery('#sigugun').append(fn_option('','선택')); //
	        jQuery.each(hangjungdong.sigugun, function(idx, code){
	          if(jQuery('#sido > option:selected').val() == code.sido)
	            jQuery('#sigugun').append(fn_option(code.sigugun, code.codeNm));
	        });
	    
	        //세종특별자치시 예외처리
	        //옵션값을 읽어 비교
	        if(jQuery('#sido option:selected').val() == '36'){
	          jQuery('#sigugun').hide();
	          //index를 이용해서 selected 속성(attr)추가
	          //기본 선택 옵션이 최상위로 index 0을 가짐
	          jQuery('#sigugun option:eq(1)').attr('selected', 'selected');
	          //trigger를 이용해 change 실행
	          jQuery('#sigugun').trigger('change');
	        }
	      });
	    
	      //시군구 변경시 행정동 옵션추가
	      jQuery('#sigugun').change(function(){
	        //option 제거
	        jQuery('#dong').empty();
	        jQuery.each(hangjungdong.dong, function(idx, code){
	          if(jQuery('#sido > option:selected').val() == code.sido && jQuery('#sigugun > option:selected').val() == code.sigugun)
	            jQuery('#dong').append(fn_option(code.dong, code.codeNm));
	        });
	        //option의 맨앞에 추가
	        jQuery('#dong').prepend(fn_option('','선택'));
	        //option중 선택을 기본으로 선택
	        jQuery('#dong option:eq("")').attr('selected', 'selected');
	    
	      });
	    
	      jQuery('#dong').change(function(){
	        var sido = jQuery('#sido option:selected').val();
	        var sigugun = jQuery('#sigugun option:selected').val();
	        var dong = jQuery('#dong option:selected').val();
	        var dongCode = sido + sigugun + dong + '00';

	      });
	    });
	    
	    function fn_option(code, name){
	      return '<option value="' + code +'">' + name +'</option>';
	    }
	    


	const $period = $('div#period');

	$period.on("click", function(){
		 console.log("들어옴");
		 modal('my_modal');
		 
	});

	function modal(id) {
		    var zIndex = 9999;
		    var modal = document.getElementById(id);

		    // 모달 div 뒤에 희끄무레한 레이어
		    var bg = document.createElement('div');
		    bg.setStyle({
		        position: 'fixed',
		        zIndex: zIndex,
		        left: '0px',
		        top: '0px',
		        width: '100%',
		        height: '100%',
		        overflow: 'auto',
		        // 레이어 색갈은 여기서 바꾸면 됨
		        backgroundColor: 'rgba(0,0,0,0.4)'
		    });
		    document.body.append(bg);

		    // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
		    modal.querySelector('.modal_close_btn').addEventListener('click', function() {
		        bg.remove();
		        modal.style.display = 'none';
		    });

		    modal.setStyle({
		        position: 'fixed',
		        display: 'block',
		        boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

		        // 시꺼먼 레이어 보다 한칸 위에 보이기
		        zIndex: zIndex + 1,

		        // div center 정렬
		        top: '55%',
		        left: '50%',
		        transform: 'translate(-50%, -50%)',
		        msTransform: 'translate(-50%, -50%)',
		        webkitTransform: 'translate(-50%, -50%)'
		    });
		}

		// Element 에 style 한번에 오브젝트로 설정하는 함수 추가
		Element.prototype.setStyle = function(styles) {
		    for (var k in styles) this.style[k] = styles[k];
		    return this;
		};


	   function checkFile(el){

	// files 로 해당 파일 정보 얻기.
	var file = el.files;

	// file[0].size 는 파일 용량 정보입니다.
	if(file[0].size > 1024 * 1024 * 10){
	   // 용량 초과시 경고후 해당 파일의 용량도 보여줌
	   alert('10MB 이하 파일만 등록할 수 있습니다.\n\n' + '현재파일 용량 : ' + (Math.round(file[0].size / 1024 / 1024 * 100) / 100) + 'MB');
	}else {
		document.getElementById('upload').style.backgroundColor="#ffb61a";
			
	} 
	return;

	// 체크에 걸리면 선택된 내용 취소 처리를 해야함.
	// 파일선택 폼의 내용은 스크립트로 컨트롤 할 수 없습니다.
	// 그래서 그냥 새로 폼을 새로 써주는 방식으로 초기화 합니다.
	// 이렇게 하면 간단 !?
	el.outerHTML = el.outerHTML;
	}
	   