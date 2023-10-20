<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/inquiry.css">

<!-- Air datepicker css -->
<script src="./datepicker/js/datepicker.js"></script>
<!-- Air datepicker js -->
<script src="./datepicker/js/datepicker.ko.js"></script>
<!-- 달력 한글 추가를 위해 커스텀 -->

<!-- 날짜 데이트피커 라이브러리 -->
<!-- 
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"
	integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css"
	integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" /> -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="resources/js/inquiry.js"></script>

</head>

<body>

	<div class="container-fluid">
		<div class="row">
			<!-- 왼쪽 고정 사이드바 -->
			<nav id="sidebar" class="col-md-3 col-lg-2 d-md-block bg-dark">
				<div class="position-sticky">
					<ul class="nav flex-column">
						<li class="nav-item"><a id="pagename">FS</a></li>
						<li class="nav-item"><a class="nav-link" href="#">대시보드</a></li>
						<li class="nav-item"><a class="nav-link" href="#">회원</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="deliveryDropdown"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 상품 </a>
							<div class="dropdown-menu" aria-labelledby="deliveryDropdown">
								<a class="dropdown-item" href="#">상품 관리</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="#">재고 현황</a>

							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="deliveryDropdown"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 배송 </a>
							<div class="dropdown-menu" aria-labelledby="deliveryDropdown">
								<a class="dropdown-item" href="#">당일배송</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="#">정기배송</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="#">예약배송</a>
								<!--배송 및 운송 현황이 있는데 이걸 안넣은 이유가 이게 구현 가능한 기능인지 모르겠어서-->
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="deliveryDropdown"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 창고 </a>
							<div class="dropdown-menu" aria-labelledby="deliveryDropdown">
								<a class="dropdown-item" href="#">창고 관리</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="#">창고 현황</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="deliveryDropdown"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 문의 </a>
							<div class="dropdown-menu" aria-labelledby="deliveryDropdown">
								<a class="dropdown-item" href="#">문의</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="#">상담</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="#">환불 문의</a>
							</div></li>
						<!-- 원래 임직원인데 화면 너무 많은거 같아서 그냥 관리자로 바꾸고 화면도 관리자들만 보여주는걸로 바꾸자-->
						<li class="nav-item"><a class="nav-link" href="#">관리자</a></li>
						<li class="nav-item"><a class="nav-link" href="#" id="logout">로그아웃</a>
						</li>
					</ul>
				</div>
			</nav>

			<!-- 메인 콘텐츠 -->
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mt-5">
				<h1>문의</h1>
				<div id="outer-div">
					<table class="table table-bordered">
						<!--   <caption>List of users</caption> -->
						<tbody id="inquiry_table">
							<tr>
								<th scope="row" id="th1">접수 문의일</th>
								<td id="td1">
									<div id="date_container">
										<input class="form-control" type="text" id="datepicker1">
									</div>
									<div id="tilde">~</div>
									<div id="date_container">
										<input class="form-control" type="text" id="datepicker2">
									</div>
								</td>
								<td id="td2">조회 조건</td>
								<td id="td3"><div id="select1">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>선택</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
									<div class="input-group" id="select2">
										<input type="text" class="form-control" placeholder="검색어 입력"
											aria-label="Recipient's username"
											aria-describedby="button-addon2">
										<button class="btn btn-outline-secondary" type="button"
											id="button-addon2">Button</button>
									</div></td>
							</tr>
							<tr>
								<th scope="row" id="th2">처리상태</th>
								<td><div id="td4">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>미답변</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div></td>
								<td id="td5">상담사</td>
								<td><div id="td6">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>상담사 검색 및 선택</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="search_btn_container">
					<button type="button" class="btn btn-outline-dark dark_btn">초기화</button>
					<button type="button" class="btn btn-outline-primary dark_search">검색</button>
				</div>

				<div id="select_container">
					<div id="select3">
						<select class="form-select" aria-label="Default select example">
							<option selected>선택</option>
							<option value="1">최신순</option>
							<option value="2">오래된 순</option>
						</select>
					</div>
					<div class="input-group" id="select4">
						<input type="text" class="form-control" placeholder="검색어 입력"
							aria-label="Recipient's username"
							aria-describedby="button-addon2">
					</div>
					<button type="button" class="btn btn-outline-primary dark_search">검색</button>
				</div>

				<div>
					<table class="table caption-top inquiry_table2_head">
						<thead>
							<tr>
								<th scope="col" style="width: 8%;">접수일</th>
								<th scope="col" style="width: 8%;">처리 상태</th>
								<th scope="col" style="width: 20%;">상품 정보</th>
								<th scope="col" style="width: 30%;">문의 내용</th>
								<th scope="col" style="width: 10%;">질문자 ID</th>
								<th scope="col" style="width: 8%;">처리일</th>
								<th scope="col" style="width: 8%;">상담사</th>
								<th scope="col" style="width: 8%;">-</th>
							</tr>
						</thead>
						<tbody id="inquiry_table2">
							<tr>
								<th scope="row">2023-10-20</th>
								<td>미답변</td>
								<td id="table2_left">무성 레이저 프린터</td>
								<td id="table2_left">무선 기능 된가고해서 주문하건데 와이파이 연결이 안됩니다.ㅜㅜ</td>
								<td>kyun****</td>
								<td>-</td>
								<td>-</td>
								<td><button type="button"
										class="btn btn-outline-primary table2_blue_btn">확인중</button></td>
							</tr>

							<tr>
								<th scope="row">2023-10-20</th>
								<td>미답변</td>
								<td id="table2_left">몬스타기어 닌자108PRO 저소음키보드 풀윤활 블루투스 기계식 커스텀
									키보드 황축 측각</td>
								<td id="table2_left">배송 기간</td>
								<td>kyun****</td>
								<td>-</td>
								<td>-</td>
								<td><button type="button"
										class="btn btn-outline-dark table2_dark_btn">문의 보기</button></td>
							</tr>

							<tr>
								<th scope="row">2023-10-20</th>
								<td>미답변</td>
								<td id="table2_left">몬스타기어 닌자108PRO 저소음키보드 풀윤활 블루투스 기계식 커스텀
									키보드 황축 측각</td>
								<td id="table2_left">배송 기간</td>
								<td>kyun****</td>
								<td>-</td>
								<td>-</td>
								<td><button type="button"
										class="btn btn-outline-dark table2_dark_btn">문의 보기</button></td>
							</tr>


							<tr>
								<th scope="row">2023-10-20</th>
								<td>미답변</td>
								<td id="table2_left">몬스타기어 닌자108PRO 저소음키보드 풀윤활 블루투스 기계식 커스텀
									키보드 황축 측각</td>
								<td id="table2_left">배송 기간</td>
								<td>kyun****</td>
								<td>-</td>
								<td>-</td>
								<td><button type="button"
										class="btn btn-outline-dark table2_dark_btn">문의 보기</button></td>
							</tr>


							<tr>
								<th scope="row">2023-10-20</th>
								<td>미답변</td>
								<td id="table2_left">몬스타기어 닌자108PRO 저소음키보드 풀윤활 블루투스 기계식 커스텀
									키보드 황축 측각</td>
								<td id="table2_left">배송 기간</td>
								<td>kyun****</td>
								<td>-</td>
								<td>-</td>
								<td><button type="button"
										class="btn btn-outline-dark table2_dark_btn">문의 보기</button></td>
							</tr>

						</tbody>
					</table>

					<div id="navigation">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>
					</div>
				</div>


				<div id="inquiry_all_container">
					<div id="inquiry_table3_container" style="margin-top: 30px;">
						<table class="table table-borderless inquiry_table3"
							style="display: flex;">
							<tbody>
								<tr>
									<th scope="row" style="width: 20%; text-align: left;">접수일</th>
									<td style="width: 25%;">2023-10-20</td>
									<th style="width: 20%;">처리일
									<td style="width: 25%;">-</td>
								</tr>
								<tr>
									<th scope="row" style="width: 20%; text-align: left;">질문자
										ID</th>
									<td style="width: 25%;">kyun****</td>
									<th style="width: 20%;">처리 상태
									<td style="width: 25%;">미답변</td>
								</tr>
								<tr>
									<th scope="row" style="width: 20%; text-align: left;">상품
										번호</th>
									<td style="width: 25%;">50405640</td>
									<th style="width: 20%;">상담사
									<td style="width: 25%;">-</td>
								</tr>
								<tr>
									<th scope="row" style="width: 10%;">문의 내용</th>
									<td colspan="3">무성 레이저 프린터 무성 레이저 프린터 무성 레이저 프린터 무성 레이저
										프린터 무성 레이저 프린터 무성 레이저 프린터 무성 레이저 프린터 무성 레이저 프린터 무성 레이저 프린터 무성
										레이저 프린터 무성 레이저 프린터 무성 레이저 프린터 무성 레이저 프린터 무성 레이저 프린터</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="inquiry_table4">
						<table class="table table-borderless">
							<tbody>
								<tr>
									<th scope="row" style="width: 10%;">답변 내용</th>
									<td colspan="3"><div class="mb-3">
											<textarea class="form-control"
												id="exampleFormControlTextarea1" rows="8"></textarea>
										</div></td>
								</tr>
							</tbody>

						</table>

						<div id="inquiry_table4_btn">
							<button type="button" class="btn btn-outline-primary">수정</button>
							<button type="button" class="btn btn-outline-primary">저장</button>
						</div>

					</div>
				</div>


			</main>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous">
    </script>
</body>

</html>