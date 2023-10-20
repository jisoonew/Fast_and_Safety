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
<!-- �޷� �ѱ� �߰��� ���� Ŀ���� -->

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
			<!-- ���� ���� ���̵�� -->
			<nav id="sidebar" class="col-md-3 col-lg-2 d-md-block bg-dark">
				<div class="position-sticky">
					<ul class="nav flex-column">
						<li class="nav-item"><a id="pagename">FS</a></li>
						<li class="nav-item"><a class="nav-link" href="#">��ú���</a></li>
						<li class="nav-item"><a class="nav-link" href="#">ȸ��</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="deliveryDropdown"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> ��ǰ </a>
							<div class="dropdown-menu" aria-labelledby="deliveryDropdown">
								<a class="dropdown-item" href="#">��ǰ ����</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="#">��� ��Ȳ</a>

							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="deliveryDropdown"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> ��� </a>
							<div class="dropdown-menu" aria-labelledby="deliveryDropdown">
								<a class="dropdown-item" href="#">���Ϲ��</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="#">������</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="#">������</a>
								<!--��� �� ��� ��Ȳ�� �ִµ� �̰� �ȳ��� ������ �̰� ���� ������ ������� �𸣰ھ-->
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="deliveryDropdown"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> â�� </a>
							<div class="dropdown-menu" aria-labelledby="deliveryDropdown">
								<a class="dropdown-item" href="#">â�� ����</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="#">â�� ��Ȳ</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="deliveryDropdown"
							role="button" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> ���� </a>
							<div class="dropdown-menu" aria-labelledby="deliveryDropdown">
								<a class="dropdown-item" href="#">����</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="#">���</a>
								<hr class="dropdown-divider">
								<a class="dropdown-item" href="#">ȯ�� ����</a>
							</div></li>
						<!-- ���� �������ε� ȭ�� �ʹ� ������ ���Ƽ� �׳� �����ڷ� �ٲٰ� ȭ�鵵 �����ڵ鸸 �����ִ°ɷ� �ٲ���-->
						<li class="nav-item"><a class="nav-link" href="#">������</a></li>
						<li class="nav-item"><a class="nav-link" href="#" id="logout">�α׾ƿ�</a>
						</li>
					</ul>
				</div>
			</nav>

			<!-- ���� ������ -->
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mt-5">
				<h1>������</h1>
				<div id="outer-div">
					<table class="table table-bordered">
						<!--   <caption>List of users</caption> -->
						<tbody id="inquiry_table">
							<tr>
								<th scope="row" id="th1">���Ѽ���</th>
								<td id="td1">
									<div id="select1">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>������ü����</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</td>

								<th scope="row" id="th1">�μ�����</th>
								<td id="td1">
									<div id="select1">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>�μ���ü����</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</td>

								<th scope="row" id="th1">��ǥ����</th>
								<td id="td1">
									<div id="select1">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>��ü</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</td>
							<tr>
							<tr>
								<th scope="row" id="th1">�������</th>
								<td id="td1">
									<div id="select1">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>���</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</td>

								<th scope="row" id="th1">�˻�</th>
								<td id="td1" colspan="4">

									<div id="select1">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>���̵�</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
									<div class="input-group" id="select2">
										<input type="text" class="form-control" placeholder="�˻��� �Է�"
											aria-label="Recipient's username"
											aria-describedby="button-addon2">
										<button class="btn btn-outline-secondary" type="button"
											id="button-addon2">�˻�</button>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>


				<div id="search_btn_container">
					<button type="button" class="btn btn-outline-dark dark_btn">�ʱ�ȭ</button>
					<button type="button" class="btn btn-outline-primary dark_search">�˻�</button>
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
										<td>���</td>
										<td>���̵�</td>
										<td>��й�ȣ</td>
										<td>��</td>
										<td>�̸�</td>
										<td>�̸���</td>
										<td>��ǥ</td>
										<td>���</td>
										<td>����/����</td>
										<td>����</td>
									</tr>

									<tr>
										<td>1</td>
										<td>�ְ������</td>
										<td>ktungmin123</td>
										<td>***********</td>
										<td>�濵��ȹ��</td>
										<td>������</td>
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
												style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;">����</button>
											<button type="button"
												class="btn btn-outline-secondary btn-sm"
												style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
												data-bs-backdrop="static" data-bs-keyboard="false"
												id="memo_btn1">����</button></td>
										<td><div>
												<select class="form-select form-select-sm"
													aria-label="Default select example">
													<option selected>���� ����</option>
													<option value="1">��� ����</option>
													<option value="2">Two</option>
													<option value="3">Three</option>
												</select>
											</div></td>
									</tr>


									<tr>
										<td>2</td>
										<td>������</td>
										<td>ktungmin123</td>
										<td>***********</td>
										<td>�˻翪��</td>
										<td>������</td>
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
												style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;">����</button>
											<button type="button"
												class="btn btn-outline-secondary btn-sm"
												style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
												data-bs-backdrop="static" data-bs-keyboard="false"
												id="memo_btn1">����</button></td>
										<td><div id="select1">��� ����</div></td>
									</tr>

									<tr>
										<td colspan="11" id="Account_Inform"><button
												type="button" class="btn btn-outline-dark btn-sm"
												style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
												data-bs-backdrop="static" data-bs-keyboard="false"
												id="Refund_completed_btn1">������ ���</button></td>
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
									<th scope="row">���̵�</th>
									<th id="manager_content"><div
											class="input-group form-control-sm manager_id_text">
											<input type="text" class="form-control form-control-sm"
												placeholder="���̵�" aria-label="Recipient's username"
												aria-describedby="button-addon2">
											<button class="btn btn-outline-secondary" type="button"
												>�ߺ� �˻�</button>
										</div></th>
										
										<th scope="row">���Ѽ���</th>
									<th>
										<div> 
											<select class="form-select form-select-sm select_manager"
												aria-label="Default select example">
												<option selected>������ �����ϼ���</option>
												<option value="1">��� ����</option>
												<option value="2">Two</option>
												<option value="3">Three</option>
											</select>
										</div>
									</th>
								</tr>

								<tr>
									<th scope="row">��й�ȣ</th>
									<th>
										<div class="col-sm-6">
											<input type="password" class="form-control form-control-sm"
												id="inputPassword">
										</div>
									</th>
									
									<th scope="row">�μ�����</th>
									<th>
										<div>
											<select class="form-select form-select-sm select_manager"
												aria-label="Default select example">
												<option selected>�μ���ü����</option>
												<option value="1">��� ����</option>
												<option value="2">Two</option>
												<option value="3">Three</option>
											</select>
										</div>
									</th>
								</tr>
								
								<tr>
									<th scope="row">��й�ȣ Ȯ��</th>
									<th>
										<div class="col-sm-6">
											<input type="password" class="form-control">
										</div>
									</th>
									
									<th scope="row">��ǥ����</th>
									<th>
										<div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="inlineRadioOptions" id="inlineRadio1" value="option1">
												<label class="form-check-label" for="inlineRadio1">���</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="inlineRadioOptions" id="inlineRadio2" value="option2">
												<label class="form-check-label" for="inlineRadio2">�̻��</label>
											</div>
										</div>
									</th>
								</tr>

								<tr>
									<th scope="row">�̸�</th>
									<th>
										<div class="col-sm-6">
											<input class="form-control form-control-sm">
										</div>
									</th>
									
									<th scope="row">�������</th>
									<th>
										<div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="inlineRadioOptions" id="inlineRadio1" value="option1">
												<label class="form-check-label" for="inlineRadio1">���</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="inlineRadioOptions" id="inlineRadio2" value="option2">
												<label class="form-check-label" for="inlineRadio2">�̻��</label>
											</div>
										</div>
									</th>
								</tr>

								<tr>
									<td colspan="11" id="Account_Inform"><button type="button"
											class="btn btn-outline-dark btn-sm"
											style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
											data-bs-backdrop="static" data-bs-keyboard="false"
											id="Refund_completed_btn2">������ ���</button></td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>

