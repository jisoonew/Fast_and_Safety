<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>마이 페이지 - 정기 배송</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="/resources/css/mypage/sidebar.css" rel="stylesheet" />
    <link href="/resources/css/navbar/navbar.css" rel="stylesheet" />
    <link href="/resources/css/mypage/regular_delivery.css" rel="stylesheet" />
</head>

<body class="sb-nav-fixed">
    <nav class="navbar sb-topnav navbar-expand">
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0 ps-3" id="sidebarToggle" href="#"><i
                class="fas fa-bars"></i></button>
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="/main_login">
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
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="mypage_today_delivery" role="button"
                    data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="mypage_today_delivery">My Page</a></li>
                    <li>
                        <hr class="dropdown-divider" />
                    </li>
                    <li><a class="dropdown-item" href="/user/logout.do">Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <!--여기까지 네비게이션 바-->

        <!-- 여기서부터 사이드 바 -->
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">
                            <h3>MY PAGE</h3>
                        </div>
                        <a class="nav-link collapsed" href="/mypage/today_delivery" data-bs-toggle="collapse"
                            data-bs-target="#collapse1" aria-expanded="false" aria-controls="collapse1">
                            <div class="sb-nav-link-icon"></div>
                            이용내역
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapse1" aria-labelledby="headingOne"
                            data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="/mypage/today_delivery">당일 배송</a>
                                <a class="nav-link" href="/mypage/regular_delivery">정기 배송</a>
                                <a class="nav-link" href="/mypage/reserve_delivery">예약 배송</a>
                            </nav>
                        </div>

                        <a class="nav-link" href="/mypage/storage">
                            <div class="sb-nav-link-icon"></div>
                            MY 창고
                        </a>

                        <a class="nav-link collapsed" href="/mypage/information_details" data-bs-toggle="collapse"
                            data-bs-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
                            <div class="sb-nav-link-icon"></div>
                            회원 정보
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapse2" aria-labelledby="headingOne"
                            data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="/mypage/information_details">회원 정보 상세</a>
                                <a class="nav-link" href="/mypage/pay">결제 방법</a>

                            </nav>
                        </div>

                        <a class="nav-link collapsed" href="/mypage/ask" data-bs-toggle="collapse" data-bs-target="#collapse3"
                            aria-expanded="false" aria-controls="collapse3">
                            <div class="sb-nav-link-icon"></div>
                            Q & A
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapse3" aria-labelledby="headingOne"
                            data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="/mypage/ask">1:1 문의 하기</a>
                                <a class="nav-link" href="/mypage/ask_answer">문의 내역</a>
                            </nav>
                        </div>

                        <a class="nav-link" href="/mypage/delete">
                            <div class="sb-nav-link-icon"></div>
                            회원 탈퇴
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- 여기까지 사이드바 -->

    <form id="form">
        <div id="container_content">

            <h1 class="mt-5" id="content_title">정기 배송</h1>

            <div id="year_month_date">
                <select class="form-select" aria-label="Default select example" id="year">
                </select>
                <br>
                <select class="form-select" aria-label="Default select example" id="month">
                </select>
                <br>
                <select class="form-select" aria-label="Default select example" id="date">
                </select>
                <br>
                <button type="button" id="y_m_d_dtn" class="btn btn-outline-dark">검색</button>
            </div>

            <div id="container_delivery_state">
                <select class="form-select" aria-label="Default select example" id="delivery_state_select">
                    <option value="배송 상태" selected="selected">배송 상태</option>
                    <option value="송장 번호">송장 번호</option>
                    <option value="물품명">물품명</option>
                    <option value="물품 종류">물품 종류</option>
                    <option value="배송 상태">배송 상태</option>
                    <option value="배송 합계">배송 합계</option>
                </select>

                <input class="form-control" id="delivery_state_search" type="text" placeholder="검색" aria-label="검색창">
                <a class="ps-2">
                    <button type="button" id="search_dtn" class="btn btn-outline-dark">검색</button>
                </a>
            </div>
        </div>

        <div id="container_table">
            <table class="table table-bordered" style="font-size:15px;">
                <thead>
                    <tr>
                        <th scope="col" style="width: 5%">NO</th>
                        <th scope="col" style="width: 16%">물품명</th>
                        <th scope="col" style="width: 8%">출고 물량</th>
                        <th scope="col" style="width: 8%">컨테이너</th>
                        <th scope="col" style="width: 8%">컨테이너 번호</th>
                        <th scope="col" style="width: 8%">수령인</th>
                        <th scope="col" style="width: 20%">주소</th>
                        <th scope="col" style="width: 10%">배송 상태</th>
                        <th scope="col" style="width: 10%">배송비</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach items="${routine}" var="routine" varStatus="status">
                        <tr>
                            <td>
                                <c:out value="${status.count}" />
                            </td><!-- 테이블 순서 -->
                            <td>
                                <c:out value="${routine.rd_kind_release}" />
                            </td><!-- 물품명 -->
                            <td>
                                <c:out value="${routine.rd_volume}" />
                            </td><!-- 물량 -->
                            <td>
                                <c:out value="${routine.container_type}" />
                            </td><!-- 컨테이너 타입 -->
                            <td>
                                <c:out value="${routine.container_num}" />
                            </td><!-- 컨테이너 번호 -->
                            <td>
                                <c:out value="${routine.rd_name}" />
                            </td><!-- 수령인 -->
                            <td>
                                <c:out
                                    value="(${routine.rd_postcode}) ${routine.rd_address} ${routine.rd_detail_address}" />
                            </td><!-- 주소 -->
                            <td>
                                <c:out value="처리" />
                            </td><!-- 배송 상태 -->
                            <td>
                                <c:out value="${routine.rd_delivery_fee}" />
                            </td><!-- 배송비 -->
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col" style="width: 10%">배송 합계</th>
                        <th scope="col" style="width: 20%"></th>
                        <th scope="col" style="width: 10%"></th>
                        <th scope="col" style="width: 10%"></th>
                        <th scope="col" style="width: 10%"></th>
                        <th scope="col" style="width: 10%"></th>
                        <th scope="col" style="width: 10%">1,000,000원</th>
                    </tr>
            </table>
        </div>
    </form>

    <script src="/resources/js/sidebar.js"></script>
    <script src="/resources/js/today_delivery.js"></script>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>

</html>