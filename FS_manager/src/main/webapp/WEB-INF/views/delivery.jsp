<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/css/sidebar.css">
    <link rel="stylesheet" href="/resources/css/chanmi.css">
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
                            <a class="nav-link" href="#" id="logout">로그아웃</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <!-- 메인 콘텐츠 -->
            <main class="col-md-6 ms-sm-auto col-lg-10 px-md-4 mt-5">
                <h1>당일/정기/예약</h1>

                <div class="row mb-3">
                    <div class="col-md-3">
                        <label for="deliveryType">배송 유형:</label>
                        <select id="deliveryType" class="form-select">
                            <option value="all">전체</option>
                            <option value="today">당일 배송</option>
                            <option value="regular">정기 배송</option>
                            <option value="reserved">예약 배송</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label for="orderStatus">주문 상태:</label>
                        <select id="orderStatus" class="form-select">
                            <option value="all">전체</option>
                            <option value="confirmed">입금 확인</option>
                            <option value="completed">입금 완료</option>
                            <option value="shipping">배송 중</option>
                            <option value="delivered">배송 완료</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label for="orderDate">주문 일자:</label>
                        <input type="date" id="orderDate" class="form-control">
                    </div>

                    <div class="col-md-3 mt-4">
                        <button class="btn btn-primary">조회</button>
                    </div>
                </div>

                <table class="table">
                    <thead>
                        <tr>
                            <th>주문 번호</th>
                            <th>주문 상태</th>
                            <th>주문 내용</th>
                            <th>주문자</th>
                            <th>주문 일자</th>
                            <th>배송 주기</th>
                            <th>상세 보기</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>입금 확인</td>
                            <td>상품 A 구매</td>
                            <td>고객1</td>
                            <td>2023-10-10</td>
                            <td>1개월</td>
                            <td><a href="admin_delivery_details.html" class="btn btn-primary">상세 보기</a></td>
                        </tr>
                        <!-- 다른 주문들을 이곳에 추가 -->
                    </tbody>
                </table>
            </main>
        </div>
    </div>

    <!-- Bootstrap 및 jQuery 스크립트 로드 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>

</html>