//관리자 검색
$(document).ready(function () {
        // 수정 버튼 클릭 시 Ajax 호출
        $("#editButton").click(function () {
            // 수정할 데이터 수집
            var userId = $(".u_id").text();; // 수정 대상의 사용자 아이디

            // 수정할 데이터 수집 (예: 변경된 이름 및 회사명)
            var uName = $(".u_name").text(); // 대표자명
            var uCompanyName = $(".u_company_name").text(); // 회사명
            var u_phone = $(".u_phone").text(); // 전화번호
            var u_email = $(".u_email").text(); // 이메일
            var u_company_address = $(".u_company_address").text(); // 주소
            var u_detail_address = $(".u_detail_address").text(); // 상세 주소

            // Ajax 호출
            $.ajax({
                type: "POST", // 또는 "GET" 등 필요에 따라 변경
                url: "/update_user", // 수정을 처리하는 컨트롤러 엔드포인트
                data: {
                	userId: userId,
                    uName: uName,
                    uCompanyName: uCompanyName,
                    u_phone: u_phone,
                    u_email: u_email,
                    u_company_address : u_company_address,
                    u_detail_address: u_detail_address
                },
                success: function (data) {
                    // 수정이 성공하면 수행할 작업
                    alert("수정이 완료되었습니다.");

                },
                error: function (xhr, status, error) {
                    // 수정 중 오류가 발생하면 수행할 작업
                    alert("수정 중 오류가 발생했습니다. 다시 시도해주세요." + xhr + status + error);
                }
            });
        });
        
        
     // 삭제 버튼 클릭 시 Ajax 호출
        $("#deleteButton").click(function () {
            // 수정할 데이터 수집
            var userId = $(".u_id").text();; // 수정 대상의 사용자 아이디

            // Ajax 호출
            $.ajax({
                type: "POST", // 또는 "GET" 등 필요에 따라 변경
                url: "/delete_user", // 수정을 처리하는 컨트롤러 엔드포인트
                data: {
                	userId: userId
                },
                success: function (data) {
                    // 수정이 성공하면 수행할 작업
                	alert("데이터가 정상적으로 삭제되었습니다.");
                    window.location.href = "/user"; // 사용자 페이지 URL로 이동
                },
                error: function (xhr, status, error) {
                    // 수정 중 오류가 발생하면 수행할 작업
                    alert("삭제 중 오류가 발생했습니다. 다시 시도해주세요." + xhr + status + error);
                }
            });
        });
    });