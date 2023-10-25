<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!doctype html>
<html lang>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="sidebar.css">
    <link rel="stylesheet" href="p_management.css">
    <title>상품 관리</title>
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
                            <a class="nav-link" href="#">대시보드</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">회원</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">상품</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="deliveryDropdown" role="button"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                배송
                            </a>
                            <div class="dropdown-menu" aria-labelledby="deliveryDropdown">
                                <a class="dropdown-item" href="#">당일배송</a>
                                <hr class="dropdown-divider">
                                <a class="dropdown-item" href="#">정기배송</a>
                                <hr class="dropdown-divider">
                                <a class="dropdown-item" href="#">예약배송</a>
                                <!--배송 및 운송 현황이 있는데 이걸 안넣은 이유가 이게 구현 가능한 기능인지 모르겠어서-->
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">창고</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="deliveryDropdown" role="button"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                문의
                            </a>
                            <div class="dropdown-menu" aria-labelledby="inquiryDropdown">
                                <a class="dropdown-item" href="#">문의</a>
                                <hr class="dropdown-divider">
                                <a class="dropdown-item" href="#">상담</a>
                                <hr class="dropdown-divider">
                                <a class="dropdown-item" href="#">환불 문의</a>
                            </div>
                        </li>
                        <!-- 원래 임직원인데 화면 너무 많은거 같아서 그냥 관리자로 바꾸고 화면도 관리자들만 보여주는걸로 바꾸자-->
                        <li class="nav-item">
                            <a class="nav-link" href="#">관리자</a>
                        </li>
                        <li class="nav-item fixed-bottom">
                            <a class="nav-link" href="#" id="logout">로그아웃</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <!-- 메인 콘텐츠 -->
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mt-5">
                <div class="container">
                    <h1>상품 관리</h1>
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
                                    <input class="form-control me-2 searchinput" type="search" placeholder="상품명을 입력해주세요"
                                        aria-label="Search">
                                    <button class="btn btn-outline-primary" type="submit">검색</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!--여기서 부터 상품 목록 테이블 -->
                    <table class="table table-striped mt-4">
                        <thead>
                            <tr>
                                <th>회사명</th>
                                <th>카테고리</th>
                                <th>상품명</th>
                                <th>박스 갯수</th>
                                <th>등록일</th>
                            </tr>
                        </thead>
                        <!-- 상품 항목은 한 화면에 10개씩 보여주면 될 것 같음 -->
                        <tbody>
                            <!-- 상품 항목 1 -->
                            <tr>
                                <td>회사 A</td>
                                <td>전자제품</td>
                                <td>제품 1</td>
                                <td>10</td>
                                <td>2023-10-16</td>
                            </tr>
                            <!-- 상품 항목 2 -->
                            <tr>
                                <td>회사 B</td>
                                <td>전자제품</td>
                                <td>제품 1</td>
                                <td>10</td>
                                <td>2023-10-16</td>
                            </tr>
                            <!-- 상품 항목 3 -->
                            <tr>
                                <td>회사 C</td>
                                <td>전자제품</td>
                                <td>제품 1</td>
                                <td>10</td>
                                <td>2023-10-16</td>
                            </tr>
                            <!-- 상품 항목 4 -->
                            <tr>
                                <td>회사 D</td>
                                <td>전자제품</td>
                                <td>제품 1</td>
                                <td>10</td>
                                <td>2023-10-16</td>
                            </tr>
                            <!-- 상품 항목 5 -->
                            <tr>
                                <td>회사 A</td>
                                <td>전자제품</td>
                                <td>제품 1</td>
                                <td>10</td>
                                <td>2023-10-16</td>
                            </tr>
                            <!-- 상품 항목 6 -->
                            <tr>
                                <td>회사 B</td>
                                <td>전자제품</td>
                                <td>제품 1</td>
                                <td>10</td>
                                <td>2023-10-16</td>
                            </tr>
                            <!-- 상품 항목 7 -->
                            <tr>
                                <td>회사 C</td>
                                <td>전자제품</td>
                                <td>제품 1</td>
                                <td>10</td>
                                <td>2023-10-16</td>
                            </tr>
                            <!-- 상품 항목 8 -->
                            <tr>
                                <td>회사 D</td>
                                <td>전자제품</td>
                                <td>제품 1</td>
                                <td>10</td>
                                <td>2023-10-16</td>
                            </tr>
                            <!-- 상품 항목 9 -->
                            <tr>
                                <td>회사 C</td>
                                <td>전자제품</td>
                                <td>제품 1</td>
                                <td>10</td>
                                <td>2023-10-16</td>
                            </tr>
                            <!-- 상품 항목 10 -->
                            <tr>
                                <td>회사 D</td>
                                <td>전자제품</td>
                                <td>제품 1</td>
                                <td>10</td>
                                <td>2023-10-16</td>
                            </tr>
                            <!-- 추가 상품 항목 2, 3, ... (총 10개까지) -->
                        </tbody>
                    </table>

                    <!-- 모달 팝업 창 -->
                    <div class="modal modal_info" tabindex="-1">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title p_name"></h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body p_infoAdd ">
                                    <!-- 여기에 상품 정보가 들어감-->
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary">수정</button>
                                    <button type="button" class="btn btn-primary">저장</button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- 페이지 네이션 -->
                    <div class="d-flex justify-content-between align-items-center">
                        <nav aria-label="Page navigation" style="flex: 1;">
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

                        <button type="button" class="btn btn-primary" id="addProduct">등록</button>

                        <!-- 모달 팝업 창 -->
                        <div class="modal" id="addProductModal" tabindex="-1">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">상품 등록</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body p_addBody">
                                        <!-- 상품 등록 양식 -->
                                        <form>
                                            <div class="mb-3">
                                                <label for="productName" class="form-label">상품명</label>
                                                <input type="text" class="form-control" id="productName">
                                            </div>
                                            <div class="mb-3">
                                                <label for="category" class="form-label">카테고리</label>
                                                <input type="text" class="form-control" id="category">
                                            </div>
                                            <div class="mb-3">
                                                <label for="company" class="form-label">회사명</label>
                                                <input type="text" class="form-control" id="company">
                                            </div>
                                            <div class="mb-3">
                                                <label for="boxCount" class="form-label">박스 갯수</label>
                                                <input type="number" class="form-control" id="boxCount">
                                            </div>
                                            <div class="mb-3">
                                                <label for="registrationDate" class="form-label">등록일</label>
                                                <input type="date" class="form-control" id="registrationDate">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">취소</button>
                                        <button type="button" class="btn btn-primary">저장</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </main>
        </div>
    </div>

    <!-- Bootstrap 및 jQuery 스크립트 로드 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>

    <script>
        // 페이지가 로드된 후 실행될 JavaScript 코드
        $(document).ready(function () {
            // 각 테이블 행에 클릭 이벤트 리스너를 추가
            $("table tbody tr").click(function () {
                // 클릭한 행의 데이터를 가져옴
                var rowData = $(this).find("td");

                // 모달 내용을 업데이트
                $(".p_name").text("상품 정보 - " + rowData.eq(2).text()); // 상품명
                $(".p_infoAdd").html(
                    "회사명: " + rowData.eq(0).text() + "<br>" +
                    "카테고리: " + rowData.eq(1).text() + "<br>" +
                    "박스 갯수: " + rowData.eq(3).text() + "<br>" +
                    "등록일: " + rowData.eq(4).text()
                );

                // 모달 표시
                $(".modal_info").modal("show");
            });
        });
    </script>

    <script>
        // JavaScript로 모달 열기
        document.getElementById('addProduct').addEventListener('click', function () {
            var myModal = new bootstrap.Modal(document.getElementById('addProductModal'));
            myModal.show();
        });

        // JavaScript로 모달 닫기
        document.getElementById('saveProductButton').addEventListener('click', function () {
            var myModal = new bootstrap.Modal(document.getElementById('addProductModal'));
            myModal.hide();
        });
    </script>
</body>

</html>