<h1>�����η�</h1>

				<div id="select_container">
					<div id="select3">
						<select class="form-select" aria-label="Default select example">
							<option selected>����</option>
							<option value="1">����η�</option>
							<option value="2">�����η�</option>
							<option value="1">����η�</option>
							<option value="2">â���η�</option>
						</select>
					</div>
					<div class="input-group" id="select4">
						<input type="text" class="form-control" placeholder="�˻��� �Է�"
							aria-label="Recipient's username"
							aria-describedby="button-addon2">
					</div>
					<button type="button" class="btn btn-outline-primary dark_search">�˻�</button>
				</div>

				<div>
					<table class="table caption-top inquiry_table2_head">
						<thead>
							<tr>
								<th scope="col" style="width: 10%;">��ȣ</th>
								<th scope="col" style="width: 10%;">�̸�</th>
								<th scope="col" style="width: 20%;">�̸���</th>
								<th scope="col" style="width: 30%;">��ȭ��ȣ</th>
								<th scope="col" style="width: 30%;">�μ�</th>
							</tr>
						</thead>
						<tbody id="inquiry_table2">
							<tr>
								<th scope="row">1</th>
								<td>������</td>
								<td>pjsu200@naver.com</td>
								<td>010-9296-8620</td>
								<td>ȿ��� 401</td>
							</tr>

							<tr>
								<th scope="row">2</th>
								<td>�ڰ��</td>
								<td>pjsu123230@naver.com</td>
								<td>010-1233-23440</td>
								<td>ȿ��� 402</td>
							</tr>

							<tr>
																<th scope="row">3</th>
								<td>�ڰ��</td>
								<td>pjsu123230@naver.com</td>
								<td>010-1233-23440</td>
								<td>ȿ��� 402</td>
							</tr>


							<tr>
																<th scope="row">4</th>
								<td>�ڰ��</td>
								<td>pjsu123230@naver.com</td>
								<td>010-1233-23440</td>
								<td>ȿ��� 402</td>
							</tr>


							<tr>
																<th scope="row">5</th>
								<td>�ڰ��</td>
								<td>pjsu123230@naver.com</td>
								<td>010-1233-23440</td>
								<td>ȿ��� 402</td>
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