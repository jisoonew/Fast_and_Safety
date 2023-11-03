<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>정기배송</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<link href="/resources/css/navbar/routine_delivery.css" rel="stylesheet" />

<script src="/resources/js/routine_delivery.js"></script>
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
			<a class="navbar-brand ps-3" href="/navbar/storage_reserve"> <!-- 모달 메시지 -->
				창고
			</a>

			<div class="dropdown">
				<button class="nav-link dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">배송</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="/navbar/today_delivery">당일
							배송</a></li>
					<hr class="dropdown-divider" />
					<li><a class="dropdown-item" href="/navbar/routine_delivery">정기
							배송</a></li>
					<hr class="dropdown-divider" />
					<li><a class="dropdown-item" href="/navbar/reserve_delivery">예약
							배송</a></li>
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

	<form name="table" role="form" method="post"
		action="/navbar/routine_delivery">
		<br>
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3">
				<h2>정기 배송 신청</h2>
			</div>
		</div>
		<br>
		<br>

		<div class="row">
			<div class="col-2"></div>
			<div class="col-1">
				<h4>수령인</h4>
			</div>
			<div class="col-2">
				<input type="text" name="rd_name" value="${name}">
			</div>
			<div class="col-1"></div>
			<div class="col-1">
				<h4>연락처</h4>
			</div>
			<div class="col-2">
				<input type="text" oninput="hypenTel(this)" maxlength="13"
					name="rd_phone" value="${session_phone}">
			</div>
		</div>
		<br>
		<br>
		<br>

		<div class="row">
			<div class="col-2"></div>
			<div class="col-1">
				<h4>출고 물품</h4>
			</div>
			<div class="col-2">
				<select name="rd_kind_release" id="d_product">
					<option>물품선택</option>

					<c:forEach items="${kind_release}" var="kind_release">
						<option>
							<c:out value="${kind_release.kind}" />
						</option>
					</c:forEach>

				</select>
			</div>
			<div class="col-1"></div>
			<div class="col-1">
				<h4>출고 물량</h4>
			</div>
			<div class="col-2">
				<input type="text" name="rd_volume" id="rd_volume"
					onKeyUp="calculation();"> PLT
			</div>
		</div>
		<br>
		<br>

		<div class="row">
			<div class="col-2"></div>
			<div class="col-1" for="postcode">
				<h4>시작날짜</h4>
			</div>
			<div class="col-2">
				<input type="date" id="date" max="2033-06-01" min="2023-06-01"
					name="rd_start">
			</div>
			<div class="col-1"></div>
			<div class="col-1">
				<h4>배송 주기</h4>
			</div>
			<div class="col-2">
				<select name="rd_cycle" id="rd_cycle">
					<option value="">선택</option>
					<option value="everyday">매일</option>
					<option value="everyweek">매주</option>
					<option value="2weeks">2주</option>
					<option value="3weeks">3주</option>
					<option value="4weeks">4주</option>
					<option value="everymonth">매월</option>
					<option value="everymonth">2개월</option>
					<option value="everymonth">3개월</option>
					<option value="everymonth">4개월</option>
					<option value="everymonth">5개월</option>
					<option value="everymonth">6개월</option>
					<option value="everymonth">1년</option>
				</select>
			</div>
		</div>
		<br>
		<br>


		<!-- 주소 입력 -->
		<div class="row address-row">
			<div class="col-2"></div>
			<div class="col-1" for="postcode">
				<h5>주소</h5>
			</div>
			<div class="col-3">
				<input type="text" id="rd_address" name="rd_address"
					class="rd_address_input_2" value="${address}" readonly><br>
			</div>
		</div>

		<!-- 상세주소 입력 -->
		<div class="row address-row">
			<div class="col-2"></div>
			<div class="col-1" for="postcode">
				<h5>상세주소</h5>
			</div>
			<div class="col-3">
				<input type="text" id="rd_detail_address" name="rd_detail_address"
					value="${u_detail_address}" class="rd_address_input_3"><br>
			</div>
		</div>
		<br>
		<br>

		<div class="row">
			<div class="col-4"></div>
			<div class="col-1" for="postcode">
				<h5>예상 배송비</h5>
			</div>
			<div class="col-1"></div>
			<div class="col-4">
				<h5>
					<input type='text' name="rd_delivery_fee" id="rd_delivery_fee"
						size='20' style="outline: none;" readonly> <label>원</label>
				</h5>
			</div>
		</div>
		<br>
		<br>

		<div class="row">
			<div class="col-2"></div>
			<div class="col-1"></div>
			<div class="col-2">
				<button type="submit" class="d_btn">신청하기</button>
			</div>
			<div class="col-1"></div>
			<div class="col-1"></div>
			<div class="col-2">
				<button class="d_btn">취소</button>
			</div>
		</div>

		<!-- 일정표 UUID : 일정표의 범용 고유 식별자가 필요함 -->
		<input class="form-control" id="rd_id" name="rd_id" type="hidden">
	</form>

	<script type="text/javascript">
  //UUID 범용고유식별자 생성
    function uuidv4() {
    	  return ([1e7]+-1e3+-4e3+-8e3+-1e11).replace(/[018]/g, c =>
    	    (c ^ crypto.getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16)
    	  );
    	}
    	document.getElementById("rd_id").value = uuidv4();
    	console.log("rd 범용고유식별자 : " + $("#rd_id").val());
    	</script>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous">
    </script>
</body>

</html>
