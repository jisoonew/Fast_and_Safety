<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

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
<br>
    <div class="container-fluid">
  
            <!-- 메인 콘텐츠 -->

                <div class="col-md-12">
                    <div class="text-center">
                        <div class="row">
                            <div class="col-md-2" style="text-align: left;">
                                <h3>상품 현황</h3>
                            </div>
                            <div class="col-md-2">
                                <p class="text-primary fw-bold" style="margin-top: 7px;">실온 상품: 10</p>
                            </div>
                            <div class="col-md-2">
                                <p class="text-info fw-bold" style="margin-top: 7px;">냉장 상품: 5</p>
                            </div>
                            <div class="col-md-2">
                                <p class="text-danger fw-bold" style="margin-top: 7px;">냉동 상품: 3</p>
                            </div>
                            <div class="col-md-2">
                                <p class="text-success fw-bold" style="margin-top: 7px;">전체 상품: 18</p>
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
                                <option value="all">물량 많은 순</option>
                                <option value="all">물량 적은 순</option>
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
                <form method="get" action="/member_details">
				<c:forEach items="${userDate}" var="userDate" varStatus="loop">
                <table class="table table-bordered table-hover text-center">
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>송장 번호</th>
                            <th>물품명</th>
                            <th>물량</th>
                            <th>물품 종류</th>
                            <th>컨테이너</th>
                            <th>컨테이너 번호</th>
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
                            <td>2023-10-29</td>
                            <td>X</td>
                        </tr>
                        <!-- 이곳에 추가 -->
                    </tbody>
                </table>
</c:forEach>
</form>
                
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

        </div>

     <!-- Bootstrap 및 jQuery 스크립트 로드 -->
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>

</html>