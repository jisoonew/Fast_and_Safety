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
                <div class="col-md-12">
                    <div class="text-center">
                        <div class="row">
                            <div class="col-md-2" style="text-align: left;">
                                <h1>배송 현황</h1>
                            </div>
                            <div class="col-md-2">
                                <p class="text-primary fw-bold" style="margin-top: 7px;">배송 누적 금액: 50,000원</p>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row mb-6">
                    <div class="col-md-6">
                        <div class="input-group">
                            <select id="Type" class="form-select">
                                <option value="all">실온</option>
                                <option value="all">냉장</option>
                                <option value="all">냉동</option>
                                <option value="all">출고량 많은 순</option>
                                <option value="all">출고량 적은 순</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="검색어를 입력하세요." aria-label="검색어를 입력하세요" aria-describedby="searchButton">
                            <button class="btn btn-primary" type="button" id="searchButton">검색</button>
                        </div>
                    </div>
                </div>

                <br>

                <table class="table table-bordered table-hover text-center">
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>송장 번호</th>
                            <th>물품명</th>
                            <th>출고 물량</th>
                            <th>물품 종류</th>
                            <th>컨테이너</th>
                            <th>컨테이너 번호</th>
                            <th>수령인</th>
                            <th>주소</th>
                            <th>배송 상태</th>
                            <th>배송비</th>
                            <th>등록일</th>
                            <th>삭제</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>1234</td>
                            <td>우유</td>
                            <td>3</td>
                            <td>유제품</td>
                            <td>실온</td>
                            <td>1540-1</td>
                            <th>냉장</th>
                            <th>서울시</th>
                            <th>출고</th>
                            <th>배송비</th>
                            <td>2023-10-29</td>
                            <td>X</td>
                        </tr>
                        <!-- 이곳에 추가 -->
                    </tbody>
                </table>
                <div class="row mt-12 py-3"> <!-- 여기에 py-3 클래스 추가 -->
                    <div class="col-md-12 text-end">
                        <button class="btn btn-primary" id="editButton">추가</button>
                        <button class="btn btn-secondary" id="cancelButton">저장</button>
                    </div>
                </div>
                <nav aria-label="페이지 탐색" class="d-flex justify-content-center">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="이전">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="다음">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
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