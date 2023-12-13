<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/sidebar.css">
<link rel="stylesheet" href="/resources/css/user.css">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="/resources/js/user.js"></script>

</head>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href = "/user?nowPage=1&cntPerPage=" + sel;
	}
</script>
<body>

	<div class="container-fluid">
		<div class="row">
			<!-- 왼쪽 고정 사이드바 -->
			<nav id="sidebar" class="col-md-3 col-lg-2 d-md-block bg-dark">
				<div class="position-sticky">
					<ul class="nav flex-column">
						<li class="nav-item"><a id="pagename">FS</a></li>
						<li class="nav-item mt-3"><a class="nav-link"
							href="/dashboard">대시보드</a></li>
						<li class="nav-item"><a class="nav-link" href="/user">회원</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/product">상품</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/delivery">당일/정기/예약</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/storage">창고</a>
						</li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="deliveryDropdown"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 문의 </a>
							<div class="dropdown-menu" aria-labelledby="inquiryDropdown">
								<a class="dropdown-item" href="/inquiry">문의</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="/inquiry_phone">상담</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="/refund">환불 문의</a>
							</div></li>
						<li class="nav-item fixed-bottom" id="logout_li"><a
							class="nav-link" href="#" id="logout">로그아웃</a></li>
					</ul>
				</div>
			</nav>

			<!-- 메인 콘텐츠 -->
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mt-5">

				<nav>
					<div class="nav nav-tabs" id="nav-tab" role="tablist">
						<button class="nav-link active" id="nav-home-tab"
							data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
							role="tab" aria-controls="nav-home" aria-selected="true">사용자</button>
						<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
							data-bs-target="#nav-profile" type="button" role="tab"
							aria-controls="nav-profile" aria-selected="false">관리자</button>
						<button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab"
							data-bs-target="#nav-contact" type="button" role="tab"
							aria-controls="nav-contact" aria-selected="false">물류인력</button>
					</div>
				</nav>
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0"><!-- 메인 콘텐츠 -->

