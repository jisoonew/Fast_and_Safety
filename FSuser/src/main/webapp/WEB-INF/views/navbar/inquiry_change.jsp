<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>문의글 수정</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<link href="/resources/css/navbar/write_inquiry.css" rel="stylesheet" />
</head>

<body class="sb-nav-fixed">
	<nav class="navbar sb-topnav navbar-expand">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-5" href="/main_login">
			<h1>FS</h1>
		</a>
		<!-- Company Introduction Dropdown -->
		<ul class="navbar-nav me-auto ">
			<a class="navbar-brand ps-3" href="/navbar/introduce"> 회사 소개 </a>

			<!-- Services Dropdown -->
			<div class="dropdown">
				<button class="nav-link dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">서비스</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="/navbar/product_storage">보관품목
							및 유의사항</a></li>
					<hr class="dropdown-divider" />
					<li><a class="dropdown-item" href="/navbar/service_step">입출고
							절차</a></li>
				</ul>
			</div>

			<!-- Warehouses Dropdown -->
			<a class="navbar-brand ps-3" href=""> <!-- 모달 메시지 --> 창고
			</a>

			<div class="dropdown">
				<button class="nav-link dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">배송</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="today_delivery">당일 배송</a></li>
					<hr class="dropdown-divider" />
					<li><a class="dropdown-item" href="routine_delivery">정기 배송</a></li>
					<hr class="dropdown-divider" />
					<li><a class="dropdown-item" href="reserve_delivery">예약 배송</a></li>
				</ul>
			</div>

			<!-- ask Dropdown -->
			<a class="navbar-brand ps-3" href="/navbar/inquiry"> 문의 </a>
		</ul>
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<c:if test="${ user != null }">
				<div class="login_success_area">
					<span style="color: black; font-size: 20px;">${name} 님</span>
				</div>
			</c:if>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown"
				href="mypage_today_delivery" role="button" data-bs-toggle="dropdown"
				aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="/mypage/today_delivery">My
							Page</a></li>
					<li>
						<hr class="dropdown-divider" />
					</li>
					<li><a class="dropdown-item" href="/user/logout.do">Logout</a></li>
				</ul></li>
		</ul>
	</nav>

	<div class="container p-5">
		<h1 class="text-center mt-5">문의글 수정</h1>
		<form name="table" class="pt-5" role="form" method="post" action="/navbar/inquiry_change">
			<div class="d-grid gap-5">
				<div class="form-group">
					<label for="subject">제목</label> <input type="text"
						class="form-control mt-2" id="Q_title" name="Q_title"
						placeholder="제목을 입력하세요" value="<c:out value="${view.q_title}"/>">
				</div>
				
				<div class="form-group">
				<label for="subject">유형</label>
<select class="form-select" aria-label="Default select example" id="Q_variety" name="Q_variety">
  <option selected><c:out value="${view.q_variety}"/></option>
            <option value="배송">배송</option>
            <option value="재고">재고</option>
            <option value="회원">회원</option>
            <option value="기타">기타</option>
</select>
</div>
				<div class="form-group">
					<label for="message">문의 내용</label>
					<textarea class="form-control mt-2" id="Q_content" name="Q_content"
						rows="20" placeholder="문의 내용을 입력하세요"><c:out value="${view.q_content}"/></textarea>
				</div>
			</div>
			<button type="submit" class="btn btn-primary mt-3">문의하기</button>


			<!-- 일정표 UUID : 일정표의 범용 고유 식별자가 필요함 -->
			<input class="form-control" id="Q_id" name="Q_id" type="hidden">
		</form>
	</div>

	<!-- jQuery 라이브러리 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
        // 클릭 이벤트 핸들러 등록
        $(document).ready(function () {
            $(".dropdown-menu a.dropdown-item").click(function () {
                var selectedText = $(this).text();
                $(this).closest(".dropdown").find(".dropdown-toggle").text(selectedText);
            });
        });
        
        //UUID 범용고유식별자 생성
        function uuidv4() {
        	  return ([1e7]+-1e3+-4e3+-8e3+-1e11).replace(/[018]/g, c =>
        	    (c ^ crypto.getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16)
        	  );
        	}
        	document.getElementById('Q_id').value = uuidv4();
        	console.log("범용고유식별자 : " + $('#Q_id').val());

    </script>

	<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous">
    </script>
</body>

</html>