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
                <h3>회원 상세 정보</h3>
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom"></div>
                <!-- <h5>기본 정보</h5> -->
                <form method="get" action="/member_details">
                
                <div class="col-md-9 ms-sm-auto text-center">
                
				<c:forEach items="${userDate}" var="userDate" varStatus="loop">
                    <div class="row mt-2 py-1"> <!-- 여기에 py-3 클래스 추가 -->
                        <div class="col-md-2">
                            <strong>아이디 :</strong>
                        </div>
                        <div class="col-md-2" id="u_id">
                            <span class="u_id"><c:out value="${userDate.u_id}" /></span>
                        </div>
                        <div class="col-md-2">
                            <strong>등급 :</strong>
                        </div>
                        <div class="col-md-2">
                            <span class="editable" contenteditable="true">회원</span>
                        </div>
                    </div>
                    <div class="row mt-2 py-3"> <!-- 여기에 py-3 클래스 추가 -->
                        <div class="col-md-2">
                            <strong>대표자명 :</strong>
                        </div>
                        <div class="col-md-2">
                            <span class="u_name" contenteditable="true"><c:out value="${userDate.u_name}" /></span>
                        </div>
                        <div class="col-md-2">
                            <strong>회사명 :</strong>
                        </div>
                        <div class="col-md-2">
                            <span class="u_company_name" contenteditable="true"><c:out value="${userDate.u_company_name}" /></span>
                        </div>
                    </div>
                    <div class="row mt-2 py-3"> <!-- 여기에 py-3 클래스 추가 -->
                        <div class="col-md-2">
                            <strong>전화번호 :</strong>
                        </div>
                        <div class="col-md-2">
                            <span class="u_phone" contenteditable="true"><c:out value="${userDate.u_phone}" /></span>
                        </div>
                        <div class="col-md-2">
                            <strong>이메일 :</strong>
                        </div>
                        <div class="col-md-2">
                            <span class="u_email" contenteditable="true"><c:out value="${userDate.u_email}" /></span>
                        </div>
                    </div>
                    <div class="row mt-2 py-3"> <!-- 여기에 py-3 클래스 추가 -->
                        <div class="col-md-2">
                            <strong>주소 :</strong>
                        </div>
                        <div class="col-md-2">
                            <span class="u_company_address" contenteditable="true"><c:out value="${userDate.u_company_address}" /></span><br>
                            <span class="u_detail_address" contenteditable="true"><c:out value="${userDate.u_detail_address}" /></span>
                        </div>
                        <div class="col-md-2">
                            <strong>가입일 :</strong>
                        </div>
                        <div class="col-md-2">
                            <c:out value="${userDate.u_join_date}" />
                        </div>
                    </div>
                    </c:forEach>
                    
                    <div class="row mt-2 py-3"> <!-- 여기에 py-3 클래스 추가 -->
                        <div class="col-md-8 text-end">
                            <button class="btn btn-primary" id="editButton">수정</button>
                            <button class="btn btn-secondary" id="deleteButton">삭제</button>
                        </div>
                    </div>
                </div>
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom"></div>
                
                <jsp:include page="/WEB-INF/views/product_status.jsp" />
                
                                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom"></div>
                
                <jsp:include page="/WEB-INF/views/delivery_status.jsp" />
                
                                                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom"></div>
                
                <jsp:include page="/WEB-INF/views/storage_status.jsp" />
                </form>
            </main>
        </div>
    </div>

     <!-- Bootstrap 및 jQuery 스크립트 로드 -->
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>
<script src="/resources/js/member.js"></script>
</html>