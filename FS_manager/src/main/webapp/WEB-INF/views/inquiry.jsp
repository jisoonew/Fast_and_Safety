<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link rel="stylesheet" href="/resources/css/sidebar.css">
	<link rel="stylesheet" href="/resources/css/inquiry.css">

	<!-- Air datepicker css -->
	<script src="resources/js/datepicker.js"></script>
	<!-- Air datepicker js -->
	<script src="resources/js/datepicker.ko.js"></script>
	<!-- 달력 한글 추가를 위해 커스텀 -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
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
				<h1>문의</h1>
				<div id="outer-div">
					<table class="table table-bordered">
						<!--   <caption>List of users</caption> -->
						<tbody id="inquiry_table">
							<tr>
								<th scope="row" id="th1">접수 문의일</th>
								<td id="td1">
									<div id="date_container">
										<input class="form-control form-control-sm" type="text" id="datepicker1">
									</div>
									<div id="tilde">~</div>
									<div id="date_container">
										<input class="form-control form-control-sm" type="text" id="datepicker2">
									</div>
								</td>
								<td id="td2">조회 조건</td>
								<td id="td3">
									<div id="select1">
										<select class="form-select form-select-sm" aria-label="Default select example">
											<option selected>선택</option>
											<option value="1">접수일</option>
											<option value="2">상품명</option>
											<option value="3">질문자 ID</option>
										</select>
									</div>
									<div class="input-group" id="select2">
										<input type="text" class="form-control form-control-sm" placeholder="검색어 입력"
											aria-label="Recipient's username" aria-describedby="button-addon2">
										<button class="btn btn-outline-secondary btn-sm" type="button"
											id="button-addon2">Button</button>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row" id="th2">처리상태</th>
								<td>
									<div id="td4">
										<select class="form-select form-select-sm" aria-label="Default select example">
											<option selected>미답변</option>
											<option value="1">답변 완료</option>
											<option value="2">답변 중</option>
										</select>
									</div>
								</td>
								<td id="td5">상담사</td>
								<td>
									<div id="td6">
										<select class="form-select form-select-sm" aria-label="Default select example">
											<option selected>상담사 선택</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="search_btn_container">
					<button type="button" class="btn btn-outline-dark dark_btn btn-sm">초기화</button>
					<button type="button" class="btn btn-outline-primary dark_search btn-sm">검색</button>
				</div>

				<div id="select_container">
					<div id="select3">
						<select class="form-select form-select-sm" aria-label="Default select example">
							<option selected>선택</option>
							<option value="1">최신순</option>
							<option value="2">오래된 순</option>
						</select>
					</div>
					<div class="input-group input-group-sm" id="select4">
						<input type="text" class="form-control" placeholder="검색어 입력" aria-label="Recipient's username"
							aria-describedby="button-addon2">
					</div>
					<button type="button" class="btn btn-outline-primary dark_search btn-sm">검색</button>
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
								<td><button type="button" class="btn btn-outline-primary table2_blue_btn"
										id="table2_blue_btn">확인중</button></td>
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
								<td><button type="button" class="btn btn-outline-dark table2_dark_btn">문의 보기</button>
								</td>
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
								<td><button type="button" class="btn btn-outline-dark table2_dark_btn">문의 보기</button>
								</td>
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
								<td><button type="button" class="btn btn-outline-dark table2_dark_btn">문의 보기</button>
								</td>
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
								<td><button type="button" class="btn btn-outline-dark table2_dark_btn">문의 보기</button>
								</td>
							</tr>

						</tbody>
					</table>

					<div id="navigation">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span
											aria-hidden="true">&laquo;</span>
									</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span
											aria-hidden="true">&raquo;</span>
									</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</main>
		</div>
	</div>



	<!-- 모달 HTML -->
	<div class="modal fade" id="inquiryModal" tabindex="-1" aria-labelledby="memoModalLabel" aria-hidden="true"
		data-bs-container="#tab_container" data-bs-placement="bottom">
		<div class="modal-dialog modal-lg">
			<!-- Added the 'modal-lg' class to increase width -->
			<div class="modal-content" id="modal_title">
				<div class="modal-body" id="modal_content">
					<div id="inquiry_all_container">
						<table class="table table-borderless" style="margin-bottom: 0;">
							<tbody>
								<tr>
									<th scope="row" style="width: 20%; text-align: left;">접수일</th>
									<td style="width: 30%;">2023-10-20</td>
									<th style="width: 20%;">처리일</th>
									<td style="width: 30%;">-</td>
								</tr>
								<tr>
									<th scope="row" style="width: 20%; text-align: left;">질문자 ID</th>
									<td style="width: 30%;">kyun****</td>
									<th style="width: 20%;">처리 상태</th>
									<td style="width: 30%;">미답변</td>
								</tr>
								<tr>
									<th scope="row" style="width: 20%; text-align: left;">상품 번호</th>
									<td style="width: 30%;">50405640</td>
									<th style="width: 20%;">상담사</th>
									<td style="width: 30%;">-</td>
								</tr>
								<tr>
									<th scope="row" style="width: 20%; text-align: left;">문의 내용</th>
									<td colspan="3" style="width: 80%;">무성 레이저 프린터 무성 레이저 프린터 무성 레이저 프린터 무성 레이저 프린터 무성
										레이저 프린터 무성 레이저 프린터 무성 레이저 프린터 무성 레이저 프린터 무성 레이저 프린터 무성 레이저 프린터 무성 레이저 프린터 무성 레이저
										프린터</td>
								</tr>
								<tr>
									<th scope="row" style="width: 20%; text-align: left;">답변 내용</th>
									<td colspan="3" style="width: 80%;">
										<div class="mb-3">
											<textarea class="form-control" id="exampleFormControlTextarea1"
												rows="8"></textarea>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div id="inquiry_table4_btn" style="display: flex; justify-content: flex-end; margin: 20px;">
					<button type="button" class="btn btn-outline-primary" style="margin-right: 10px;">수정</button>
					<button type="button" class="btn btn-outline-primary">저장</button>
				</div>
			</div>
		</div>
	</div>



	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
	</script>
</body>

</html>