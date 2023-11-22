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
    <link rel="stylesheet" href="/resources/css/inquiry_phone.css">
    <title>고객 상담</title>
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
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mt-5 me-4">
                <h1>고객 상담</h1>
                <div class="form-group mt-5">
                    <div class="row">
                        <!-- 날짜 설정 -->
                        <div class="col">
                            <label for="start-date">기간 : </label>
                            <input type="date" id="start-date" class="form-control">
                            <span> ~ </span>
                            <input type="date" id="end-date" class="form-control">
                        </div>
                        <!-- 검색 창 -->
                        <div class="col">
                            <form class="d-flex searchform justify-content-end" role="search">
                                <input class="form-control me-2 searchinput" type="search" placeholder="회사명을 입력해주세요"
                                    aria-label="Search">
                                <button class="btn btn-outline-primary" type="submit">검색</button>
                            </form>
                        </div>
                    </div>
                </div>
                <table class="table table-striped mt-5">
                    <thead>
                        <tr>
                            <th>상담번호</th>
                            <th>회사명</th>
                            <th>상담 원인</th>
                            <th>상담 날짜</th>
                            <th>상담 시간</th>
                            <th>담당자</th>
                        </tr>
                    </thead>
                    <tbody id="consultation-list">
                        <tr>
                            <td>001</td>
                            <td>고객 A</td>
                            <td>상담 원인 1</td>
                            <td>2023-10-16</td>
                            <td>10:00 AM</td>
                            <td>담당자 A</td>
                        </tr>
                        <tr>
                            <td>002</td>
                            <td>고객 B</td>
                            <td>상담 원인 2</td>
                            <td>2023-10-16</td>
                            <td>11:30 AM</td>
                            <td>담당자 B</td>
                        </tr>
                        <tr>
                            <td>003</td>
                            <td>고객 C</td>
                            <td>상담 원인 3</td>
                            <td>2023-10-17</td>
                            <td>2:00 PM</td>
                            <td>담당자 C</td>
                        </tr>
                        <tr>
                            <td>004</td>
                            <td>고객 D</td>
                            <td>상담 원인 4</td>
                            <td>2023-10-17</td>
                            <td>4:30 PM</td>
                            <td>담당자 D</td>
                        </tr>
                        <tr>
                            <td>005</td>
                            <td>고객 E</td>
                            <td>상담 원인 5</td>
                            <td>2023-10-18</td>
                            <td>9:15 AM</td>
                            <td>담당자 E</td>
                        </tr>
                        <tr>
                            <td>006</td>
                            <td>고객 F</td>
                            <td>상담 원인 6</td>
                            <td>2023-10-18</td>
                            <td>1:45 PM</td>
                            <td>담당자 F</td>
                        </tr>
                        <tr>
                            <td>007</td>
                            <td>고객 G</td>
                            <td>상담 원인 7</td>
                            <td>2023-10-19</td>
                            <td>10:30 AM</td>
                            <td>담당자 G</td>
                        </tr>
                        <tr>
                            <td>008</td>
                            <td>고객 H</td>
                            <td>상담 원인 8</td>
                            <td>2023-10-19</td>
                            <td>3:00 PM</td>
                            <td>담당자 H</td>
                        </tr>
                        <tr>
                            <td>009</td>
                            <td>고객 I</td>
                            <td>상담 원인 9</td>
                            <td>2023-10-20</td>
                            <td>9:45 AM</td>
                            <td>담당자 I</td>
                        </tr>
                        <tr>
                            <td>010</td>
                            <td>고객 J</td>
                            <td>상담 원인 10</td>
                            <td>2023-10-20</td>
                            <td>2:30 PM</td>
                            <td>담당자 J</td>
                        </tr>
                    </tbody>
                </table>

                <!-- 모달 팝업 창 -->
                <div class="modal" tabindex="-1">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Modal title</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p>Modal body text goes here.</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary">수정</button>
                                <button type="button" class="btn btn-primary">저장</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 페이지 네이션 -->
                <nav class="mt-4" aria-label="Page navigation">
                    <ul class="pagination justify-content-center">
                        <li class="page-item">
                            <!-- 제일 처음으로 -->
                            <a class="page-link" href="#" aria-label="First">
                                <span aria-hidden="true"></span>«</span>
                            </a>
                        </li>
                        <!-- 이전 -->
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&lt;</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <!-- 다음 -->
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&gt;</span>
                            </a>
                        </li>
                        <!-- 제일 마지막으로 -->
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Last">
                                <span aria-hidden="true">»</span>
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

    <!-- 모달창 자바스크립트 -->
    <script>
        // 페이지가 로드된 후 실행될 JavaScript 코드
        $(document).ready(function () {
            // 각 테이블 셀에 클릭 이벤트 리스너를 추가
            $("table tbody tr").click(function () {
                // 클릭한 행의 데이터를 가져옴
                var rowData = $(this).find("td");

                // 모달 내용을 업데이트
                $(".modal-title").text("상담 정보 - " + rowData.eq(0).text()); // 상담번호
                $(".modal-body").html(
                    "회사명: " + rowData.eq(1).text() + "<br>" +
                    "상담 원인: " + rowData.eq(2).text() + "<br>" +
                    "상담 날짜: " + rowData.eq(3).text() + "<br>" +
                    "상담 시간: " + rowData.eq(4).text() + "<br>" +
                    "담당자: " + rowData.eq(5).text()
                );

                // 모달 표시
                $(".modal").modal("show");
            });
        });
    </script>
</body>

</html>