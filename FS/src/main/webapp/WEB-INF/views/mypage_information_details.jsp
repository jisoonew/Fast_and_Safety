<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>FS_Mypage</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="resources/css/mypage_information_details.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
       <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="login_home.html">
                <h1>FS</h1>
            </a>
            <!-- Company Introduction Dropdown -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <a class="navbar-brand ps-3" href="introduce.html">
                    회사 소개
                </a>
           
            <!-- Services Dropdown -->
                <a class="navbar-brand ps-3" href="product_storage.html">
                    서비스
                </a>
    
            <!-- Warehouses Dropdown -->
                <a class="navbar-brand ps-3" href="storage_reserve.html">
                    창고
                </a>

            <!--delivery Dropdown-->
                <li class="nav-item dropdown2">
                    <a class="nav-link dropdown-toggle" href="today_delivery.html" id="deliveryDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        배송
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="deliveryDropdown">
                        <li><a class="dropdown-item" href="today_delivery.html">당일 배송</a></li>
                        <li><a class="dropdown-item" href="routine_delivery.html">정기 배송</a></li>
                        <li><a class="dropdown-item" href="reserve_delivery.html">예약 배송</a></li>
                    </ul>
                </li>

            <!-- ask Dropdown -->
                <a class="navbar-brand ps-3" href="inquiry.html">
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
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="mypage_same_day_delivery.html" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="mypage_same_day_delivery.html">My Page</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="not_login_home.html">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        

        <!-- 여기서부터 사이드 바 -->
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">
                                <h3>MY PAGE</h3>
                            </div>
                            <a class="nav-link collapsed" href="mypage_same_day_delivery.html" data-bs-toggle="collapse" data-bs-target="#collapse1" aria-expanded="false" aria-controls="collapse1">
                                <div class="sb-nav-link-icon"></div>
                                이용내역
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapse1" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="mypage_same_day_delivery.html">당일 배송</a>
                                    <a class="nav-link" href="mypage_regular_delivery.html">정기 배송</a>
                                    <a class="nav-link" href="mypage_reservation_delivery.html">예약 배송</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link" href="mypage_storage.html">
                                <div class="sb-nav-link-icon"></div>
                                MY 창고
                            </a>
                        
                            <a class="nav-link collapsed" href="mypage_information_details.html" data-bs-toggle="collapse" data-bs-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
                                <div class="sb-nav-link-icon"></div>
                                회원 정보
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapse2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="mypage_information_details.html">회원 정보 상세</a>
                                    <a class="nav-link" href="pay.html">결제 방법</a>
                                    
                                </nav>
                            </div>

                            <a class="nav-link collapsed" href="ask.html" data-bs-toggle="collapse" data-bs-target="#collapse3" aria-expanded="false" aria-controls="collapse3">
                                <div class="sb-nav-link-icon"></div>
                                Q & A
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapse3" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="ask.html">1:1 문의 하기</a>
                                    <a class="nav-link" href="ask_answer.html">문의 내역</a>
                                </nav>
                            </div>    

                            <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"></div>
                                회원 탈퇴
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- 여기까지 사이드바 -->
        
        
        <div id="container_content">
        
        <h1 class="mt-4" id="content_title">회원 정보</h1>
        
        <div id="container_content_details">

        <c:forEach items="${u_name}" var="u_name">
        <div id="grade_content"><a id="grade_details">이름</a><a id="result_grade"><c:out value="${u_name.u_name}" /></a></div>
        </c:forEach>
        <hr>
        <div id="grade_content"><a id="grade_details">등급</a><a id="result_grade">회원</a></div>
        <hr>
        <div id="company_content"><a id="company_details">회사명</a><a id="result_company">하늘 어린이집</a><button type="button" id="result_btn1" class="btn btn-outline-dark">수정</button></div>
        <hr>
        <div id="address_content"><a id="address_details">주소</a><a id="result_address">서울시 광진구</a><button type="button" id="result_btn2" class="btn btn-outline-dark">수정</button></div>
        <hr>
        <div id="id_content"><a id="id_details">아이디</a><a id="result_id">jisoo123</a><button type="button" id="result_btn3" class="btn btn-outline-dark">수정</button></div>
        <hr>
        <div id="num_content"><a id="num_details">전화번호</a><a id="result_num">010-1234-1235</a><button type="button" id="result_btn4" class="btn btn-outline-dark">수정</button></div>
        <hr>
        <div id="email_content"><a id="email_details">이메일</a><a id="result_email">pjsu200@naver.com</a></div>
        <div id="pw_btn"><button type="button" id="pw_btn_details" class="btn btn-outline-dark"><a href="mypage_pw_change.html" >비밀번호 변경</a></button></div>
        </div>
        </div>
        




	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>