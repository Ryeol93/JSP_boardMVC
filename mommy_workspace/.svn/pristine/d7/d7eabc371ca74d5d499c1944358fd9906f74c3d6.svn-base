  const $lookProfile=$('#lookProfile');
  const $bookMark =$('#bookMark');
  const $changePw = $('#changePw');
  const $information = $('#information');
  const $myPageCkbtn = $('#myPageCkbtn');

  

const $main = $('.media-main');
const $mainBox=$('.mainBox');
var pwCkCnt = 0;

var flag = false;
   console.log(contextPath);
   console.log("dasdasdasd");
   
  var contents = $.ajax({
		url: contextPath +"/myPage/MyPagePwCk.my", 		// 통신할url
		dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
		type:"get"	,
		success:function(e){
			$('div#informatiom').html(e);
		},
		error:function(){
			alert("실패");
		}
		
	});
 
   
  
  $(function (){ $("#chat").click(function (){
		$("#divToggle").toggle();
		
	}); });

  $(function (){ $("#chatGray").click(function (){
		$("#divToggle").toggle();
		
	}); });

  
	
	$changePw.on("click",function(){
	
		contents=$.ajax({
			url:  contextPath + "/myPage/MyPageChangePw.my", 		// 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success:function(e){
				$('div#informatiom').html(e);
			},
			error:function(){
				alert("실패");
			}
			
			});
		
		 if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
		  		$mainBox.css('display','block');}
	});
 	
	
	$lookProfile.on("click",function(){
	
		contents=$.ajax({
			url: "lookSitterProfile.jsp", 		// 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success:function(e){
				$('div#informatiom').html(e);
			},
			error:function(){
				alert("실패");
			}
			
			});
		
		 if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
		  		$mainBox.css('display','block');}
	});
   	
/*	$information.on("click",function(){
		if(flag){
		contents=$.ajax({
			url: "myPageInfo.jsp", 		// 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success:function(e){
				$('div#informatiom').html(e);
			},
			error:function(){
				alert("실패");
			}
			
			});
		
		 if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
		  		$mainBox.css('display','block');}
		}else{
			alert('비밀번호 ');
		}
	});*/
	$information.on("click",function(){
		
			contents=$.ajax({
				url: contextPath +"/myPage/MyPagePwCk.my", 		// 통신할url
				dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
				type:"get"	,
				success:function(e){
					$('div#informatiom').html(e);
				},
				error:function(){
					alert("실패");
				}
				
			});
			
			if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
				$mainBox.css('display','block');}
	});
   	

	$bookMark.on("click",function(){
	
		contents=$.ajax({
			url:  contextPath + "/service/FavoriteListOk.ser", 		// 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success:function(e){
				$('div#informatiom').html(e);
			},
			error:function(){
				alert("실패");
			}
			
			});
		
		 if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
		  		$mainBox.css('display','block');}
	});
	

	
	// 마이페이지 아이디, 비밀번호 입력후 검사 성공 한다면 실행할 이벤트 
	function myPageCk() {
		//	비밀번호 검사후 아래 ajax로 창이동   
				var $myPagePwInput=$('input[name=myPagePwInput]').val();
				console.log($myPagePwInput);
				console.log('===========');
				console.log(contextPath);
				contents=$.ajax({
				url: contextPath +"/myPage/MyPagePwCkOk.my", // 통신할url
				data:{"userPw":$myPagePwInput},
				type:"POST"	,
				dataType: "json",
				success: function(data) {
					
					// 인증성공
					// 컨트롤러에서 인증에 성공했다면 세션에 로그인한 유저번호를 받아서 
					// 현재 세션의 번호와맞는지 한번더 검사한다. 
					if(data.userNum == userNum){
						console.log('비밀번호 체크  성공')
						contents=$.ajax({
							url: contextPath +"/myPage/MyPageInfo.my", 		// 통신할url
							dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
							type:"get"	,
							success:function(e){
								$('div#informatiom').html(e);
							},
							error:function(){
								alert("실패");
							}
							
						});
						
					}else{
						console.log('비밀번호 체크 실패')
						var text = "";
						
						$("#idFaildText").html(text);
							text ="<p>입력한 비밀번호가 맞지 않습니다.</p>"
							$("#idFaildText").html(text);
					}
				},
				error:function(){
					console.log('실패')
				}
				
			});
/*--------------------------------원래코드-----------------------------------------------*/
/*				// 마이페이지 아이디, 비밀번호 입력후 검사 성공 한다면 실행할 이벤트 
				function myPageCk() {
					//	비밀번호 검사후 아래 ajax로 창이동   
							var $myPagePwInput=$('input[name=myPagePwInput]').val();
							console.log($myPagePwInput);
							console.log('===========');
							console.log(contextPath);
							contents=$.ajax({
							url: contextPath +"/myPage/MyPagePwCkOk.my", // 통신할url
							data:{"userPw":$myPagePwInput},
							type:"POST"	,
							dataType: "json",
							success: function(data) {
								
								// 인증성공
								// 컨트롤러에서 인증에 성공했다면 세션에 로그인한 유저번호를 받아서 
								// 현재 세션의 번호와맞는지 한번더 검사한다. 
								if(data.userNum == userNum){
									console.log('비밀번호 체크  성공')
									contents=$.ajax({
										url: contextPath +"/myPage/MyPageInfo.my", 		// 통신할url
										dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
										type:"get"	,
										success:function(e){
											$('div#informatiom').html(e);
										},
										error:function(){
											alert("실패");
										}
										
									});
									
								}else{
									console.log('비밀번호 체크 실패')
									var text = "";
									++pwCkCnt;
									
								
									$("#idFaildText").html(text);
									if(pwCkCnt >= 5){
									text = "<p>비밀번호 인증 횟수 초과입니다. 고객센터로 문의하세요</p>";
									$(".infoWrapper").html(text);
									}else{
										text ="<p>비밀번호 인증에 실패하였습니다. (남은 시도횟수"+ (5 -pwCkCnt) +"회)</p>"
										$("#idFaildText").html(text);
									}
								}
							},
							error:function(){
								console.log('실패')
							}
							
						});
						if (window.matchMedia("(max-width: 700px)").matches) {
							$main.css('display','none');
							$mainBox.css('display','block');
					}
				}*/
/*--------------------------------------------------------------------------------------------------------*/
				
/*			if (window.matchMedia("(max-width: 700px)").matches) {
				$main.css('display','none');
				$mainBox.css('display','block');
		}*/
	}
	
