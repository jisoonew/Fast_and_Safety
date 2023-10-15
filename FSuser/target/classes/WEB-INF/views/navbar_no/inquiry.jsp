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
    <link href="/resources/css/navbar_no/inquiry.css" rel="stylesheet" />
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
    
    <div class="container text-center align-items-center p-5 mt-5">
        <h2>문의</h2>

        <div class="row justify-content-between p-3 mb-5">
            <div class="col-1">
                <div class="dropdown">
                    <button class="btn btn-outline-success dropdown-toggle" type="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        유형 선택
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">배송</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">재고</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">회원</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">기타</a></li>
                    </ul>
                    </ul>
                </div>
            </div>
            <div class="col-4 ">
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>

        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>유형</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>배송</td>
                    <td><a href="#">첫 번째 게시글입니다</a></td>
                    <td>홍길동</td>
                    <td>2022-05-01</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>재고</td>
                    <td><a href="#">두 번째 게시글입니다</a></td>
                    <td>김철수</td>
                    <td>2022-05-02</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>배송</td>
                    <td><a href="#">세 번째 게시글입니다</a></td>
                    <td>이영희</td>
                    <td>2022-05-03</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>회원</td>
                    <td><a href="#">네 번째 게시글입니다</a></td>
                    <td>김땡땡</td>
                    <td>2022-05-04</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>회원</td>
                    <td><a href="#">다섯 번째 게시글입니다</a></td>
                    <td>김띵띵</td>
                    <td>2022-05-05</td>
                </tr>
            </tbody>
        </table>

        <ul class="pagination justify-content-center p-3">
            <li class="disabled"><a href="#">«</a></li>
            <li class="disabled"><a href="#">‹</a></li>
            <li class="active"><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">›</a></li>
            <li><a href="#">»</a></li>
        </ul>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>

</html>