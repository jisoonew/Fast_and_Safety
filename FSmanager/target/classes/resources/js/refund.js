
$(function() {
    $( "#datepicker1" ).datepicker({
    closeText: "닫기",
    currentText: "오늘",
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    weekHeader: "주",
    yearSuffix: '년',
    dateFormat: 'yy/mm/dd' // 여기서 형식을 지정합니다 (년/월/일).
    });
});

$(function() {
    $( "#datepicker2" ).datepicker({
    closeText: "닫기",
    currentText: "오늘",
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    weekHeader: "주",
    yearSuffix: '년',
    dateFormat: 'yy/mm/dd' // 여기서 형식을 지정합니다 (년/월/일).
    });
});

$("#datepicker2").datepicker({ 
	   minDate: "0",
	   maxDate: "+3Y", 
	 });


//모달을 트리거하는 스크립트
$(document).ready(function() {
    $('[id*=memo_btn]').click(function() {
        var memoBtn = document.getElementById(this.id); // 변경된 부분
        var rect = memoBtn.getBoundingClientRect();
        var modalDialog = document.querySelector('.modal-dialog');
        var modalWidth = modalDialog.offsetWidth;
        var modalHeight = modalDialog.offsetHeight;
        var posX = rect.right - 520; // 조정할 수치
        var posY = rect.top - modalHeight / 2 - rect.height / 2 - 170; // 조정할 수치

        modalDialog.style.position = 'fixed';
        modalDialog.style.left = posX + 'px';
        modalDialog.style.top = posY + 'px';
        $('#memoModal').modal('show');
    });
});

// 모달을 클릭한 곳이 아닌 다른 곳을 클릭할 경우 모달을 숨기는 스크립트
$(document).on('click', function(event) {
    if ($(event.target).closest('.modal-content').length === 0) {
        if ($(event.target).is('.modal')) {
            $('#memoModal').modal('hide');
        }
    }
});

// 화면 크기에 따라 사이드바 높이를 조정하는 함수
function adjustSidebarHeight() {
    var sidebar = document.getElementById('sidebar');
    var screenHeight = window.innerHeight;
    sidebar.style.minHeight = screenHeight + 'px';
}

// 페이지가 로드될 때 사이드바 높이 조정
window.onload = adjustSidebarHeight;

// 윈도우 크기 조정 시 사이드바 높이 다시 조정
window.onresize = adjustSidebarHeight;