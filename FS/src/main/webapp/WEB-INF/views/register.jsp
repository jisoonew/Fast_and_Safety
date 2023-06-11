<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>회원가입</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="/resources/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"
        	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <style>/* 유효성 검사 문구 */
.final_id_ck {
  display: none;
}

.final_pw_ck {
  display: none;
}

.final_pwck_ck {
  display: none;
}

.final_name_ck {
  display: none;
}

.final_mail_ck {
  display: none;
}

.final_phone_ck {
  display: none;
}

.final_cn_ck {
  display: none;
}

.final_addr_ck {
  display: none;
}

/* 비밀번호 확인 일치 유효성검사 */
.pwck_input_re_1{
  color : green;
  display : none;    
}
.pwck_input_re_2{
  color : red;
  display : none;    
}

	/* 중복아이디 존재하지 않는경우 */
	.id_input_re_1{
		color : green;
		display : none;
	}
	/* 중복아이디 존재하는 경우 */
	.id_input_re_2{
		color : red;
		display : none;
	}</style>
</head>

<body class="bg-primary">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-7">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">회원가입</h3>
                                </div>
                                <div class="card-body">
                                    <form id="join_form" method="post">
                                        <div class="form-floating mb-3">
                                            <input class="form-control name_input" id="name_input" type="name"
                                                name="u_name" />
                                            <label >이름</label>
                                        </div>
                                        <span class="final_name_ck">이름을 입력해주세요.</span>
                                        <span class="id_input_re_1">사용 가능한 아이디입니다.</span>
										<span class="id_input_re_2">아이디가 이미 존재합니다.</span>


                                        <div class="form-floating mb-3 mb-md-0">
                                            <input class="form-control id_input" id="id_input" type="id" name="u_id" />
                                            <label>아이디</label>
                                        </div>
                                        <span class="final_id_ck">아이디를 입력해주세요.</span>

                                        <div class="form-floating mb-3 mb-md-0 mt-3">
                                            <input class="form-control pw_input" id="pw_input" type="" name="u_pw" />
                                            <label>비밀번호</label>
                                        </div>
                                        <span class="final_pw_ck">비밀번호를 입력해주세요.</span>

                                        <div class="form-floating mb-3 mb-md-0 mt-3">
                                            <input class="form-control pwck_input" id="inputPasswordConfirm" type="" />
                                            <label>재확인 비밀번호</label>
                                        </div>
                                        <span class="final_pwck_ck">재확인 비밀번호를 입력해주세요.</span>
                                        <span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
                                        <span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>


                                        <div class="mt-2 mb-0">
                                            <div class="d-grid"><a class="btn btn-primary btn-block pwcheck_button">비밀번호
                                                    확인</a></div>
                                        </div>


                                        <div class="form-floating mb-3 mb-md-0 mt-3">
                                            <input class="form-control email_input" id="inputEmail" type="email"
                                                name="u_email" />
                                            <label>이메일</label>
                                        </div>
                                        <span class="final_mail_ck">이메일을 입력해주세요.</span>


                                        <div class="form-floating mb-3 mb-md-0 mt-3">
                                            <input class="form-control phone_input" id="inputphone" type="phone"
                                                name="u_phone" />
                                            <label>전화번호</label>
                                        </div>
                                        <span class="final_phone_ck">전화번호를 입력해주세요.</span>


                                        <div class="form-floating mb-3 mb-md-0 mt-3">
                                            <input class="form-control cn_input" id="inputEmail" type="Com"
                                                 name="u_company_name" />
                                            <label>회사명</label>
                                        </div>
                                        <span class="final_cn_ck">회사명을 입력해주세요.</span>


                                        <div class="form-floating mb-1 mb-md-0 mt-3">
                                            <input class="form-control address_input_1" id="inputAddress" type="Address"
                                                 name="u_company_address"
                                                 />
                                            <label>주소</label>
                                        </div>
                                        <span class="final_addr_ck mb-3">주소를 입력해주세요.</span>

                                        <div class="mb-0">
                                            <div class="d-grid address_button" onclick="execution_daum_address()"><a
                                                    class="btn btn-primary btn-block">검색</a></div>
                                        </div>

                                        <div class="form-floating mb-3 mb-md-0 mt-1">
                                            <input class="form-control address_input_2" id="inputAddress2" type="Address"
                                                 name="u_detail_address" />
                                            <label>상세주소</label>
                                        </div>

                                        <div class="mt-4 mb-0">
                                            <div class="d-grid"><a
                                                    class="btn btn-primary btn-block join_button">회원가입</a></div>
                                        </div>

                                        <div class="card-footer text-center py-2">
                                            <div class="small">계정이 있으신가요? <a href="login">로그인</a></div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <div id="layoutAuthentication_footer">
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Your Website 2023</div>
                    <div>
                        <a href="#">Privacy Policy</a>
                        &middot;
                        <a href="#">Terms &amp; Conditions</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
    </script>
    <script src="js/scripts.js"></script>

    <!-- 주소 API 스크립트 -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <script>
        /* 다음 주소 연동 */
        function execution_daum_address() {
            new daum.Postcode({
                oncomplete: function (data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if (data.userSelectedType === 'R') {
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if (data.buildingName !== '' && data.apartment === 'Y') {
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if (extraAddr !== '') {
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        /* document.getElementById("sample6_extraAddress").value = extraAddr; */

                        // 주소변수 문자열과 참고항목 문자열 합치기
                        addr += extraAddr;

                    } else {
                        /* document.getElementById("sample6_extraAddress").value = ''; */
                        addr += ' ';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    /*      document.getElementById('sample6_postcode').value = data.zonecode;
                         document.getElementById("sample6_address").value = addr; */

                    //$(".address_input_1").val(data.zonecode);
                    //$("[name=memberAddr1]").val(data.zonecode);    // 대체가능
                    $(".address_input_1").val(addr);
                    //$("[name=memberAddr2]").val(addr);            // 대체가능

                    // 커서를 상세주소 필드로 이동한다.
                    /* document.getElementById("sample6_detailAddress").focus(); */
                    // 상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
                    //$(".address_input_2").attr("readonly",false);
                    $(".address_input_2").focus();
                }
            }).open();
        }
    </script>
    
    <!-- 비밀번호 확인 버튼 -->
    <script>
        var pwCheck = false; // 비번
        var pwckCheck = false; // 비번 확인
        var pwckcorCheck = false; // 비번 확인 일치 확인

        $(document).ready(function () {
            //회원가입 버튼(회원가입 기능 작동)
            $(".pwcheck_button").click(function () {

                /* 비밀번호 확인 일치 유효성 검사 */
                var pw = $('.pw_input').val();
                var pwck = $('.pwck_input').val();
                $('.final_pwck_ck').css('display', 'none');

                if (pw == pwck) {
                    $('.pwck_input_re_1').css('display', 'block');
                    $('.pwck_input_re_2').css('display', 'none');
                    pwckcorCheck = true;
                } else {
                    $('.pwck_input_re_1').css('display', 'none');
                    $('.pwck_input_re_2').css('display', 'block');
                    pwckcorCheck = false;
                }
            })
        });
    </script>
    

    <!-- 회원가입 버튼 기능 스크립트 -->
    <script>
        /* 유효성 검사 통과유무 변수 */
        var nameCheck = false; // 이름
        var idCheck = false; // 아이디
        var pwCheck = false; // 비번
        var pwckCheck = false; // 비번 확인
        var pwckcorCheck = false; // 비번 확인 일치 확인
        var mailCheck = false; // 이메일
        var phoneCheck = false // 전화번호
        var companynameCheck = false // 회사명
        var addressCheck = false // 회사 주소

        $(document).ready(function () {
            //회원가입 버튼(회원가입 기능 작동)
            $(".join_button").click(function () {

                /* 입력값 변수 */
                var name = $('.name_input').val(); // 이름 입력란
                var id = $('.id_input').val(); // id 입력란
                var pw = $('.pw_input').val(); // 비밀번호 입력란
                var pwck = $('.pwck_input').val(); // 비밀번호 확인 입력란
                var mail = $('.email_input').val(); // 이메일 입력란
                var phn = $('.phone_input').val(); // 전화번호 입력란
                var cn = $('.cn_input').val(); // 회사이름 입력란
                var addr = $('.address_input_1').val(); // 주소 입력란

                /* 이름 유효성 검사 */
                if (name == "") {
                    $('.final_name_ck').css('display', 'block');
                    nameCheck = false;
                } else {
                    $('.final_name_ck').css('display', 'none');
                    nameCheck = true;
                }

                /* 아이디 유효성검사 */
                if (id == "") {
                    $('.final_id_ck').css('display', 'block');
                    idCheck = false;
                } else {               	
                	
                    $('.final_id_ck').css('display', 'none');
                    idCheck = true;
                }
                
                
                /* 비밀번호 유효성 검사 */
                if (pw == "") {
                    $('.final_pw_ck').css('display', 'block');
                    pwCheck = false;
                } else {
                    $('.final_pw_ck').css('display', 'none');
                    pwCheck = true;
                }

                /* 비밀번호 확인 유효성 검사 */
                if (pwck == "") {
                    $('.final_pwck_ck').css('display', 'block');
                    pwckCheck = false;
                } else {
                    $('.final_pwck_ck').css('display', 'none');
                    pwckCheck = true;
                }

                /* 비밀번호 확인 일치 유효성 검사 */
                var pw = $('.pw_input').val();
                var pwck = $('.pwck_input').val();
                $('.final_pwck_ck').css('display', 'none');

                if (pw == pwck) {

                    if (pwck == "") {
                        $('.final_pwck_ck').css('display', 'block');
                        $('.pwck_input_re_1').css('display', 'none');
                        $('.pwck_input_re_2').css('display', 'none');
                        pwckCheck = false;
                        pwckcorCheck = false;
                    } else {
                        $('.pwck_input_re_1').css('display', 'block');
                        $('.pwck_input_re_2').css('display', 'none');
                        pwckcorCheck = true;
                    }
                } else {
                    $('.pwck_input_re_1').css('display', 'none');
                    $('.pwck_input_re_2').css('display', 'block');
                    pwckcorCheck = false;
                }


                /* 이메일 유효성 검사 */
                if (mail == "") {
                    $('.final_mail_ck').css('display', 'block');
                    mailCheck = false;
                } else {
                    $('.final_mail_ck').css('display', 'none');
                    mailCheck = true;
                }

                /* 전화번호 유효성 검사 */
                if (phn == "") {
                    $('.final_phone_ck').css('display', 'block');
                    phoneCheck = false;
                } else {
                    $('.final_phone_ck').css('display', 'none');
                    phoneCheck = true;
                }

                /* 회사명 유효성 검사 */
                if (cn == "") {
                    $('.final_cn_ck').css('display', 'block');
                    companynameCheck = false;
                } else {
                    $('.final_cn_ck').css('display', 'none');
                    companynameCheck = true;
                }

                /* 회사주소 유효성 검사 */
                if (addr == "") {
                    $('.final_addr_ck').css('display', 'block');
                    addressCheck = false;
                } else {
                    $('.final_addr_ck').css('display', 'none');
                    addressCheck = true;
                }


                /* 최종 유효성 검사 */
                if (nameCheck && idCheck && pwCheck && pwckCheck && pwckcorCheck && mailCheck &&
                    phoneCheck && companynameCheck && addressCheck) {
                    $("#join_form").attr("action", "register");
                    $("#join_form").submit();
                }

                return false;
            })
        });
    </script>
</body>

</html>