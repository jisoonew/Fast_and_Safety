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
<link rel="stylesheet" href="/resources/css/user.css">

<!-- Air datepicker css -->
<script src="./datepicker/js/datepicker.js"></script>
<!-- Air datepicker js -->
<script src="./datepicker/js/datepicker.ko.js"></script>
<!-- 달력 한글 추가를 위해 커스텀 -->

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="resources/js/user.js"></script>

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
				<h1>관리자</h1>
				<div id="outer-div">
					<table class="table table-bordered">
						<!--   <caption>List of users</caption> -->
						<tbody id="inquiry_table">
							<tr>
								<th scope="row" id="th1">권한선택</th>
								<td id="td1">
									<div id="select1">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>권한전체보기</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</td>

								<th scope="row" id="th1">부서선택</th>
								<td id="td1">
									<div id="select1">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>부서전체보기</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</td>

								<th scope="row" id="th1">대표유무</th>
								<td id="td1">
									<div id="select1">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>전체</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</td>
							<tr>
							<tr>
								<th scope="row" id="th1">사용유무</th>
								<td id="td1">
									<div id="select1">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>사용</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</td>

								<th scope="row" id="th1">검색</th>
								<td id="td1" colspan="4">

									<div id="select1">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>아이디</option>
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
											id="button-addon2">검색</button>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>


				<div id="search_btn_container">
					<button type="button" class="btn btn-outline-dark dark_btn">초기화</button>
					<button type="button" class="btn btn-outline-primary dark_search">검색</button>
				</div>



				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="1-tab-pane"
						role="tabpanel" aria-labelledby="home-tab" tabindex="0">
						<div id="outer-div">
							<table class="table table-bordered">
								<!--   <caption>List of users</caption> -->
								<tbody id="inquiry_table">
									<tr>
										<td>NO</td>
										<td>등급</td>
										<td>아이디</td>
										<td>비밀번호</td>
										<td>과</td>
										<td>이름</td>
										<td>이메일</td>
										<td>대표</td>
										<td>사용</td>
										<td>수정/삭제</td>
										<td>권한</td>
									</tr>

									<tr>
										<td>1</td>
										<td>최고관리자</td>
										<td>ktungmin123</td>
										<td>***********</td>
										<td>경영기획실</td>
										<td>박지수</td>
										<td>kyungmin123@naver.com</td>
										<td><div class="form-check" id="checkbox">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckDefault">
											</div></td>
										<td><div class="form-check" id="checkbox">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckDefault">
											</div></td>
										<td><button type="button" class="btn btn-dark btn-sm"
												style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;">수정</button>
											<button type="button"
												class="btn btn-outline-secondary btn-sm"
												style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
												data-bs-backdrop="static" data-bs-keyboard="false"
												id="memo_btn1">삭제</button></td>
										<td><div>
												<select class="form-select form-select-sm"
													aria-label="Default select example">
													<option selected>권한 선택</option>
													<option value="1">모든 권한</option>
													<option value="2">Two</option>
													<option value="3">Three</option>
												</select>
											</div></td>
									</tr>


									<tr>
										<td>2</td>
										<td>관리자</td>
										<td>ktungmin123</td>
										<td>***********</td>
										<td>검사역실</td>
										<td>박지수</td>
										<td>kyungmin00@naver.com</td>
										<td><div class="form-check" id="checkbox">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckDefault">
											</div></td>
										<td><div class="form-check" id="checkbox">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckDefault">
											</div></td>
										<td><button type="button" class="btn btn-dark btn-sm"
												style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;">수정</button>
											<button type="button"
												class="btn btn-outline-secondary btn-sm"
												style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
												data-bs-backdrop="static" data-bs-keyboard="false"
												id="memo_btn1">삭제</button></td>
										<td><div id="select1">모든 권한</div></td>
									</tr>

									<tr>
										<td colspan="11" id="Account_Inform"><button
												type="button" class="btn btn-outline-dark btn-sm"
												style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
												data-bs-backdrop="static" data-bs-keyboard="false"
												id="Refund_completed_btn1">관리자 등록</button></td>
									</tr>
								</tbody>
							</table>
						</div>
						<nav aria-label="Page navigation example" id="Page_btn">
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

						<table class="table table-bordered manager_container">
							<tbody>
								<tr>
									<th scope="row">아이디</th>
									<th id="manager_content"><div
											class="input-group form-control-sm manager_id_text">
											<input type="text" class="form-control form-control-sm"
												placeholder="아이디" aria-label="Recipient's username"
												aria-describedby="button-addon2">
											<button class="btn btn-outline-secondary" type="button"
												>중복 검사</button>
										</div></th>
										
										<th scope="row">권한선택</th>
									<th>
										<div> 
											<select class="form-select form-select-sm select_manager"
												aria-label="Default select example">
												<option selected>권한을 선택하세요</option>
												<option value="1">모든 권한</option>
												<option value="2">Two</option>
												<option value="3">Three</option>
											</select>
										</div>
									</th>
								</tr>

								<tr>
									<th scope="row">비밀번호</th>
									<th>
										<div class="col-sm-6">
											<input type="password" class="form-control form-control-sm"
												id="inputPassword">
										</div>
									</th>
									
									<th scope="row">부서선택</th>
									<th>
										<div>
											<select class="form-select form-select-sm select_manager"
												aria-label="Default select example">
												<option selected>부서전체보기</option>
												<option value="1">모든 권한</option>
												<option value="2">Two</option>
												<option value="3">Three</option>
											</select>
										</div>
									</th>
								</tr>
								
								<tr>
									<th scope="row">비밀번호 확인</th>
									<th>
										<div class="col-sm-6">
											<input type="password" class="form-control">
										</div>
									</th>
									
									<th scope="row">대표유무</th>
									<th>
										<div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="inlineRadioOptions" id="inlineRadio1" value="option1">
												<label class="form-check-label" for="inlineRadio1">사용</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="inlineRadioOptions" id="inlineRadio2" value="option2">
												<label class="form-check-label" for="inlineRadio2">미사용</label>
											</div>
										</div>
									</th>
								</tr>

								<tr>
									<th scope="row">이름</th>
									<th>
										<div class="col-sm-6">
											<input class="form-control form-control-sm">
										</div>
									</th>
									
									<th scope="row">사용유무</th>
									<th>
										<div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="inlineRadioOptions" id="inlineRadio1" value="option1">
												<label class="form-check-label" for="inlineRadio1">사용</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="inlineRadioOptions" id="inlineRadio2" value="option2">
												<label class="form-check-label" for="inlineRadio2">미사용</label>
											</div>
										</div>
									</th>
								</tr>

								<tr>
									<td colspan="11" id="Account_Inform"><button type="button"
											class="btn btn-outline-dark btn-sm"
											style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
											data-bs-backdrop="static" data-bs-keyboard="false"
											id="Refund_completed_btn2">관리자 등록</button></td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>