/*	function ckResult(){
		
		$('div#informatiom').html(e);
		contents=$.ajax({
			url: contextPath +"/user/MyPageInfo.user", // 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success: ckResult(),
			error:function(){
				alert("실패");
			}
			
		});
		
		if (window.matchMedia("(max-width: 700px)").matches) {
			$main.css('display','none');
			$mainBox.css('display','block');
		}
	}
	
	*/
	
	
	

	
/*	$myPageCkbtn.on("click",function(){
		alret('tstasd');
		contents=$.ajax({
			url: "myPageInfo.jsp", 		// 통신할url
			dataType: "html",			//전송받은 데이터를 변환시킬 컨텐츠 타입
			type:"get"	,
			success:function(e){
				$('div#informatiom').html(e);
			},
			error:function(){
				alert("실패");
			}
			
		});
		
		if (window.matchMedia("(max-width: 700px)").matches) {
			$main.css('display','none');
			$mainBox.css('display','block');}
	});
   	*/


    const open = () => {
      document.querySelector(".modal").classList.remove("hidden");
      console.log("check");
    }
  
    const close = () => {
      document.querySelector(".modal").classList.add("hidden");
    }
  
    
    document.querySelector(".openBtn").addEventListener("click", open);
    document.querySelector(".submitBtn").addEventListener("click", close);
    document.querySelector(".quit").addEventListener("click", close);
    document.querySelector(".bg").addEventListener("click", close);
  
    
    
    
    
		function favoriteDelete(profileUserNum,userNum ) {
			console.log(userNum);
			console.log(profileUserNum);
			 $.ajax({
			        url: contextPath + "/service/FavoriteDeleteOk.ser",
			        type: "post",
			        beforeSend: function() {
			            //마우스 커서를 로딩 중 커서로 변경
			            $('html').css("cursor", "wait");
			        },
			        complete: function() {
			            //마우스 커서를 원래대로 돌린다
			            $('html').css("cursor", "auto");
			        },
			        data: {"userNum": userNum, "profileUserNum": profileUserNum, "fromList": 1},
					success:function(e){
					/* 	location.href = contextPath + "/service/FavoriteListOk.ser"; */
						console.log(e);
						$('div#informatiom').html(e);
					},
					error:function(a,b,c){
						console.log('실패')
						console.log(a)
						console.log(b)
						console.log(c)
					} 
			     
			    });
			
			
		}
		
		function deleteUser() {
				$.ajax({
					url:  contextPath + "/user/UserDeleteOk.user", 		// 통신할url
					type:"get"	,
					success:function(){
						alert("회원 탈퇴가 완료되었습니다. 이용해 주셔서 감사합니다.")
						window.location.href = contextPath+"/user/UserMainOk.user";
					},
			        beforeSend: function() {
			            //마우스 커서를 로딩 중 커서로 변경
			            $('html').css("cursor", "wait");
			        },
			        complete: function() {
			            //마우스 커서를 원래대로 돌린다
			            $('html').css("cursor", "auto");
			        },
					error:function(a,b,c){
						alert("실패");
						console.log(a)
						console.log(b)
						console.log(c)
					}
					
					});
				
				
				
				
		}
		
		
		
		
    
/*		//AJAX 통신 시작
		$( document ).ajaxStart(function() {
		    //마우스 커서를 로딩 중 커서로 변경
		    $('html').css("cursor", "wait"); 
		});
		//AJAX 통신 종료
		$( document ).ajaxStop(function() {
		    //마우스 커서를 원래대로 돌린다
		    $('html').css("cursor", "auto"); 
		});  */
    
    
    
    
    
    