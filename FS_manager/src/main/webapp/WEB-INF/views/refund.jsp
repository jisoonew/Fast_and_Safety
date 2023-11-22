<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link rel="stylesheet" href="/resources/css/refund.css">
	<link rel="stylesheet" href="/resources/css/sidebar.css">

	<!-- Air datepicker css -->
	<script src="./datepicker/js/datepicker.js"></script>
	<!-- Air datepicker js -->
	<script src="./datepicker/js/datepicker.ko.js"></script>
	<!-- 달력 한글 추가를 위해 커스텀 -->

	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<script src="resources/js/refund.js"></script>

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
				<h1>환불</h1>
				<div id="outer-div">
					<table class="table table-bordered">
						<!--   <caption>List of users</caption> -->
						<tbody id="inquiry_table">
							<tr>
								<th scope="row" id="th1">업체</th>
								<td id="td1" colspan="6">
									<div id="select1">
										<select class="form-select form-select-sm" aria-label="Default select example">
											<option selected>선택</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
									<div class="input-group" id="select2">
										<input type="text" class="form-control form-control-sm" placeholder="검색어 입력"
											aria-label="Recipient's username" aria-describedby="button-addon2">
										<button class="btn btn-outline-secondary btn-sm" type="button"
											id="button-addon2">Button</button>
									</div>
								</td>
							<tr>


								<th scope="row" id="th2">기간</th>
								<td colspan="6">
									<div id="td4" class="d-flex align-items-center">
										<select class="form-select select_table form-select-sm"
											aria-label="Default select example">
											<option selected>주문번호</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
									<div class="btn-group d-flex btn-group-sm" role="group" id="radio_table"
										aria-label="Basic radio toggle button group">

										<input type="radio" class="btn-check btn-check-sm" name="btnradio"
											id="btnradio1" autocomplete="off" checked> <label
											class="btn btn-outline-primary btn-check-sm"" for=" btnradio1">오늘</label>
										<input type="radio" class="btn-check" name="btnradio" id="btnradio2"
											autocomplete="off"> <label
											class="btn btn-outline-primary btn-check-sm"" for=" btnradio2">어제</label>
										<input type="radio" class="btn-check" name="btnradio" id="btnradio3"
											autocomplete="off"> <label
											class="btn btn-outline-primary btn-check-sm"" for=" btnradio3">7일</label>
										<input type="radio" class="btn-check" name="btnradio" id="btnradio4"
											autocomplete="off"> <label
											class="btn btn-outline-primary btn-check-sm"" for=" btnradio4">15일</label>
										<input type="radio" class="btn-check" name="btnradio" id="btnradio5"
											autocomplete="off"> <label
											class="btn btn-outline-primary btn-check-sm"" for=" btnradio5">1개월</label>
										<input type="radio" class="btn-check" name="btnradio" id="btnradio6"
											autocomplete="off"> <label
											class="btn btn-outline-primary btn-check-sm"" for=" btnradio6">3개월</label>
										<input type="radio" class="btn-check" name="btnradio" id="btnradio7"
											autocomplete="off"> <label
											class="btn btn-outline-primary btn-check-sm"" for=" btnradio7">6개월</label>

									</div>

									<div id="date_container">
										<input class="form-control form-control-sm" type="text" id="datepicker1">
									</div>
									<div id="tilde">~</div>
									<div id="date_container">
										<input class="form-control form-control-sm" type="text" id="datepicker2">
									</div>

									<div>
										<button type="button" class="btn btn-outline-primary period_btn btn-sm">기간
											설정</button>
									</div>
								</td>
							</tr>


							<tr>
								<th scope="row" id="th2">주문 상태</th>
								<td>
									<div class="form-check form-check-inline form-check-sm" id="check_box">
										<input class="form-check-input form-check-sm" type="checkbox"
											id="inlineCheckbox1" value="option1"> <label
											class="form-check-label form-check-sm" for="inlineCheckbox1">전체</label>
									</div>
									<div class="form-check form-check-inline form-check-sm">
										<input class="form-check-input form-check-sm" type="checkbox"
											id="inlineCheckbox2" value="option2"> <label
											class="form-check-label form-check-sm" for="inlineCheckbox2">환불전</label>
									</div>
									<div class="form-check form-check-inline form-check-sm">
										<input class="form-check-input form-check-sm" type="checkbox"
											id="inlineCheckbox3" value="option3"> <label
											class="form-check-label form-check-sm" for="inlineCheckbox3">환불완료</label>
									</div>
									<div class="form-check form-check-inline form-check-sm">
										<input class="form-check-input form-check-sm" type="checkbox"
											id="inlineCheckbox3" value="option3"> <label
											class="form-check-label form-check-sm" for="inlineCheckbox3">환불보류</label>
									</div>
								</td>


								<th scope="row">은행</th>
								<td class="d-flex align-items-center">
									<div id="desired_delivery" class="d-flex align-items-center">
										<select class="form-select select_table form-select-sm"
											aria-label="Default select example">
											<option selected>은행 선택</option>
											<option value="1">KDB산업은행</option>
											<option value="2">IBK기업은행</option>
											<option value="3">NH농협은행</option>
											<option value="3">우리은행</option>
											<option value="3">SC제일은행</option>
											<option value="3">KEB하나은행</option>
											<option value="3">신한은행</option>
											<option value="3">KB국민은행</option>
											<option value="3">BNK경남은행</option>
											<option value="3">BNK부산은행</option>
											<option value="3">광주은행</option>
											<option value="3">전북은행</option>
											<option value="3">대구은행</option>
											<option value="3">제주은행</option>
											<option value="3">K뱅크</option>
											<option value="3">카카오뱅크</option>
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


				<div id="tab_container">
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item" role="presentation">
							<button class="nav-link active" id="home-tab" data-bs-toggle="tab"
								data-bs-target="#1-tab-pane" type="button" role="tab" aria-controls="home-tab-pane"
								aria-selected="true">전체</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#2-tab-pane"
								type="button" role="tab" aria-controls="profile-tab-pane"
								aria-selected="false">환불전</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#3-tab-pane"
								type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">환불
								완료</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#4-tab-pane"
								type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">환불
								보류</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#5-tab-pane"
								type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">환불
								철회</button>
						</li>
					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="1-tab-pane" role="tabpanel"
							aria-labelledby="home-tab" tabindex="0">
							<div id="outer-div">
								<table class="table table-bordered">
									<!--   <caption>List of users</caption> -->
									<tbody id="inquiry_table">
										<tr>
											<td>
												<div class="form-check" id="checkbox">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault">
												</div>
											</td>
											<td>환불접수일<br>(환불완료일)
											</td>
											<td>주문번호/<br>환불번호
											</td>
											<td>업체명<br>[주문자]
											</td>
											<td>총 수량</td>
											<td>총환불액</td>
											<td>실환불액<br>(예치금)
											</td>
											<td>결제수단</td>
											<td>환불수단</td>
											<td>처리상태</td>
											<td>환불처리</td>
											<td>메모</td>
										</tr>


										<tr>
											<td rowspan="2">
												<div class="form-check" id="checkbox">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault">
												</div>
											</td>
											<td rowspan="2">2023-10-20<br>(2023-10-25)</td>
											<td rowspan="2">45041231848/<br>45421254
											</td>
											<td rowspan="2">경민대<br>[박지수]
											</td>
											<td>1</td>
											<td>10000</td>
											<td>10000(0)</td>
											<td>무통장</td>
											<td>무통장</td>
											<td>환불전</td>
											<td><button type="button" class="btn btn-dark btn-sm"
													style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;">처리</button>
											</td>
											<td><button type="button" class="btn btn-outline-secondary btn-sm"
													style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
													data-bs-backdrop="static" data-bs-keyboard="false"
													id="memo_btn1">memo</button>
												<br>
										</tr>

										<tr>
											<td colspan="8" id="Account_Inform">환불계좌정보 * 환불은행 : 신한은행
												| 환불 계좌 : 1234567855454912 | 예금주 : 경민대[박지수]</td>
										</tr>


										<tr>
											<td rowspan="2">
												<div class="form-check" id="checkbox">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault">
												</div>
											</td>
											<td rowspan="2">2023-10-21<br>(2023-10-25)</td>
											<td rowspan="2">45041231848/<br>45421254
											</td>
											<td rowspan="2">경민대<br>[박경민]
											</td>
											<td>1</td>
											<td>21000</td>
											<td>21000(0)</td>
											<td>무통장</td>
											<td>무통장</td>
											<td>환불전</td>
											<td><button type="button" class="btn btn-dark btn-sm"
													style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;">처리</button>
											</td>
											<td><button type="button" class="btn btn-outline-secondary btn-sm"
													style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
													data-bs-backdrop="static" data-bs-keyboard="false"
													id="memo_btn2">memo</button>
												<br>
										</tr>

										<tr>
											<td colspan="8" id="Account_Inform">환불계좌정보 * 환불은행 : 국민은행
												| 환불 계좌 : 145415215648415 | 예금주 : 경민대[박경민]</td>
										</tr>

										<tr>
											<td colspan="12" id="Account_Inform"><button type="button"
													class="btn btn-outline-dark btn-sm"
													style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
													data-bs-backdrop="static" data-bs-keyboard="false"
													id="Refund_completed_btn">환불 완료</button></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="tab-pane fade" id="2-tab-pane" role="tabpanel" aria-labelledby="profile-tab"
							tabindex="0">환불전</div>
						<div class="tab-pane fade" id="3-tab-pane" role="tabpanel" aria-labelledby="contact-tab"
							tabindex="0">환불완료</div>
						<div class="tab-pane fade" id="4-tab-pane" role="tabpanel" aria-labelledby="disabled-tab"
							tabindex="0">환불보류</div>
						<div class="tab-pane fade" id="5-tab-pane" role="tabpanel" aria-labelledby="disabled-tab"
							tabindex="0">환불철회</div>
					</div>
				</div>
			</main>
		</div>
	</div>

	<!-- 모달 HTML -->
	<div class="modal fade" id="memoModal" tabindex="-1" aria-labelledby="memoModalLabel" aria-hidden="true"
		data-bs-container="#tab_container" data-bs-placement="bottom">
		<div class="modal-dialog">
			<div class="modal-content" id="modal_title">

				<div class="modal-body" id="modal_content">
					<div>구매자 메시지</div>
					<div>경비실에 맡겨주세요</div>

					<div id="modal_title">관리자 메모</div>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="1-tab-pane" role="tabpanel"
							aria-labelledby="home-tab" tabindex="0">
							<div id="outer-div">
								<table class="table table-bordered" id="memo_table">
									<!--   <caption>List of users</caption> -->
									<tbody id="inquiry_table">
										<tr>
											<td>작성일</td>
											<td>작성자</td>
											<td>중요</td>
											<td>상품명</td>
											<td>내용</td>
										</tr>


										<tr>
											<td>2023-10-20</td>
											<td>박지수</td>
											<td>중요</td>
											<td>-</td>
											<td>해당 주문건 빠른 배송 희망</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
	</script>
</body>

</html>