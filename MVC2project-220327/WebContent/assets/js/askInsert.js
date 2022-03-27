//파일 체크 askInsert
        function checkFile(el){

     // files 로 해당 파일 정보 얻기.
     var file = el.files;

     // file[0].size 는 파일 용량 정보입니다.
     if(file[0].size > 1024 * 1024 * 5){
        // 용량 초과시 경고후 해당 파일의 용량도 보여줌
        alert('5MB 이하 파일만 등록할 수 있습니다.\n\n' + '현재파일 용량 : ' + (Math.round(file[0].size / 1024 / 1024 * 100) / 100) + 'MB');
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