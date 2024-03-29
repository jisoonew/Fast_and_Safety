$(function () {
    $("#datepicker1").datepicker({
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

$(function () {
    $("#datepicker2").datepicker({
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


//모달을 트리거하는 스크립트
$(document).ready(function () {
    $('[id*=table2_blue_btn]').click(function () {
        $('#inquiryModal').modal('show');
    });
});

// 모달을 클릭한 곳이 아닌 다른 곳을 클릭할 경우 모달을 숨기는 스크립트
$(document).on('click', function (event) {
    if ($(event.target).closest('.modal-content').length == 0) {
        if ($(event.target).is('.modal')) {
            $('#inquiryModal').modal('hide');
        }
    }
});

$("#datepicker2").datepicker({
    minDate: "0",
    maxDate: "+3Y",
});