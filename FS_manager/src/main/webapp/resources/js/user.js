$(document).ready(function() {
	//ID 중복 확인
	//id를 입력할 수 있는 input text 영역을 벗어나면 동작한다.
	$("#overlap_result").on("focusout", function() {

		var id = $("#overlap_result").val();

		if (id == '' || id.length == 0) {
			$("#label1").css("color", "red").text("공백은 사용할 수 없습니다.");
			return false;
		} else {
		//Ajax로 전송
		$.ajax({
			url : './mng_overlap',
			data : {
				m_id : id
			},
			type : 'POST',
			dataType : 'json',
			success : function(result) {
				console.log("result : " + result);
				if (result > 0) {
					$("#label1").css("color", "red").text("사용 불가능한 ID 입니다.");
				} else {
					$("#label1").css("color", "blue").text("사용 가능한 ID 입니다.");
				}
			}
		}); //End Ajax
		}
	});

//	비밀번호 중복 확인
	$("#inputPassword1").on("focusout", function() {

		var inputPassword1 = $("#inputPassword1").val();
		var inputPassword2 = $("#inputPassword2").val();

		if( inputPassword1 != inputPassword2 ) {
			$("#pw_overlap").css("color", "red").text("비밀번호가 일치 하지 않습니다.");
	      } else if (inputPassword1 === "" || inputPassword2 === "") {
	    	("#pw_overlap").css("color", "red").text("비밀번호를 입력하세요.");
	      }
	    	else{
	    	  $("#pw_overlap").css("color", "blue").text("비밀번호가 일치합니다.");
	      }
	});
	
//	비밀번호 중복 확인
	$("#inputPassword2").on("focusout", function() {

		var inputPassword1 = $("#inputPassword1").val();
		var inputPassword2 = $("#inputPassword2").val();

		if( inputPassword1 != inputPassword2 ) {
			$("#pw_overlap").css("color", "red").text("비밀번호가 일치 하지 않습니다.");
	      } else if (inputPassword1 === "" || inputPassword2 === "") {
	    	("#pw_overlap").css("color", "red").text("비밀번호를 입력하세요.");
	      }
	    	else{
	    	  $("#pw_overlap").css("color", "blue").text("비밀번호가 일치합니다.");
	      }
	});
	
// 관리자 등록
$(document).on('click', '#Refund_completed_btn2', function () {
	
	var inputPassword1 = $("#inputPassword1").val();
	var inputPassword2 = $("#inputPassword2").val();
	
	console.log("inputPassword2 : " + inputPassword2);

    $.ajax({
        url: './mng_overlap',
        data: {
            m_id: $("#overlap_result").val()
        },
        type: 'POST',
        dataType: 'json',
        success: function (result) {
            if (result > 0 || inputPassword1 != inputPassword2) {
            	alert('사용 불가능한 아이디 또는 비밀번호입니다.');
            } else if (id == "" || id.length == 0 || inputPassword1 == "" || inputPassword2 == "") {
            	alert('아이디 또는 비밀번호에 공백은 사용할 수 없습니다.');
            } else {
            	alert('등록 완료되었습니다.');
                // 여기에서 mng_insert 호출하는 코드를 추가
                $.ajax({
                    url: '/mng_insert',
                    data: {
                        m_id: $("#overlap_result").val()
                    },
                    type: 'POST',
                    dataType: 'json',
                    success: function (insertResult) {
                        // 삽입이 성공하면 원하는 동작을 수행
                    }
                });
            }
        }
    });
});

function showManagerId(managerId) {
    // 클릭된 버튼의 행에 해당하는 managerId 값을 콘솔에 출력
    return managerId;
}

//관리자 수정
	document.querySelectorAll('.update-btn').forEach(function(button) {
	    button.addEventListener('click', function() {
	        var updateUrl = button.getAttribute('data-update-url');
	        
	        var managerId = showManagerId(button.getAttribute('data-manager-id'));
	        console.log("managerId " + managerId);
	    	
	    	var update_select = button.closest('tr').querySelector('.update_power');
            
            var content = update_select.options[update_select.selectedIndex].text;
            console.log("선택된 목록의 글 내용: " + content);

	            // 모달창 열기
	            var updateModal = new bootstrap.Modal(document.getElementById('updateModal'));
	            updateModal.show();
	            
	            // 모달 확인 버튼 클릭 시 삭제 로직 수행
	            document.getElementById('update_confirm').addEventListener('click', function() {

	                $.ajax({
	                    url: '/mng_update',
	                    data: {
	                        m_id: managerId,
	                        m_power: content
	                    },
	                    type: 'POST',
	                    dataType: 'json',
	                    success: function (result) {

	                    }
	                });

	             // 모달 창이 닫힐 때 배경도 함께 숨기도록 설정
	                $('body').removeClass('modal-open');
	                $('.modal-backdrop').remove();
	             // 모달 창 닫기
	                $('#updateModal').modal('hide');
	            });
	        
	    });
	});
	
	function updateContent(data) {
	    var html = "";
	    var managers = data.mngList;
	    
	    $("#inquiry_result_table").empty();

	    $.each(managers, function(index, manager) {
	        html += "<tr>";
	        html += "<td>" + (index + 1) + "</td>";
	        html += "<td>" + (manager.m_power === '모든 권한' ? '최고관리자' : '일반관리자') + "</td>";
	        html += "<td>" + manager.m_id + "</td>";
	        
	        // Use a function to mask the password
	        html += "<td>" + maskPassword(manager.m_pw) + "</td>";

	        html += "<td>" + manager.m_name + "</td>";
	        html += "<td>" + manager.m_email + "</td>";
	        html += "<td>";
	        html += "<button type='button' class='btn btn-dark btn-sm update-btn' " +
	                "onclick='showManagerId(this)' data-manager-id='" + manager.m_id + "' " +
	                "data-bs-toggle='modal' data-bs-target='#updateModal'>수정</button>";
	        html += "<button type='button' class='btn btn-outline-secondary btn-sm delete-btn' " +
	                "data-bs-backdrop='static' data-bs-keyboard='false' " +
	                "data-delete-url='/delete/" + manager.m_id + "'>삭제</button>";
	        html += "</td>";
	        
	        html += "<td>";
	        html += "<div id='Select_Permissions'>";
	        html += "<select class='form-select form-select-sm update_power' " +
	                "id='update_select' aria-label='Default select example' " +
	                "name='update_power'>";
	        html += "<option selected>" + manager.m_power + "[저장]</option>";
	        html += "<option value='1'>모든 권한</option>";
	        html += "<option value='2'>상품</option>";
	        html += "<option value='3'>배송</option>";
	        html += "<option value='4'>창고</option>";
	        html += "</select>";
	        html += "</div>";
	        html += "</td>";

	        html += "</tr>";
	    });

	    // Update the content of the container
	    $("#inquiry_result_table").html(html);
	}
	
	function maskPassword(password) {
	    return password.replace(/./g, '*');
	}
	
	//관리자 검색
	$(document).on('click', '#search_btn', function () {
	    var type = $("#type").val();
	    var keyword = $("#keyword").val();

	    $.ajax({
	        url: '/mng_search',
	        data: {
	            type: type,
	            keyword: keyword
	        },
	        type: 'POST',
	        dataType: 'json', // Expecting JSON response
	        success: function (result) {
	            // Update the content using the returned JSON data
	            updateContent({ mngList: result });
	        },
	        error: function (error) {
	            console.error("Error during AJAX request:", error);
	        }
	    });
	});
});





  const hypenTel = (target) => {
 target.value = target.value
   .replace(/[^0-9]/g, '')
   .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
}

