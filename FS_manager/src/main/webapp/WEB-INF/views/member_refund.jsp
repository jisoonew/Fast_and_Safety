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
                <h1>환불</h1>

                <div class="row mb-3">
                    <div class="col-md-3">
                        <label for="deliveryType">처리 상태 :</label>
                        <select id="deliveryType" class="form-select">
                            <option value="all">전체</option>
                            <option value="today">환불전</option>
                            <option value="regular">환불 완료</option>
                            <option value="reserved">환불 보류</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label for="orderDate">주문 일자 :</label>
                        <input type="date" id="orderDate" class="form-control">
                    </div>

                    <div class="col-md-3 mt-4">
                        <button class="btn btn-primary">조회</button>
                    </div>

                    <div class="col-md-3 mt-4">
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
                            <th>접수일 / 완료일</th>
                            <th>주문 번호 / 환불 번호</th>
                            <th>업체명 / 주문자</th>
                            <th>총수량</th>
                            <th>총환불액</th>
                            <th>실환불액</th>
                            <th>결제 수단</th>
                            <th>환불 수단</th>
                            <th>처리 상태</th>
                            <th>메모</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>2023-10-25 / 2023-10-29</td>
                            <td>1 / 101</td>
                            <td>FS / 홍길동</td>
                            <td>1</td>
                            <td>10,000원</td>
                            <td>10,000원</td>
                            <td>무통장</td>
                            <td>무통장</td>
                            <td>환불전</td>
                            <td>
                                <button class="btn btn-primary" id="detailButton" data-bs-toggle="modal" data-bs-target="#inquiryModal">메모</button>
                                <!-- 해당 행의 모달 창 -->
                                <div class="modal fade" id="inquiryModal" tabindex="-1" aria-labelledby="inquiryModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="inquiryModalLabel">메모</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="닫기"></button>
                                            </div>
                                            <div class="modal-body">
                                                <label for="responseText">작성 :</label>
                                                <textarea class="form-control" id="responseText" rows="3"></textarea>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                                                <button type="button" class="btn btn-primary" id="submitResponseButton">등록</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        
                        <!-- 다른 주문들을 이곳에 추가 -->
                    </tbody>
                </table>

                <!-- 페이징 추가 -->
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