<div id="outer-div" style="width: 725px;">
							<table class="table table-bordered">
								<!--   <caption>List of users</caption> -->
								<tbody id="inquiry_table">
									<tr>
										<th scope="row" id="th1">검색</th>
										<td id="td1" style="width: 90%">

											<div id="select1">
												<select class="form-select form-select-sm" name="type"
													id="type" aria-label="Default select example">
													<option selected>선택</option>
													<option value="m_rep">등급</option>
													<option value="m_id">아이디</option>
													<option value="m_name">이름</option>
													<option value="m_email">이메일</option>
													<option value="m_power">권한</option>
												</select>
											</div>
											<div class="input-group" id="select2">
												<input type="text" class="form-control form-control-sm"
													name="keyword" id="keyword" placeholder="검색어 입력"
													aria-label="Recipient's username"
													aria-describedby="button-addon2">
												<button class="btn btn-outline-secondary btn-sm"
													id="search_btn" type="submit">검색</button>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

                <br>
				<form method="GET" action="/user">
                <table class="table table-bordered table-hover text-center">
                    <thead>
                        <tr>
                            <th>대표자</th>
                            <th>아이디</th>
                            <th>누적 금액</th>
                            <th>이메일</th>
                            <th>전화번호</th>
                            <th>가입일</th>
                            <th>상세 보기</th>
                        </tr>
                    </thead>
                    <tbody>
                    <!-- 관리자 목록 -->
					<c:forEach items="${userDATA}" var="userDate" varStatus="loop">
                        <tr>
                            <td><c:out value="${userDate.u_name}" /></td>
                            <td><c:out value="${userDate.u_id}" /></td>
                            <td>500,000</td>
                            <td><c:out value="${userDate.u_email}" /></td>
                            <td><c:out value="${userDate.u_phone}" /></td>
                            <td>2023-10-28</td>
                            <td><a href="/member_details?user=${userDate.u_id}" class="btn btn-primary" id="detailButton">상세 보기</a></td>
                        </tr>
                        </c:forEach>
                        <!-- 이곳에 추가 -->
                    </tbody>
                </table>
                </form>
                
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
            
            <!-- 여기서부터 관리자 -->
            
					<div class="tab-pane fade" id="nav-profile" role="tabpanel"
						aria-labelledby="nav-profile-tab" tabindex="0">
						<div id="outer-div" style="width: 725px;">
							<table class="table table-bordered">
								<!--   <caption>List of users</caption> -->
								<tbody id="inquiry_table">
									<tr>
										<th scope="row" id="th1">검색</th>
										<td id="td1" style="width: 90%">

											<div id="select1">
												<select class="form-select form-select-sm" name="type"
													id="type" aria-label="Default select example">
													<option selected>선택</option>
													<option value="m_rep">등급</option>
													<option value="m_id">아이디</option>
													<option value="m_name">이름</option>
													<option value="m_email">이메일</option>
													<option value="m_power">권한</option>
												</select>
											</div>
											<div class="input-group" id="select2">
												<input type="text" class="form-control form-control-sm"
													name="keyword" id="keyword" placeholder="검색어 입력"
													aria-label="Recipient's username"
													aria-describedby="button-addon2">
												<button class="btn btn-outline-secondary btn-sm"
													id="search_btn" type="submit">검색</button>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>


						<form method="get" action="/manager">
							<div class="tab-content" id="myTabContent">
								<div class="tab-pane fade show active" id="1-tab-pane"
									role="tabpanel" aria-labelledby="home-tab" tabindex="0">
									<div style="float: right;">
										<select id="cntPerPage" name="sel" onchange="selChange()">
											<option value="10"
												<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄
												보기</option>
											<option value="15"
												<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄
												보기</option>
											<option value="20"
												<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄
												보기</option>
										</select>
									</div>
									<!-- 옵션선택 끝 -->
									<div id="outer-div">
										<table class="table table-bordered">
											<tbody id="inquiry_result_table">
												<tr>
													<td>NO</td>
													<td>등급</td>
													<td>아이디</td>
													<td>비밀번호</td>
													<td style="width: 150px;">이름</td>
													<td>이메일</td>
													<td style="width: 180px;">수정/삭제</td>
													<td style="width: 180px;">권한</td>
												</tr>

												<!-- 관리자 목록 -->
												<c:forEach items="${viewAll}" var="list" varStatus="loop">
													<tr>
														<!-- 리스트 출력 번호 -->
														<td>${paging.calculatePostNumber(loop.index)}</td>
														<!-- 등급 -->
														<td><c:choose>
																<c:when test="${list.m_power eq '모든 권한'}">
                    												최고관리자
               													</c:when>
																<c:otherwise>
                    												일반관리자
                												</c:otherwise>
															</c:choose></td>
														<!-- 아이디 -->
														<td><c:out value="${list.m_id}" /></td>
														<!-- 비밀번호[마스킹] -->
														<td><script>
															var password = "<c:out value="${list.m_pw}" />";
															var maskedPassword = password
																	.replace(
																			/./g,
																			'*');
															document
																	.write(maskedPassword);
														</script></td>
														<!-- 관리자 이름 -->
														<td>${list.m_name}</td>
														<!-- 관리자 이메일 -->
														<td>${list.m_email}</td>
														<td>
															<button type="button"
																class="btn btn-dark btn-sm update-btn" id="update_btn"
																onclick="showManagerId(this)"
																data-manager-id="<c:out value='${list.m_id}' />"
																style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
																data-bs-toggle="modal" data-bs-target="#updateModal">수정</button>
															<button type="button"
																class="btn btn-outline-secondary btn-sm delete-btn"
																style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
																data-bs-backdrop="static" data-bs-keyboard="false"
																id="memo_btn1" data-bs-toggle="modal"
																data-bs-target="#confirmModal"
																data-delete-url="<c:url value='/delete/${list.m_id}' />">삭제</button>

														</td>
														<td>
															<div id="Select_Permissions">
																<select class="form-select form-select-sm update_power"
																	id="update_select" aria-label="Default select example"
																	name="update_power">
																	<option selected>${list.m_power}[저장]</option>
																	<option value="1">모든 권한</option>
																	<option value="2">상품</option>
																	<option value="3">배송</option>
																	<option value="4">창고</option>
																</select>
															</div>
														</td>
													</tr>
												</c:forEach>

												<tr>
													<td colspan="11" id="Account_Inform">

														<button type="button" class="btn btn-outline-dark btn-sm"
															style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
															data-bs-backdrop="static" data-bs-keyboard="false"
															id="Refund_completed_btn1">저장</button>
														<button type="button" class="btn btn-dark btn-sm"
															style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
															data-bs-backdrop="static" data-bs-keyboard="false"
															id="registration_btn" data-bs-toggle="modal"
															data-bs-target="#memoModal">관리자 등록</button>
													</td>
												</tr>
											</tbody>
										</table>
									</div>

									<nav aria-label="Page navigation example" id="Page_btn">
										<ul class="pagination">
										<c:if test="${paging.startPage != 1 }">
											<li class="page-item"><a class="page-link"
												aria-label="Previous" href="/user?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;
											</a></li>
											</c:if>
											<c:forEach begin="${paging.startPage }"
											end="${paging.endPage }" var="p">
											<c:choose>
											<c:when test="${p == paging.nowPage }">
											<li class="page-item"><a class="page-link">${p }</a></li>
											</c:when>
												<c:when test="${p != paging.nowPage }">
											<li class="page-item"><a class="page-link" href="/user?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
											</c:when>
											</c:choose>
										</c:forEach>
										<c:if test="${paging.endPage != paging.lastPage}">
											<li class="page-item"><a class="page-link" href="/user?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}"
												aria-label="Next">&gt;
											</a></li>
											</c:if>
										</ul>
									</nav>
								</div>
							</div>

						</form>
					</div>



					<div class="tab-pane fade" id="nav-contact" role="tabpanel"
						aria-labelledby="nav-contact-tab" tabindex="0">
						<div id="select_container">
							<div id="select3">
								<select class="form-select" aria-label="Default select example">
									<option selected>정렬</option>
									<option value="1">상담</option>
									<option value="2">문의</option>
									<option value="1">배송</option>
									<option value="2">창고</option>
								</select>
							</div>
							<div class="input-group" id="select4">
								<input type="text" class="form-control" placeholder="검색어 입력"
									aria-label="Recipient's username"
									aria-describedby="button-addon2">
							</div>
							<button type="button"
								class="btn btn-outline-primary dark_search1">검색</button>
						</div>

						<div>
							<table class="table caption-top inquiry_table2_head">
								<thead>
									<tr>
										<th scope="col" style="width: 10%;">번호</th>
										<th scope="col" style="width: 10%;">이름</th>
										<th scope="col" style="width: 20%;">이메일</th>
										<th scope="col" style="width: 20%;">전화번호</th>
										<th scope="col" style="width: 10%;">부서</th>
										<th scope="col" style="width: 20%;">입사일</th>
										<th scope="col" style="width: 20%;">퇴사일</th>
									</tr>
								</thead>
								<tbody id="inquiry_table2">
									<tr>
										<th scope="row">1</th>
										<td>박지수</td>
										<td>pjsu200@naver.com</td>
										<td>010-9296-8620</td>
										<td>상담</td>
										<td>2023-10-27</td>
										<td>-</td>
									</tr>

									<tr>
										<th scope="row">2</th>
										<td>박경민</td>
										<td>pjsu123230@naver.com</td>
										<td>010-1233-23440</td>
										<td>문의</td>
										<td>2023-10-27</td>
										<td>2023-10-28</td>
									</tr>

									<tr>
										<th scope="row">3</th>
										<td>박경민</td>
										<td>pjsu123230@naver.com</td>
										<td>010-1233-23440</td>
										<td>배송</td>
										<td>2023-10-27</td>
										<td>2023-10-28</td>
									</tr>


									<tr>
										<th scope="row">4</th>
										<td>박경민</td>
										<td>pjsu123230@naver.com</td>
										<td>010-1233-23440</td>
										<td>창고</td>
										<td>2023-10-27</td>
										<td>-</td>
									</tr>


									<tr>
										<th scope="row">5</th>
										<td>박경민</td>
										<td>pjsu123230@naver.com</td>
										<td>010-1233-23440</td>
										<td>상담</td>
										<td>2023-10-27</td>
										<td>2023-10-28</td>
									</tr>

								</tbody>
							</table>

							<div id="navigation">
								<nav aria-label="Page navigation example"
									id="navigation_content">
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
								<button type="button" class="btn btn-dark btn-sm"
									id="distribution_btn">인력 등록</button>
							</div>

						</div>
					</div>
				</div>
		</div>
	</div>

	</main>



	<!-- 모달 HTML -->
	<div class="modal fade" id="memoModal" tabindex="-1"
		aria-labelledby="memoModalLabel" aria-hidden="true"
		data-bs-container="#tab_container" data-bs-placement="bottom">
		<div class="modal-dialog">
			<div class="modal-content" id="modal_title">
				<div class="modal-header">
					<h5 class="modal-title">관리자 등록</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body" id="modal_content">
					<form method="post" action="/mng_insert">
						<table class="table table-bordered manager_container">
							<tbody>
								<tr>
									<th scope="row">아이디</th>
									<th id="manager_content">
										<div class="input-group manager_id_text" style="width: 240px;">
											<input type="text" id="overlap_result" name="m_id"
												class="form-control form-control-sm" placeholder="아이디"
												aria-label="Recipient's username"
												aria-describedby="button-addon2">
											<button class="btn btn-outline-secondary btn-sm"
												type="button">중복 검사</button>

											<!-- 중복이면 "중복"이라고 표기 -->
											<label id="label1"></label>
										</div>
									</th>

									<th scope="row">전화번호</th>
									<th>
										<div>
											<input type="text" id="m_phone" name="m_phone"
												class="form-control form-control-sm"
												oninput="hypenTel(this)" maxlength="13">
										</div>
									</th>


								</tr>

								<tr>
									<th scope="row">비밀번호</th>
									<th>
										<div class="col-sm-6">
											<input type="password" name="password"
												class="form-control form-control-sm" id="inputPassword1">
										</div>
									</th>

									<th scope="row">이메일</th>
									<th>
										<div>
											<input type="text" id="m_email" name="m_email"
												class="form-control form-control-sm" placeholder="이메일"
												aria-label="Recipient's username"
												aria-describedby="button-addon2">
										</div>
									</th>


								</tr>

								<tr>
									<th scope="row">비밀번호 확인</th>
									<th>
										<div class="col-sm-6">
											<input type="password" class="form-control-sm"
												id="inputPassword2">
										</div> <!-- 중복이면 "중복"이라고 표기 --> <label id="pw_overlap"></label>
									</th>


									<th scope="row">권한선택</th>
									<th>
										<div>
											<select class="form-select form-select-sm select_manager"
												aria-label="Default select example" name="power">
												<option selected>권한을 선택하세요</option>
												<option value="모든 권한">모든 권한</option>
												<option value="상품">상품</option>
												<option value="배송">배송</option>
												<option value="창고">창고</option>
											</select>
										</div>
									</th>
								</tr>

								<tr>
									<th scope="row">이름</th>
									<th>
										<div class="col-sm-6">
											<input name="m_name" class="form-control form-control-sm"
												id="inputName">
										</div>
									</th>

									<th></th>
									<th>
										<button type="submit" class="btn btn-outline-dark btn-sm"
											style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
											data-bs-backdrop="static" data-bs-keyboard="false"
											id="Refund_completed_btn2">등록</button>
									</th>
								</tr>

							</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- 관리자 삭제 모달 창 -->
	<div class="modal fade" id="confirmModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">확인</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">삭제하시겠습니까?</div>
				<div class="modal-footer">
					<!-- 확인 버튼 -->
					<button type="button" class="btn btn-primary" id="confirmBtn">확인</button>
					<!-- 취소 버튼 -->
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 관리자 수정 모달 창 -->
	<div class="modal fade" id="updateModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">확인</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">수정하시겠습니까?</div>
				<div class="modal-footer">
					<!-- 확인 버튼 -->
					<button type="button" class="btn btn-primary" id="update_confirm">확인</button>
					<!-- 취소 버튼 -->
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 모달 HTML -->
	<div class="modal fade" id="distributionModal" tabindex="-1"
		aria-labelledby="memoModalLabel" aria-hidden="true"
		data-bs-container="#tab_container" data-bs-placement="bottom">
		<div class="modal-dialog">
			<div class="modal-content" id="modal_title">
				<div class="modal-header">
					<h5 class="modal-title">물류인력 등록</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body" id="modal_content">
					<table class="table table-bordered manager_container">
						<tbody>
							<tr>
								<th scope="row" colspan="2">이름</th>
							</tr>

							<tr>
								<th scope="row" style="width: 30%;">이메일</th>
								<th>
									<div class="col-sm-6">
										<div class="input-group">
											<input type="text" class="form-control form-control-sm"
												aria-label="Username"> <span
												class="input-group-text form-control-sm">@</span> <input
												type="text" class="form-control form-control-sm"
												aria-label="Server">
										</div>
									</div>
								</th>


							</tr>

							<tr>
								<th scope="row">핸드폰 번호</th>
								<th>
									<div class="col-sm-6">
										<input type="text" class="form-control form-control-sm"
											oninput="oninputPhone(this)" maxlength="14">
									</div>
								</th>


							</tr>

							<tr>
								<th scope="row">부서</th>
								<th>
									<div class="col-sm-6">
										<div id="select3">
											<select class="form-select"
												aria-label="Default select example">
												<option selected>정렬</option>
												<option value="1">상담</option>
												<option value="2">문의</option>
												<option value="1">배송</option>
												<option value="2">창고</option>
											</select>
										</div>
									</div>
								</th>


							</tr>

							<tr>
								<td colspan="2" id="Account_Inform"><button type="button"
										class="btn btn-outline-dark btn-sm"
										style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
										data-bs-backdrop="static" data-bs-keyboard="false"
										id="Refund_completed_btn2">등록</button></td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous">
		
	</script>

	<script>
		document.querySelectorAll('.delete-btn').forEach(
				function(button) {
					button.addEventListener('click', function() {
						var deleteUrl = button.getAttribute('data-delete-url');

						// 삭제 버튼이면서 data-delete-url 속성이 있는 경우에만 삭제 로직을 수행
						if (deleteUrl) {
							// 모달창 열기
							var myModal = new bootstrap.Modal(document
									.getElementById('confirmModal'));
							myModal.show();

							// 모달 확인 버튼 클릭 시 삭제 로직 수행
							document.getElementById('confirmBtn')
									.addEventListener('click', function() {

										// 아래는 페이지 이동하는 방식
										window.location.href = deleteUrl;

										// 모달 창 닫기
										myModal.hide();
									});
						}
					});
				});
	</script>
</body>

</html>