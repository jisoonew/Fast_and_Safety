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
                <h1>관리자</h1>

                <div class="row mb-3">
                    <div class="col-md-3">
                        <label for="deliveryType">권한 선택 :</label>
                        <select id="deliveryType" class="form-select">
                            <option value="all">모든 권한</option>
                            <option value="today">상품</option>
                            <option value="regular">배송</option>
                            <option value="reserved">창고</option>
                            <option value="reserved">문의</option>
                            <option value="reserved">상담</option>
                            <option value="reserved">환불</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label for="deliveryType">부서 선택 :</label>
                        <select id="deliveryType" class="form-select">
                            <option value="all">전체</option>
                        </select>
                    </div>

                    <div class="col-md-2 mt-4">
                        <button class="btn btn-primary">조회</button>
                    </div>
                    
                    <div class="col-md-2 mt-4">
                        <button class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#inquiryModal">관리자 등록</button>
                        <!-- 모달 창 -->
                        <div class="modal fade" id="inquiryModal" tabindex="-1" aria-labelledby="inquiryModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="inquiryModalLabel">관리자 등록</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="닫기"></button>
                                    </div>
                                    <div class="modal-body" style="text-align: left;">
                                        <form>
                                            <div class="mb-3">
                                                <label for="id" class="form-label">아이디:</label>
                                                <input type="text" class="form-control" id="id" value="">
                                            </div>
                                            <div class="mb-3">
                                                <label for="password" class="form-label">비밀번호:</label>
                                                <input type="password" class="form-control" id="password">
                                            </div>
                                            <div class="mb-3">
                                                <label for="confirmPassword" class="form-label">비밀번호 확인:</label>
                                                <input type="password" class="form-control" id="confirmPassword">
                                            </div>
                                            <div class="mb-3">
                                                <label for="name" class="form-label">이름:</label>
                                                <input type="text" class="form-control" id="name" value="">
                                            </div>
                                            <div class="mb-3">
                                                <label for="email" class="form-label">이메일:</label>
                                                <input type="email" class="form-control" id="email" value="">
                                            </div>
                                            <div class="mb-3">
                                                <label for="grade" class="form-label">권한 선택:</label>
                                                <select class="form-select" id="grade">
                                                    <option value="all">모든 권한</option>
                                                    <option value="all">상품</option>
                                                    <option value="all">배송</option>
                                                    <option value="all">창고</option>
                                                    <option value="all">문의</option>
                                                    <option value="all">상담</option>
                                                    <option value="all">환불</option>
                                                </select>
                                            </div>
                                            <div class="mb-3">
                                                <label for="department" class="form-label">부서 선택:</label>
                                                <select class="form-select" id="department">
                                                    <option value="all">전체</option>
                                                </select>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">등록</button>
                                        <button type="button" class="btn btn-primary" id="submitResponseButton">취소</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-2 mt-4">
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
                            <th>등급</th>
                            <th>아이디</th>
                            <th>비밀번호</th>
                            <th>부서</th>
                            <th>이름</th>
                            <th>이메일</th>
                            <th>수정 / 삭제</th>
                            <th>권한</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>최고 관리자</td>
                            <td>hh</td>
                            <td>1234</td>
                            <td>문의</td>
                            <td>홍길동</td>
                            <td>hh@gmail.com</td>
                            <td>
                                <button class="btn btn-primary" id="detailButton" data-bs-toggle="modal" data-bs-target="#inquiryModal">수정</button>
                                <button class="btn btn-secondary" id="detailButton">삭제</button>
                                <!-- 모달 창 -->
                                <div class="modal fade" id="inquiryModal" tabindex="-1" aria-labelledby="inquiryModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="inquiryModalLabel">회원 정보 수정</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="닫기"></button>
                                            </div>
                                            <div class="modal-body" style="text-align: left;">
                                                <form>
                                                    <div class="mb-3">
                                                        <label for="id" class="form-label">아이디:</label>
                                                        <input type="text" class="form-control" id="id" value="hh" disabled>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="password" class="form-label">비밀번호:</label>
                                                        <input type="password" class="form-control" id="password">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="confirmPassword" class="form-label">비밀번호 확인:</label>
                                                        <input type="password" class="form-control" id="confirmPassword">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="name" class="form-label">이름:</label>
                                                        <input type="text" class="form-control" id="name" value="홍길동">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="email" class="form-label">이메일:</label>
                                                        <input type="email" class="form-control" id="email" value="hh@gmail.com">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="grade" class="form-label">권한 선택:</label>
                                                        <select class="form-select" id="grade">
                                                            <option value="all">모든 권한</option>
                                                            <option value="all">상품</option>
                                                            <option value="all">배송</option>
                                                            <option value="all">창고</option>
                                                            <option value="all">문의</option>
                                                            <option value="all">상담</option>
                                                            <option value="all">환불</option>
                                                        </select>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="department" class="form-label">부서 선택:</label>
                                                        <select class="form-select" id="department">
                                                            <option value="all">전체</option>
                                                        </select>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                                                <button type="button" class="btn btn-primary" id="submitResponseButton">저장</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <select id="detailButton" class="form-select">
                                    <option value="all">모든 권한</option>
                                    <option value="today">상품</option>
                                    <option value="regular">배송</option>
                                    <option value="reserved">창고</option>
                                    <option value="reserved">문의</option>
                                    <option value="reserved">상담</option>
                                    <option value="reserved">환불</option>
                                </select>
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
    
    <script src="/resources/js/scripts.js"></script>
     <!-- Bootstrap 및 jQuery 스크립트 로드 -->
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>

</html>