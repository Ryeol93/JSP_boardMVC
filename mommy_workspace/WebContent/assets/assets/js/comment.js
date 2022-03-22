var commentList;
var check = false;

getList();

//댓글 목록
function getList(){
	console.log("geList 들어옴");
   $.ajax({
       url: contextPath + "/community/CommunityCommentListOk.com",
       type: "get",
       dataType: "text", //text일 경우 dataType 생략 가능
       dataType: "json",
       data: {"communityNum": communityNum},
       contentType: "application/json;charset=utf-8",
       success: showList,
       error: function(a, b, c){
           console.log("getList 오류" + c);
       }
   });
}

//댓글 목록
function showList(comments){
	console.log("showList 들어왔다~");
	commentList = comments;
    var text = "";
    if(comments != null && comments.length != 0){
   
        $.each(comments, function(index, comment){
            text += " <div class='rep'>"
            text += "<div class='rep_a'><p class = 'nickname'>&nbsp;<strong id = 'username'>" + comment.userId + "</strong>"
            if(userNum == comment.userNum){
            	text += "<a class = 'commentGray' style ='float:right; margin-left:12px;' id = 'remove" + index + "'onclick='remove(" + comment.commentNum + ")'>삭제</a>"
            	text += "<a class = 'commentGray' style ='float:right;'  id='ready" + index + "' onclick='readyToUpdate(" + index + ")'>수정</a>"
            	text += "<a class = 'commentGray' style ='float:right; display:none;'  id='ok" + index + "' onclick='update(" + index +")'>수정완료</a>"
            }
            text += "</p></div>"
            text += "<div class='content' id='content"+ index +"'>"
            text += "<p class = 'comment'>" + comment.commentContent+ "</p>"
            text += "</div>"
            text += "<p class = 'commentDate'>" + comment.commentDate+ "</p>"	
            text += "</div>"
            	text += "<hr class = 'splitComment'>"
        });
    }else{
        //댓글 없음
    	text += " <div class='rep'>"
        text += "<p>댓글이 없습니다.</p>"
    	text += "</div>"
    		text += "<hr class = 'splitComment'>"
    }
    
   $("#comments").html(text);
}

//댓글 등록
function regist(){
    var content = $("textarea#content");
    console.log("regist들어옴");
    $.ajax({
        url: contextPath + "/community/CommunityCommentWriteOk.com",
        type: "post",
        data: {"communityNum": communityNum, "commentContent": content.val()},
        //post방식으로 전송할 때에는 contentType을 
        //"application/x-www-form-urlencoded; charset=UTF-8"로 설정해야 한다.
        //HttpServletRequest가 Header에 form데이터로 전송을 하기 때문이다.
        //따라서 post방식으로 위와 같은 데이터를 전달할 때에는 contentType을 생략해도 된다.
        //contentType을 생략하면 default값이 "application/x-www-form-urlencoded; charset=UTF-8"로 설정된다.
        /*contentType: "application/json;charset=utf-8",*/
        success: function(){
            content.val("");
            getList();
        },
        error: function(){
            console.log("regist오류");
        }
    });
}

//댓글 삭제
function remove(commentNum){
    $.ajax({
        url: contextPath + "/community/CommunityCommentDeleteOk.com",
        type: 'get',
        data: {"commentNum": commentNum},
        success: function(){
            getList();
        },
        error: function(){
            console.log("오류");
        }
    });
}

//댓글 수정 버튼 클릭
function readyToUpdate(index){
	if(check){
		alert("이미 수정중인 댓글이 있습니다.");
		return;
	}
	var div = $("#content" + index);
	var updateReady = $("#ready" + index);
	var updateOk = $("#ok" + index);
	var remove = $("#remove" + index);
	console.log(remove);
	remove.replaceWith("<a class = 'commentGray' style ='float:right; margin-left:12px;' id='cancel" + index +"' onclick='updateCancel(" + index + ")'>취소</a>");
	div.replaceWith("<textarea name='commentContent' id='content" + index +"' style='resize:none; border-radius:0; background:white'>" + div.text() + "</textarea>");
    	
	check = true;
	
	updateReady.hide();
	updateOk.show();
}

//댓글 수정 취소
function updateCancel(index){
	
	check = false;
	
	var div = $("#content" + index);
	var updateReady = $("#ready" + index);
	var updateOk = $("#ok" + index);
	var cancel = $("#cancel" + index);
	
	updateReady.show();
	updateOk.hide();
						
	cancel.replaceWith("<a class = 'commentGray' style ='float:right; margin-left:12px;' id = 'remove" + index + "'onclick='remove(" + commentList[index].commentNum + ")'>삭제</a>");
	div.replaceWith("<div class='content' id='content"+ index +"'><p class = 'comment'>" + commentList[index].commentContent+ "</p></div>");

}

function update(index){
	var textarea = $("#content" + index);
	
	$.ajax({
		url: contextPath + "/community/CommunityCommentUpdateOk.com",
		type: 'post',
		data: {"commentNum": commentList[index].commentNum, "commentContent": textarea.val()},
		success: function(){
			getList();
			check = false;
		},
        error: function(){
            console.log("오류");
        }
	});
	
}

