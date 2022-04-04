getList();

function getList(){
    $.ajax({
        // url: contextPath + "/board/BoardReplyListOk.bo?boardNumber=" + boardNumber,
        url: contextPath + "/board/BoardReplyListOk.bo",
        type: "get",
        // dataType: "text", //text일 경우 dataType 생략 가능
        dataType: "json",
        data: {"boardNumber": boardNumber},
        contentType: "application/json;charset=utf-8",
        success: showList,
        error: function(a, b, c){
            console.log("오류" + c);
        }
    });
}
//댓글 목록
function showList(replies){
   if(replies != null && replies.length != 0){
       $.each(replies, function(index, reply){
           //DOM
           <div id="reply">
               <p class="writer">작성자</p>
               <div class="content" style="width:100%">
                   <pre>내용</pre>
               </div>
               if(sessionNumber == reply.boardNumber)){
                   <input type="button" class="primary" value="수정">
                   <input type="button" class="primary" value="삭제">
               }
           </div>
       });
   }else{
       //댓글 없음
   }

    $("#relies").html(결과문자열);
