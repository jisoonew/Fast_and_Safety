<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>회사 소개</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="/resources/css/navbar/introduce.css" rel="stylesheet" />
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

        <!-- Navbar Search-->
        <!-- <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
            </div>
        </form> -->
        <!-- Navbar-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
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


    <div class="container">
        <div class="row align-items-center">
            <div class="col">
                <img src="/resources/img/소개.png" class="rounded mx-auto d-block" style="height: 60vh;" width="1100px" />
            </div>
            <div class="row text-center mt-5">
                <div class="col">
                    <h1 style="font-weight: bold;">회사소개</h1>
                    <img src="/resources/img/회사.png" class="rounded mx-auto d-block" style="height: 60vh;"
                        width="1100px" />
                </div>
            </div>
            <div class="row text-start mt-3">
                <div class="col ms-5 me-5">
                    <div class="ms-5 me-5 border border-secondary">
                        <div class="ms-3">
                            <h1 class="mt-3">회사명 : 에프에스물류창고 (FS)</h1>
                            <h1 class="mt-3">설립일 : 2023.01.01</h1>
                            <h1 class="mt-3">업종 : 식품 물류 창고 (회원제)</h1>
                            <h1 class="mt-3">주소 : 경기도 의정부시 서부로 545</h1>
                            <h1 class="mt-3">면적 : 면적 200평</h1>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col text-center mt-5">
                    <h1 style="font-weight: bold;">회원제 혜택</h1>
                </div>
            </div>

            <div class=" align-items-center text-center">
                <div class=" row border border-secondary ms-5 me-5">
                    <div class="row mt-4 align-items-center mb-4">
                        <div class="col">
                            <img src="/resources/img/배송.png" />
                        </div>
                        <div class="col">
                            <h5>회원님들을 위한 특별한 고객 지원 팀을 구성해 빠르고 친절한 응대를 제공합니다. 궁금한 사항이나 문제가 발생했을 때 언제든지 도움을 받으실 수 있습니다.
                            	회원님의 물류 요구에 최적화된 맞춤형 솔루션을 제공해드립니다. 우리의 전문 팀이 회원님의 비즈니스에 맞는 효율적인 물류 전략을 개발하고 지원합니다.</h5>
                        </div>
                    </div>
                    <hr>
                    <div class="row mt-2 mb-4 aligh align-items-center">
                        <div class="col">
                            <h5>회원 등록 시, 물류 서비스 및 창고 이용에 대한 전용 할인 혜택을 제공해드립니다. 우리 회사의 회원들은 항상 경쟁력 있는 가격으로 서비스를 이용하실 수 있습니다.
                            	회원님들께는 우선적인 예약 및 이용 기회를 드립니다. 창고 이용 시, 비회원보다 먼저 예약하고 편리하게 물류 공간을 확보할 수 있습니다.</h5>
                        </div>
                        <div class="col">
                            <img src="/resources/img/물류.png" width="324" height="292" />
                        </div>
                    </div>
                </div>
            </div>
s
            <div class="row">
                <div class="col text-center mt-5">
                    <h1 style="font-weight: bold;">오시는 길</h1>
                </div>
            </div>

            <div class="row align-items-center border border-secondary ms-5" style="width: 1220px;">
                <div class="col mt-3 mb-3 text-center">
                    <img src="/resources/img/지도.png" />
                </div>
                <div class="col mt-3 text-start">
                    <h5 class="mt-3">주소: 서울특별시 어쩌구 저쩌구</h5>
                    <h5 class="mt-5">Tel : 02-1234-5678</h5>
                    <h5 class="mt-5">Fax : 02-1234-5678</h5>
                    <h5 class="mt-5">Email : fsemail@gmail</h5>
                </div>
            </div>

            <footer style="padding: 50px 0;"></footer>

        </div>
    </div>
    
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>

</html>