<h1>물류인력</h1>

				<div id="select_container">
					<div id="select3">
						<select class="form-select" aria-label="Default select example">
							<option selected>정렬</option>
							<option value="1">상담인력</option>
							<option value="2">문의인력</option>
							<option value="1">배송인력</option>
							<option value="2">창고인력</option>
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
								<th scope="col" style="width: 10%;">번호</th>
								<th scope="col" style="width: 10%;">이름</th>
								<th scope="col" style="width: 20%;">이메일</th>
								<th scope="col" style="width: 30%;">전화번호</th>
								<th scope="col" style="width: 30%;">부서</th>
							</tr>
						</thead>
						<tbody id="inquiry_table2">
							<tr>
								<th scope="row">1</th>
								<td>박지수</td>
								<td>pjsu200@naver.com</td>
								<td>010-9296-8620</td>
								<td>효행관 401</td>
							</tr>

							<tr>
								<th scope="row">2</th>
								<td>박경민</td>
								<td>pjsu123230@naver.com</td>
								<td>010-1233-23440</td>
								<td>효행관 402</td>
							</tr>

							<tr>
																<th scope="row">3</th>
								<td>박경민</td>
								<td>pjsu123230@naver.com</td>
								<td>010-1233-23440</td>
								<td>효행관 402</td>
							</tr>


							<tr>
																<th scope="row">4</th>
								<td>박경민</td>
								<td>pjsu123230@naver.com</td>
								<td>010-1233-23440</td>
								<td>효행관 402</td>
							</tr>


							<tr>
																<th scope="row">5</th>
								<td>박경민</td>
								<td>pjsu123230@naver.com</td>
								<td>010-1233-23440</td>
								<td>효행관 402</td>
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
</main>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous">
    </script>
</body>

</html>