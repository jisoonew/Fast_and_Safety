<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MAIN HOME - NO LOGIN</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="/resources/css/main_logino.css" rel="stylesheet"/>
</head>

<body>

    <nav class="navbar sb-topnav navbar-expand">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-5" href="main_logino">
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

    <div id="container_main_img1" class="pt-5">
        <img src="resources/img/main_img1.png" class="main_img1">
    </div>
    <div class="main-content">
        <h1 id="Company_Overview">사업 소개</h1>

        <div id="slogan">
            <div id="container_Slogan">
                SLOGAN
                <br>
                Fast and safest logistics warehouse company.
            </div>
            
            <div>
                <div id="container_all">
                    <div id="container_delivery">
                        <a id="main_delivery_text">배송</a>
                        <div id="delivery">
                            <br>
                            <img src="resources/img/main_delivery.png" class="main_delivery_img">
                            <br>
                            <a>FS만의 특별한 멤버십 운영으로 <br>
                                효율적인 배송을 지원합니다.</a>
                            <br>
                            <a id="main_delivery_btn" data-bs-toggle="modal" data-bs-target="#exampleModal1" class="btn btn-outline-white">배송하러 가기 -></a>
                        </div>
                    </div>

                    <div id="container_storage">
                        <a id="main_storage_text">창고</a>
                        <div id="storage">
                            <br>
                            <img src="resources/img/main_storage.png" class="main_storage_img">
                            <br>
                            <a>고객의 물류 특성에 맞는<br>
                                맞춤 창고 서비스를 제공합니다.</a>
                            <br>
                            <a id="main_storage_btn" data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-outline-white">창고보러 가기 -></a>
                        </div>
                    </div>
                </div>


                <div id="container_join">
                    <div id="main_join">
                        FS의 회원이 된다면 더 많은 서비스를 경험할 수 있습니다.
                        <br>
                        <a id="main_join_btn" class="btn btn-outline-white" href="/user/join">회원가입하기 -></a>
                    </div>
                </div>


                <h3 id="main_qa_text" class="pt-5">자주 묻는 질문</h3>

                <!-- 아코디언 시작 -->
                <div class="accordion accordion-flush" id="accordionFlushExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#flush-collapseOne" aria-expanded="false"
                                aria-controls="flush-collapseOne">
                                질문 1
                            </button>
                        </h2>
                        <div id="flush-collapseOne" class="accordion-collapse collapse"
                            aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the
                                <code>.accordion-flush</code> class. This is the first item's accordion body.</div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#flush-collapseTwo" aria-expanded="false"
                                aria-controls="flush-collapseTwo">
                                질문 2
                            </button>
                        </h2>
                        <div id="flush-collapseTwo" class="accordion-collapse collapse"
                            aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">Placeholder content for this accordion, which is intended to
                                demonstrate
                                the
                                <code>.accordion-flush</code> class. This is the second item's accordion body. Let's
                                imagine
                                this
                                being filled
                                with some actual content.</div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingThree">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#flush-collapseThree" aria-expanded="false"
                                aria-controls="flush-collapseThree">
                                질문 3
                            </button>
                        </h2>
                        <div id="flush-collapseThree" class="accordion-collapse collapse"
                            aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">Placeholder content for this accordion, which is intended to
                                demonstrate
                                the
                                <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing
                                more
                                exciting
                                happening
                                here in terms of content, but just filling up the space to make it look, at least at
                                first
                                glance, a
                                bit more
                                representative of how this would look in a real-world application.</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 아코디언 끝 -->


            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div>
                                <img src="resources/img/로고.png" class="main_logo_img">
                                <div id="main_bottom_text">
                                    <a>FS(주) 사업자 등록 번호 : 110-00-01011 대표자 : 박지수</a><br>
                                    <a>주소 : 경기도 의정부시 서부로 545 고객 센터 : 1588-0000</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
                crossorigin="anonymous">
            </script>
</body>

</html>