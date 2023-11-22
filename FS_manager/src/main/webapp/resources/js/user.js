$(document).ready(function() {
	//ID 중복 확인
	//id를 입력할 수 있는 input text 영역을 벗어나면 동작한다.
	$("#overlap_result").on("focusout", function() {

		var id = $("#overlap_result").val();

		if (id == '' || id.length == 0) {
			$("#label1").css("color", "red").text("공백은 ID로 사용할 수 없습니다.");
			return false;
		}

		//Ajax로 전송
		$.ajax({
			url : './mng_overlap',
			data : {
				id : id
			},
			type : 'POST',
			dataType : 'json',
			success : function(result) {
				if (result == true) {
					$("#label1").css("color", "black").text("사용 가능한 ID 입니다.");
				} else {
					$("#label1").css("color", "red").text("사용 불가능한 ID 입니다.");
					$("#id").val('');
				}
			}
		}); //End Ajax
	});
})

  const hypenTel = (target) => {
 target.value = target.value
   .replace(/[^0-9]/g, '')
   .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
}

