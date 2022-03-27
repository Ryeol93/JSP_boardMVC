<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>
<!--
	Exponent by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>커뮤니티 글 수정</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />


		<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/summernote/summernote-lite.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/communityInsert.css" />
		<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
		
		
		
	</head>
	<body class="is-preload">
		<c:set var="page" value="${page}"/>
		<c:set var="community" value="${community}"/>
		
		<!-- Header -->
			<div class="wrapper">
				<div class="inner">
					<jsp:include page="/app/fix/header.jsp"/>
				</div>
			</div> 
			

		<!-- 글쓰기 -->
			
		<div id="main" class="container medium">
			<form action="${pageContext.request.contextPath}/community/CommunityUpdateOk.com" name="updateForm" method="post" enctype="multipart/form-data">
					<input type="hidden" name="communityNum" value="${community.getCommunityNum()}">
					<input type="hidden" name="page" value="${page}">																												<!-- 파일 첨부됐을 때 보내는 폼 (멀티 리퀘스트로 받아야함)-->

				

			<div class="inner">
						<div style="display:flex; justify-content:space-between; margin-top: 50px; margin-bottom: -59px;">
							<select id ="select" name="select" style = "width: 12%;">
							<c:choose>
								<c:when test="${community.getCommunityCategory() eq 2}">
									<option value = "2" selected>전체</option>
								</c:when>
								<c:otherwise>
									<option value = "2">전체</option>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${community.getCommunityCategory() eq 3}">
									<option value = "3" selected>부모님</option>
								</c:when>
								<c:otherwise>
									<option value = "3">부모님</option>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${community.getCommunityCategory() eq 1}">
									<option value = "1" selected>시터</option>
								</c:when>
								<c:otherwise>
									<option value = "1">시터</option>
								</c:otherwise>
							</c:choose>
						
							</select>
							<div style="margin-right:0px">
							<input type="submit" id="btn" value="수정완료" onclick="send(); "><br>
						</div>
					
						
					</div>
					

					

					<div style = "background-color: white;">
						<input type ="text" id="title" name = "title" placeholder="제목을 입력하세요" style = "resize: none;" value="${community.getCommunityTitle()}">
						<hr style = "margin-top: 2em !important; margin-bottom: 1em !important;">
						
						<div>
							<br>
							<textarea id="summernote" name="editordata" required>${community.getCommunityContent()}</textarea>
			
						</div>
					</div>
				</div>
			
  </form>
				
				
		

		</div>
			<!--footer-->
			 <div class="wrapper">
				<div class="inner">
				   <jsp:include page="/app/fix/footer.jsp"/>
				</div>
			 </div>
				

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  			<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  			<script src="${pageContext.request.contextPath}/assets/js/summernote/summernote-lite.js"></script>
  			<script src="${pageContext.request.contextPath}/assets/js/summernote/lang/summernote-ko-KR/js"></script>
  				<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
			<script src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>
  			
  			<script>
  				
				function send(){
  					
  					updateForm.submit();
  				}	
				

	  			  $(document).ready(function() {
	  			       $('#summernote').summernote({
	  			              tabsize: 2,
	  			              height: 500,
	  			              toolbar: [
	  			            	  ['fontname', ['fontname']],
	  						    ['fontsize', ['fontsize']],
	  						    ['style', ['bold', 'italic', 'underline', 'clear']],
	  						    ['color', ['forecolor','color']],
	  						    ['para', ['ul', 'ol', 'paragraph']],
	  						    ['height', ['height']],
	  						    ['insert',['picture','link']]
	  						  ],
	  						  
	  							
	  						fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
	  						fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
	  			           
	  			                callbacks: {
	  			                 onImageUpload: function(files, editor, welEditable) {
	  			                    sendFile(files[0], this, welEditable);
	  			                  }
	  			                }
	  			            });
	  			   });
	  			   
	  			   function sendFile(file, editor, welEditable){
	  			      data = new FormData();
	  			      data.append("file", file);
	  			      $.ajax({
	  			         data: data,
	  			         type: "post",
	  			         url: "${pageContext.request.contextPath}/fileUpload",
	  			         cache: false,
	  			         contentType: false,
	  			         processData: false,
	  			         dataType: "json",
	  			         success: function(url){
	  			            console.log(url.url);
	  			            $(editor).summernote("editor.insertImage", url.url);
	  			         }
	  			      });
	  			   }

  			</script>
  			
			<script>
			//썸머노트 웹 에디터 로딩
			/*
			$(document).ready(function() {
				//여기 아래 부분
				$('#summernote').summernote({
					  height: 300,                 // 에디터 높이
					  minHeight: null,             // 최소 높이
					  maxHeight: null,             // 최대 높이
					  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
					  lang: "ko-KR",					// 한글 설정
					  placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
			          
				});
			});
			
			
			// 서머노트에 text 쓰기
			$('#summernote').summernote('insertText', "");


			// 서머노트 쓰기 비활성화
			$('#summernote').summernote('disable');

			// 서머노트 쓰기 활성화
			$('#summernote').summernote('enable');


			// 서머노트 리셋
			$('#summernote').summernote('reset');


			// 마지막으로 한 행동 취소 ( 뒤로가기 )
			$('#summernote').summernote('undo');
			// 앞으로가기
			$('#summernote').summernote('redo');
			//썸머노트 툴바 변경 
			
			
			$('#summernote').summernote({
				  toolbar: [
					    // [groupName, [list of button]]
					    ['fontname', ['fontname']],
					    ['fontsize', ['fontsize']],
					    ['style', ['bold', 'italic', 'underline', 'clear']],
					    ['color', ['forecolor','color']],
					    ['para', ['ul', 'ol', 'paragraph']],
					    ['height', ['height']],
					    ['insert',['picture','link']]
					  ],
					  
						
					fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
					fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
					
					/*
					callbacks: {
						onImageUpload: function(files, editor, welEditable) {
				            for (var i = files.length - 1; i >= 0; i--) {
				            	sendFile(files[i], this);
				            }
				        }
					}
			
			
			  }); */
			
			/* 
			
			function sendFile(file, editor){
				var data = new FormData();
				data.append("file", file);
				console.log(file);
				$.ajax({
					data : data,
					type : "POST",
					url : "SummerNoteImageFile",
					contentType : false,
					processData : false,
					success : function(data){
						console.log(data);
						console.log(editor);
						$(editor).summernote("insertImage",data.url);
					}
				});
			} 
			
			
			function sendFile(file, el) {
				var form_data = new FormData();
		      	form_data.append('file', file);
		      	$.ajax({
		        	data: form_data,
		        	type: "POST",
		        	url: '${pageContext.request.contextPath }/community/CommunityInsertOk.com',
		        	cache: false,
		        	contentType: false,
		        	enctype: 'multipart/form-data',
		        	processData: false,
		        	success: function(img_name) {
		          		$(el).summernote('editor.insertImage', img_name);
		        	}
		      	});
		    }
			
			*/
		/*
		
		강사님 파일에 있던 것
			$(".files").change(function(e){
         		var file = e.target.files[0];
         		var img = $(this).find("img");
         		var reader = new FileReader();
         		reader.readAsDataURL(file);
         		
    	   		reader.onload = function(e){
    	   			if(e.target.result.indexOf("image") != -1){
    		   			img.attr("src", e.target.result)
    	   			}else{
    	   				img.attr("src", "${pageContext.request.contextPath}/images/no_img.jpg");
    	   			}
    	   		}
    	   	});
         	
         	function cancelFile(fileName){
         		$("input#" + fileName).val("");
         		$("img#" + fileName + "Img").attr("src", "${pageContext.request.contextPath}/images/filePlus.png");
         	}
		
		*/

  </script>
  	
  
			
	</body>
</html>