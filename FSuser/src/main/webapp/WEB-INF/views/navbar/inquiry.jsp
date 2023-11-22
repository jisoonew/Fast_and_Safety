<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>문의</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="/resources/css/navbar/inquiry.css" rel="stylesheet" />
</head>

<body class="sb-nav-fixed">
    <nav class="navbar sb-topnav navbar-expand">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-5" href="/main_login">
            <h1>FS</h1>
        </a>
        <!-- Company Introduction Dropdown -->
        <ul class="navbar-nav me-auto ">
            <a class="navbar-brand ps-3" href="/navbar/introduce">
                회사 소개
            </a>

            <!-- Services Dropdown -->
            <div class="dropdown">
                <button class="nav-link dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    서비스
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/navbar/product_storage">보관품목 및 유의사항</a></li>
                    <hr class="dropdown-divider" />
                    <li><a class="dropdown-item" href="/navbar/service_step">입출고 절차</a></li>
                </ul>
            </div>

            <!-- Warehouses Dropdown -->
            <a class="navbar-brand ps-3" href="/navbar/storage_reserve">
                <!-- 모달 메시지 -->
                창고
            </a>

            <div class="dropdown">
                <button class="nav-link dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    배송
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/navbar/today_delivery">당일 배송</a></li>
                    <hr class="dropdown-divider" />
                    <li><a class="dropdown-item" href="/navbar/routine_delivery">정기 배송</a></li>
                    <hr class="dropdown-divider" />
                    <li><a class="dropdown-item" href="/navbar/reserve_delivery">예약 배송</a></li>
                </ul>
            </div>

            <!-- ask Dropdown -->
            <a class="navbar-brand ps-3" href="/navbar/inquiry">
                문의
            </a>
        </ul>

        <!-- Navbar Search-->
        <!-- <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
            </div>
        </form> -->
        <!-- Navbar-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="mypage_today_delivery" role="button"
                    data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="/mypage/today_delivery">My Page</a></li>
                    <li>
                        <hr class="dropdown-divider" />
                    </li>
                    <li><a class="dropdown-item" href="/user/logout.do">Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>

<form class="pt-5" role="form" method="GET" action="/navbar/inquiry">
    <div class="container text-center align-items-center p-5 mt-5">
        <h2>문의</h2>
                    
            <select id="inquiry_select" class="form-select" aria-label="Default select example">
  <option selected>유형</option>
  <option>배송</option>
  <option>재고</option>
  <option>회원</option>
  <option>기타</option>
</select>
            
            <div>
                    <input class="form-control me-2" id="keyword" name="keyword" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" id="select_btn" type="submit">Search</button>

            </div>


        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>유형</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody>
            
           

<%@ page import="java.text.SimpleDateFormat" %>
<c:forEach items="${user_qa_print}" var="user_qa_print" varStatus="status">
    <tr>
        <td>
            <!-- 테이블 순서 -->
            ${total - status.count + 1}
        </td>
        <td>
            <!-- 유형 출력 -->
            <c:out value="${user_qa_print.q_variety}" />
        </td>
        <td>
            <!-- 제목 출력 -->
            <a href="/navbar/view?Q_id=${user_qa_print.q_id}">
                <c:out value="${user_qa_print.q_title}" />
            </a>
        </td>
        <td>
            <!-- 작성자 출력 -->
            <c:out value="${user_qa_print.u_name}" />
        </td>
        <td>
            <!-- 작성일 출력 -->
            <c:set var="inputDate" value="${user_qa_print.q_ymd}" />
            <%
                SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
                java.util.Date date = inputFormat.parse((String) pageContext.getAttribute("inputDate"));
                String outputDate = outputFormat.format(date);
                out.print(outputDate);
            %>
        </td>
    </tr>
</c:forEach>
            </tbody>
            
            

        </table>

    	<div class="row justify-content-end text-end align-content-end align-items-end">
        	<div class="col">
            	<a href="/navbar/write_inquiry" class="btn btn-primary mt-3 justify-content-end text-end align-content-end align-items-end">문의하기</a>
        	</div>
    	</div>
    	
    	            <ul class="pagination justify-content-center p-3">
    <c:if test="${currentPage != 1}">
        <li><a href="/navbar/inquiry?page=${currentPage - 1}">«</a></li>
    </c:if>
    <c:forEach var="i" begin="1" end="${totalPages}">
        <c:choose>
            <c:when test="${currentPage eq i}">
                <li class="active"><a href="/navbar/inquiry?page=${i}">${i}</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="/navbar/inquiry?page=${i}">${i}</a></li>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:if test="${currentPage lt totalPages}">
        <li><a href="/navbar/inquiry?num=${currentPage + 1}">»</a></li>
    </c:if>
</ul>
    </div>
    </form>

    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>

</html>