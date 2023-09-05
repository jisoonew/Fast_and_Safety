<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>서비스 - 입출고 절차</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="/resources/css/navbar_no/service_step.css" rel="stylesheet" />
</head>

<body class="sb-nav-fixed">
    <nav class="navbar sb-topnav navbar-expand">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-5" href="/main_logino">
            <h1>FS</h1>
        </a>
        <!-- Company Introduction Dropdown -->
        <ul class="navbar-nav me-auto ">
            <a class="navbar-brand ps-3" href="/navbar_no/introduce">
                회사 소개
            </a>

            <!-- Services Dropdown -->
            <div class="dropdown">
                <button class="nav-link dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    서비스
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/navbar_no/product_storage">보관품목 및 유의사항</a></li>
                    <hr class="dropdown-divider" />
                    <li><a class="dropdown-item" href="/navbar_no/service_step">입출고 절차</a></li>
                </ul>
            </div>

            <!-- Warehouses Dropdown -->
            <a id="modalTrigger" data-bs-toggle="modal" data-bs-target="#exampleModal" class="navbar-brand ps-3">
                <!-- 모달 메시지 -->
                창고
            </a>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog  modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">현재 비로그인 상태 입니다!</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p>창고 예약은 로그인 후 이용 가능합니다.</p>
                            <p>로그인 하시겠습니까?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                            <a href="/user/login">
                                <button type="button" class="btn btn-primary">확인</button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="dropdown">
                <button id="modalTrigger" data-bs-toggle="modal" data-bs-target="#exampleModal1" class="nav-link dropdown-toggle" type="button"  aria-expanded="false">
                    배송
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="today_delivery">당일 배송</a></li>
                    <hr class="dropdown-divider" />
                    <li><a class="dropdown-item" href="routine_delivery">정기 배송</a></li>
                    <hr class="dropdown-divider" />
                    <li><a class="dropdown-item" href="reserve_delivery">예약 배송</a></li>
                </ul>
            </div>
            
            <!-- Modal -->
            <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog  modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">현재 비로그인 상태 입니다!</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p>배송 서비스는 로그인 후 이용 가능합니다.</p>
                            <p>로그인 하시겠습니까?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                            <a href="/user/login">
                                <button type="button" class="btn btn-primary">확인</button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ask Dropdown -->
            <a class="navbar-brand ps-3" href="/navbar_no/inquiry">
                문의
            </a>
        </ul>

        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false">LOGIN & JOIN</a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="/user/login">LOGIN</a></li>
                    <li>
                        <hr class="dropdown-divider" />
                    </li>
                    <li><a class="dropdown-item" href="/user/join">JOIN</a></li>
                </ul>
            </li>
        </ul>
    </nav>

            <div id="layoutSidenav_content" class="pt-5">
                <main><br>
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-6">
                            <h3 class="pt-5">입고</h3>
                        </div>
                        <hr>
                    </div>

                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <img src="/resources/img/service_in.png" class="service_img_in">
                        </div>
                    </div><br><br>

                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-6">
                            <h3>출고/배송</h3>
                        </div>
                        <hr>
                    </div>

                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <img src="/resources/img/service_out.png" class="service_img_out">
                        </div>
                    </div><br>

                </main>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
        </script>
</body>

</html>