<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>예약배송</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="/resources/css/navbar/reserve_delivery.css" rel="stylesheet" />
</head>

<body class="sb-nav-fixed">
    <nav class="navbar sb-topnav navbar-expand">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-5" href="/main_login">
            <h1>FS</h1>
        </a>
        <!-- Company Introduction Dropdown -->
        <ul class="navbar-nav me-auto ">
            <a class="navbar-brand ps-3" href="/navbar/introduce">
                회사 소개
            </a>

            <!-- Services Dropdown -->
            <div class="dropdown">
                <button class="nav-link dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    서비스
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/navbar/product_storage">보관품목 및 유의사항</a></li>
                    <hr class="dropdown-divider" />
                    <li><a class="dropdown-item" href="/navbar/service_step">입출고 절차</a></li>
                </ul>
            </div>

            <!-- Warehouses Dropdown -->
            <a class="navbar-brand ps-3" href="/navbar/storage_reserve">
                <!-- 모달 메시지 -->
                창고
            </a>

            <div class="dropdown">
                <button class="nav-link dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    배송
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/navbar/today_delivery">당일 배송</a></li>
                    <hr class="dropdown-divider" />
                    <li><a class="dropdown-item" href="/navbar/routine_delivery">정기 배송</a></li>
                    <hr class="dropdown-divider" />
                    <li><a class="dropdown-item" href="/navbar/reserve_delivery">예약 배송</a></li>
                </ul>
            </div>

            <!-- ask Dropdown -->
            <a class="navbar-brand ps-3" href="/navbar/inquiry">
                문의
            </a>
        </ul>
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <c:if test="${ user != null }">
    			<div class="login_success_area">
        			<span style="color: black; font-size: 20px;">${name} 님</span>
    			</div>
			</c:if>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="mypage_today_delivery" role="button"
                    data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="/mypage/today_delivery">My Page</a></li>
                    <li>
                        <hr class="dropdown-divider" />
                    </li>
                    <li><a class="dropdown-item" href="/user/logout.do">Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>

    <form name="table" role="form" method="post" action="/navbar/reserve_delivery"><br>
        <div class="row">
            <div class="col-1"></div>
            <div class="col-3">
                <h2> 예약 배송 신청</h2>
            </div>
        </div><br><br>

        <div class="row">
            <div class="col-2"></div>
            <div class="col-1">
                <h4>수령인</h4>
            </div>
            <div class="col-2"><input type="text" name="red_name" value="${name}"></div>
            <div class="col-1"></div>
            <div class="col-1">
                <h4>연락처</h4>
            </div>
            <div class="col-2"> <input type="text" oninput="hypenTel(this)" maxlength="13" name="red_phone" value="${session_phone}"></div>
        </div><br><br><br>

        <div class="row">
            <div class="col-2"></div>
            <div class="col-1">
                <h4>출고 물품</h4>
            </div>
            <div class="col-2">
                <select name="red_kind_release" id="d_product">
                    <option>물품선택</option>
					<c:forEach items="${kind_release}" var="kind_release">
                        <option>
                            <c:out value="${kind_release.kind}" />
                        </option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-1"></div>
            <div class="col-1">
                <h4>출고 물량</h4>
            </div>
            <div class="col-2"><input type="text" name="red_volume" id="red_volume" > PLT</div>
        </div><br><br>

        <div class="row">
            <div class="col-2"></div>
            <div class="col-1" for="postcode">
                <h5>배송 날짜 </h5>
            </div>
            <div class="col-5"><input type="date" id="date" max="2033-06-01" min="2023-06-01" name="red_delivery_date" placeholder="날짜 선택"></div>
        </div><br><br>

        <div class="row">
            <div class="col-2"></div>
            <div class="col-2"><button type="button" onclick="execution_daum_address()">우편번호 검색</button><br></div>
        </div>

        <div class="row">
            <div class="col-2"></div>
            <div class="col-1" for="postcode">
                <h5>주소 </h5>
            </div>
            <div class="col-4"><input type="text" id="address" name="red_address" class="red_address_input" value="${address}" readonly><br></div>
        </div>

        <div class="row">
            <div class="col-2"></div>
            <div class="col-1" for="postcode">
                <h5>상세주소 </h5>
            </div>
            <div class="col-4"><input type="text" id="detailAddress" name="red_deta" value="${u_detail_address}"><br></div>
        </div><br><br>

        <div class="row">
            <div class="col-4"></div>
            <div class="col-1" for="postcode">
                <h5>예상 배송비 </h5>
            </div>
            <div class="col-1"></div>
            <div class="col-4">
                <h5><input type='text' name="red_delivery_fee" size='20'><label>원</label></h5>
            </div>
        </div><br><br>

        <div class="row">
            <div class="col-2"></div>
            <div class="col-1"></div>
            <div class="col-2"><button type="submit" class="d_btn">신청하기</button></div>
            <div class="col-1"></div>
            <div class="col-1"></div>
            <div class="col-2"><button class="d_btn">취소</button></div>
        </div>
    </form>
    
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
    <script>
    /* 배송비 계산 */
        $('#red_volume').keyup(function () {
            first = parseInt(table.red_volume.value);
            second = 1000;
            table.red_delivery_fee.value = first * second;
            if (isNaN(table.red_delivery_fee.value)) { // 값이 없어서 NaN값이 나올 경우
                table.red_delivery_fee.value = 0;
            }
        });

    
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
                $(".rd_address_input_2").val(addr);
                //$("[name=memberAddr2]").val(addr);            // 대체가능

                // 커서를 상세주소 필드로 이동한다.
                /* document.getElementById("sample6_detailAddress").focus(); */
                // 상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
                //$(".address_input_2").attr("readonly",false);
                $(".address_input_2").focus();
            }
        }).open();
    };

    
 // '우편번호 검색' 버튼에 클릭 이벤트 리스너 추가
    var daumButton = document.querySelector('.rd_address_input_2');
    daumButton.addEventListener('click', execution_daum_address);
    </script>
    
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>

</html>
