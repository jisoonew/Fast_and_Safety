<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <script src="/resources/js/storage.js"></script>
</head>

<body>

    <div class="container-fluid">
<br>
            <!-- 메인 콘텐츠 -->

                <div class="col-md-12">
                    <div class="text-center">
                        <div class="row">
                            <div class="col-md-2" style="text-align: left;">
                                <h3>창고 현황</h3>
                            </div>
                            <div class="col-md-2">
                                <p class="text-primary fw-bold" style="margin-top: 7px;">창고 누적 금액: 50,000원</p>
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
                            <th>창고 번호</th>
                            <th>물품명</th>
                            <th>보유 물량</th>
                            <th>물품 종류</th>
                            <th>컨테이너</th>
                            <th>등록일</th>
                            <th>삭제</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${SR_data}" var="sr_data" varStatus="loop">
                    
                        <tr>
                            <td><c:out value="${loop.index+1}" /></td>
                            <td>12354</td>
                            <td><c:out value="${sr_data.sr_pro_name}" /></td>
                            <td><c:out value="${sr_data.sr_volume}" /></td>
                            <th><c:out value="${sr_data.sr_category}" /></th>
                            <th><c:out value="${sr_data.sr_category}" /></th>
                            <td><c:out value="${sr_data.sr_start}" /></td>
                            <td><button class="btn btn-primary btn-sm <c:out value="${sr_data.sr_id}" />" id="deleteButton">삭제</button></td>
                        </tr>
                        <!-- 이곳에 추가 -->
                    
                    </c:forEach>
                    </tbody>
                </table>
                <div class="row mt-12 py-3"> <!-- 여기에 py-3 클래스 추가 -->
                    <div class="col-md-12 text-end">
                        <button class="btn btn-primary" id="addButton">추가</button>
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
        </div>

     <!-- Bootstrap 및 jQuery 스크립트 로드 -->
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>

</html>