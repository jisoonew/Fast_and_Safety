<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/css/sidebar.css">
    <link rel="stylesheet" href="/resources/css/chanmi.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>
</head>

<body>

    <div class="container-fluid">
        <div class="row">
            <!-- 왼쪽 고정 사이드바 -->
            <nav id="sidebar" class="col-md-3 col-lg-2 d-md-block bg-dark">
                <div class="position-sticky">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a id="pagename">FS</a>
                        </li>
                        <li class="nav-item mt-3">
                            <a class="nav-link" href="/dashboard">대시보드</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/user">회원</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/product">상품</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/delivery">당일/정기/예약</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/storage">창고</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="deliveryDropdown" role="button"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                문의
                            </a>
                            <div class="dropdown-menu" aria-labelledby="inquiryDropdown">
                                <a class="dropdown-item" href="/inquiry">문의</a>
                                <hr class="dropdown-divider">
                                <a class="dropdown-item" href="/inquiry_phone">상담</a>
                                <hr class="dropdown-divider">
                                <a class="dropdown-item" href="/refund">환불 문의</a>
                            </div>
                        </li>
                        <li class="nav-item fixed-bottom">
                            <a class="nav-link" href="/logout" id="logout">로그아웃</a>
                        </li>
                    </ul>
                </div>
            </nav>
            
            <!-- 메인 콘텐츠 -->
            <main class="ol-md-9 msc-sm-auto col-lg-10 px-md-4 mt-5">
                <div class="col-md-12">
                    <div class="text-center">
                        <div class="row">
                            <div class="col-md-2" style="text-align: left;">
                                <h1>대시보드</h1>
                            </div>
                            <div class="col-md-2">
                                <p class="text-primary fw-bold" style="margin-top: 7px;">신규 주문: 1</p>
                            </div>
                            <div class="col-md-2">
                                <p class="text-info fw-bold" style="margin-top: 7px;">취소 관리: 0</p>
                            </div>
                            <div class="col-md-2">
                                <p class="text-danger fw-bold" style="margin-top: 7px;">답변 대기: 2</p>
                            </div>
                            <div class="col-md-2">
                                <p class="text-success fw-bold" style="margin-top: 7px;">문의: 4</p>
                            </div>
                            <div class="col-md-2">
                                <p class="text-warning fw-bold" style="margin-top: 7px;">예약 완료: 5</p>
                            </div>
                            
                        </div>
                    </div>
                </div>
            
                <!-- 그래프를 위한 컨테이너 추가 -->
                <!-- 첫 번째 라인: 꺾은선 그래프와 원형 그래프 -->
                <div class="graphs-container">
                    <div class="graph">
                        <canvas id="monthlySalesChart"></canvas>
                    </div>
                    <div class="graph">
                        <canvas id="monthlyExpensesChart"></canvas>
                    </div>
                </div>

                <!-- 두 번째 라인: 막대 그래프 -->
                <div class="graphs-container">
                    <div class="graph">
                        <canvas id="barChart"></canvas>
                    </div>
                </div>
                
                
            </main>
        </div>
    </div>

    <!-- Bootstrap 및 jQuery 스크립트 로드 -->
    <script src="/resources/js/scripts.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
    
</body>

</html>