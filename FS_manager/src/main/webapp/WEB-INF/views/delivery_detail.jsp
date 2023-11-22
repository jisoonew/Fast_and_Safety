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
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mt-5">
                <h1>배송 상세 정보</h1>
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom"></div>
                <div class="col-md-9 ms-sm-auto text-center">
                    <div class="row mt-2 py-3"> <!-- 여기에 py-3 클래스 추가 -->
                        <div class="col-md-2">
                            <strong>주문 번호 :</strong>
                        </div>
                        <div class="col-md-2">
                            1
                        </div>
                        <div class="col-md-2">
                            <strong>주문 상태 :</strong>
                        </div>
                        <div class="col-md-2">
                            <span class="editable" contenteditable="true">입금 확인</span>
                        </div>
                    </div>
                    <div class="row mt-2 py-3"> <!-- 여기에 py-3 클래스 추가 -->
                        <div class="col-md-2">
                            <strong>주문 내용 :</strong>
                        </div>
                        <div class="col-md-2">
                            <span class="editable" contenteditable="true">상품 A 구매</span>
                        </div>
                        <div class="col-md-2">
                            <strong>주문자 :</strong>
                        </div>
                        <div class="col-md-2">
                            <span class="editable" contenteditable="true">고객1</span>
                        </div>
                    </div>
                    <div class="row mt-2 py-3"> <!-- 여기에 py-3 클래스 추가 -->
                        <div class="col-md-2">
                            <strong>주문 일자 :</strong>
                        </div>
                        <div class="col-md-2">
                            <span class="editable" contenteditable="true">2023-10-10</span>
                        </div>
                        <div class="col-md-2">
                            <strong>배송 주기 :</strong>
                        </div>
                        <div class="col-md-2">
                            <span class="editable" contenteditable="true">1개월</span>
                        </div>
                    </div>
                    <div class="row mt-2 py-3">
                        <div class="col-md-2">
                            <strong>주문 취소 :</strong>
                        </div>
                        <!-- <div class="col-md-4">
                            <p class="mb-0">취소하면 영구 삭제됩니다.</p>
                        </div> -->
                        <div class="col-md-2 text-end">
                            <button class="btn btn-danger" id="deleteButton">영구 삭제</button>
                        </div>
                    </div>
                    
                    <div class="row mt-2 py-3"> <!-- 여기에 py-3 클래스 추가 -->
                        <div class="col-md-8 text-end">
                            <button class="btn btn-primary" id="editButton">수정</button>
                            <button class="btn btn-secondary" id="cancelButton">취소</button>
                        </div>
                    </div>
                </div>
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom"></div>
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