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
    <link rel="stylesheet" href="s_management.css">
    <title>창고 관리</title>
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
                    <h1>창고 관리</h1>
                    <div class="form-group mt-5">
                        <!-- 종류 선택 -->
                        <div class="checkform d-flex">
                            <div class="form-check1">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                    운영
                                </label>
                            </div>
                            <div class="form-check2">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                    비운영
                                </label>
                            </div>
                            <div class="form-check3">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                    예약
                                </label>
                            </div>
                        </div>

                        <!-- 검색 창 -->
                        <form class="d-flex searchform" role="search">
                            <select class="form-select" aria-label="Default select example">
                                <option selected>-- 전체 --</option>
                                <option value="1">창고 번호</option>
                                <option value="2">창고 위치</option>
                                <option value="3">회사명</option>
                            </select>
                            <input class="form-control me-2 searchinput" type="search" placeholder="정보를 입력해주세요"
                                aria-label="Search">
                            <button class="btn btn-outline-primary" type="submit">검색</button>
                        </form>

                        <!--여기서 부터 상품 목록 테이블 -->
                        <table class="table table-striped mt-4">
                            <thead>
                                <tr>
                                    <th>선택</th>
                                    <th>창고 번호</th>
                                    <th>창고 타입</th>
                                    <th>창고 위치</th>
                                    <th>회사명</th>
                                    <th>등록 상품</th>
                                    <th>창고 상태</th>
                                </tr>
                            </thead>
                            <!-- 상품 항목은 한 화면에 10개씩 보여주면 될 것 같음 -->
                            <tbody>
                                <!-- 상품 항목 1 -->
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckDefault1">
                                            <label class="form-check-label" for="flexCheckDefault1">
                                            </label>
                                        </div>
                                    </td>
                                    <td>1</td>
                                    <td>창고 타입 1</td>
                                    <td>창고 위치 1</td>
                                    <td>회사명 1</td>
                                    <td>등록 상품 1</td>
                                    <td>창고 상태 1</td>
                                </tr>

                                <!-- 상품 항목 2 -->
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckDefault2">
                                            <label class="form-check-label" for="flexCheckDefault2">
                                            </label>
                                        </div>
                                    </td>
                                    <td>2</td>
                                    <td>창고 타입 2</td>
                                    <td>창고 위치 2</td>
                                    <td>회사명 2</td>
                                    <td>등록 상품 2</td>
                                    <td>창고 상태 2</td>
                                </tr>

                                <!-- 상품 항목 3 -->
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckDefault4">
                                            <label class="form-check-label" for="flexCheckDefault4">
                                            </label>
                                        </div>
                                    </td>
                                    <td>3</td>
                                    <td>창고 타입 3</td>
                                    <td>창고 위치 3</td>
                                    <td>회사명 3</td>
                                    <td>등록 상품 3</td>
                                    <td>창고 상태 3</td>
                                </tr>

                                <!-- 상품 항목 4 -->
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckDefault4">
                                            <label class="form-check-label" for="flexCheckDefault4">
                                            </label>
                                        </div>
                                    </td>
                                    <td>4</td>
                                    <td>창고 타입 4</td>
                                    <td>창고 위치 4</td>
                                    <td>회사명 4</td>
                                    <td>등록 상품 4</td>
                                    <td>창고 상태 4</td>
                                </tr>

                                <!-- 상품 항목 5 -->
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckDefault5">
                                            <label class="form-check-label" for="flexCheckDefault5">
                                            </label>
                                        </div>
                                    </td>
                                    <td>5</td>
                                    <td>창고 타입 5</td>
                                    <td>창고 위치 5</td>
                                    <td>회사명 5</td>
                                    <td>등록 상품 5</td>
                                    <td>창고 상태 5</td>
                                </tr>

                                <!-- 상품 항목 6 -->
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckDefault6">
                                            <label class="form-check-label" for="flexCheckDefault6">
                                            </label>
                                        </div>
                                    </td>
                                    <td>6</td>
                                    <td>창고 타입 6</td>
                                    <td>창고 위치 6</td>
                                    <td>회사명 6</td>
                                    <td>등록 상품 6</td>
                                    <td>창고 상태 6</td>
                                </tr>

                                <!-- 상품 항목 7 -->
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckDefault7">
                                            <label class="form-check-label" for="flexCheckDefault7">
                                            </label>
                                        </div>
                                    </td>
                                    <td>7</td>
                                    <td>창고 타입 7</td>
                                    <td>창고 위치 7</td>
                                    <td>회사명 7</td>
                                    <td>등록 상품 7</td>
                                    <td>창고 상태 7</td>
                                </tr>

                                <!-- 상품 항목 8 -->
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckDefault8">
                                            <label class="form-check-label" for="flexCheckDefault8">
                                            </label>
                                        </div>
                                    </td>
                                    <td>8</td>
                                    <td>창고 타입 8</td>
                                    <td>창고 위치 8</td>
                                    <td>회사명 8</td>
                                    <td>등록 상품 8</td>
                                    <td>창고 상태 8</td>
                                </tr>

                                <!-- 상품 항목 9 -->
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckDefault9">
                                            <label class="form-check-label" for="flexCheckDefault9">
                                            </label>
                                        </div>
                                    </td>
                                    <td>9</td>
                                    <td>창고 타입 9</td>
                                    <td>창고 위치 9</td>
                                    <td>회사명 9</td>
                                    <td>등록 상품 9</td>
                                    <td>창고 상태 9</td>
                                </tr>

                                <!-- 상품 항목 10 -->
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckDefault10">
                                            <label class="form-check-label" for="flexCheckDefault10">
                                            </label>
                                        </div>
                                    </td>
                                    <td>10</td>
                                    <td>창고 타입 10</td>
                                    <td>창고 위치 10</td>
                                    <td>회사명 10</td>
                                    <td>등록 상품 10</td>
                                    <td>창고 상태 10</td>
                                </tr>
                                <!-- 추가 상품 항목 2, 3, ... (총 10개까지) -->
                            </tbody>
                        </table>

                        <!-- 모달 팝업 창 -->
                        <div class="modal modal_info" tabindex="-1">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title s_name"></h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body s_infoAdd ">
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

                            <button type="button" class="btn btn-primary" id="addStorage">등록</button>

                            <!-- 모달 팝업 창 -->
                            <div class="modal" id="addStorageModal" tabindex="-1">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">창고 등록</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <!-- 창고 등록 양식 -->
                                            <form>
                                                <div class="mb-3">
                                                    <label for="warehouseNumber" class="form-label">창고 번호</label>
                                                    <input type="text" class="form-control" id="warehouseNumber"
                                                        placeholder="창고 번호를 입력하세요">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="warehouseType" class="form-label">창고 타입</label>
                                                    <select class="form-select" id="warehouseType">
                                                        <option value="option1">Option 1</option>
                                                        <option value="option2">Option 2</option>
                                                        <!-- Add more options as needed -->
                                                    </select>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="warehouseLocation" class="form-label">창고 위치</label>
                                                    <input type="text" class="form-control" id="warehouseLocation"
                                                        placeholder="창고 위치를 입력하세요">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="companyName" class="form-label">회사명</label>
                                                    <input type="text" class="form-control" id="companyName"
                                                        placeholder="회사명을 입력하세요">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="registeredProducts" class="form-label">등록 상품</label>
                                                    <textarea class="form-control" id="registeredProducts"
                                                        placeholder="등록 상품을 입력하세요"></textarea>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="warehouseStatus" class="form-label">창고 상태</label>
                                                    <select class="form-select" id="warehouseStatus">
                                                        <option value="active">운영</option>
                                                        <option value="inactive">비운영</option>
                                                        <option value="reserved">예약</option>
                                                    </select>
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
                $(".s_name").text("창고 정보 - " + rowData.eq(3).text()); // 창고 위치
                $(".s_infoAdd").html(
                    "창고 번호: " + rowData.eq(1).text() + "<br>" +
                    "창고 타입: " + rowData.eq().text() + "<br>" +
                    "회사명: " + rowData.eq(5).text() + "<br>" +
                    "등록 상품: " + rowData.eq(6).text() + "<br>" +
                    "창고 상태: " + rowData.eq(7).text()
                );

                // 모달 표시
                $(".modal_info").modal("show");
            });
        });
    </script>

    <script>
        // JavaScript로 모달 열기
        document.getElementById('addStorage').addEventListener('click', function () {
            var myModal = new bootstrap.Modal(document.getElementById('addStorageModal'));
            myModal.show();
        });

        // JavaScript로 모달 닫기
        document.getElementById('saveProductButton').addEventListener('click', function () {
            var myModal = new bootstrap.Modal(document.getElementById('addStorageModal'));
            myModal.hide();
        });
    </script>
</body>

</html>