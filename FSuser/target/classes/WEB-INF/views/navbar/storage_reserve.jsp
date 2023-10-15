<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>창고 예약</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="/resources/css/navbar/navbar.css" rel="stylesheet" />
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
        <div class="login_success_area">
        			<span style="color: black; font-size: 20px;">${name} 님</span>
    			</div>
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

    <form name="table" role="form" method="post" action="/navbar/storage_reserve"><br>
        <div class="row">
            <div class="col-1"></div>
            <div class="col-3">
                <h2>창고 예약 신청</h2>
            </div>
        </div><br><br>

        <div class="row">
            <div class="col-2"></div>
            <div class="col-1">
                <h4>이름</h4>
            </div>
            <div class="col-2"><input type="text" name="sr_name" value="${name}"></div>
            <div class="col-1"></div>
            <div class="col-1">
                <h4>연락처</h4>
            </div>
            <div class="col-2"> <input type="text" oninput="hypenTel(this)" maxlength="13" name="sr_phone" value="${session_phone}"></div>
        </div><br><br><br>

        <div class="row">
            <div class="col-2"></div>
            <div class="col-1">
                <h4>상품 유형</h4>
            </div>
            <div class="col-2">
                <select name="sr_category" id="d_product">
                    <option>물품선택</option>
                    <option>냉장</option>
                    <option>냉동</option>
                </select>
            </div>
            <div class="col-1"></div>
            <div class="col-1">
                <h4>입고 물량</h4>
            </div>
            <div class="col-2"><input type="text" name="sr_volume" id="sr_volume" onKeyUp="calculation();"> PLT</div>
        </div><br><br><br>

        <div class="row">
            <div class="col-2"></div>
            <div class="col-1" for="postcode">
                <h4>시작날짜</h4>
            </div>
            <div class="col-2"> <input type="date" id="date" max="2033-06-01" min="2023-06-01" name="sr_start" placeholder="날짜 선택"></div>
            <div class="col-1"></div>
            <div class="col-1">
                <h4>보관 기간</h4>
            </div>
            <div class="col-2">
                <input type="number" name="sr_period1">
                <select name="sr_period2" id="sr_cycle">
                    <option>선택</option>
                    <option value="week">주</option>
                    <option value="month">개월</option>
                </select>
            </div>
        </div><br><br><br>

        <div class="row">
            <div class="col-4"></div>
            <div class="col-1" for="postcode">
                <h5>예상 보관비</h5>
            </div>
            <div class="col-1"></div>
            <div class="col-4">
                <h5><input type='text' name="sr_fee" id="sr_fee" size='20'><label>원</label></h5>
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
    
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>

<script>
/* 배송비 계산 */
function calculation() {
    var first = parseInt(document.getElementById("sr_volume").value);
    var second = 1000;
    var result = first * second;
    if (isNaN(result)) { // 값이 없어서 NaN값이 나올 경우
        result = 0;
    }
    document.getElementById("sr_fee").value = result;
}
    </script>

</html>
