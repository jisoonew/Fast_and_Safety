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
<link rel="stylesheet" href="/resources/css/refund.css">

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
<script src="resources/js/refund.js"></script>

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
				<h1>ȯ��</h1>
				<div id="outer-div">
					<table class="table table-bordered">
						<!--   <caption>List of users</caption> -->
						<tbody id="inquiry_table">
							<tr>
								<th scope="row" id="th1">��ü</th>
								<td id="td1" colspan="3">
									<div id="select1">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>����</option>
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
											id="button-addon2">Button</button>
									</div>
								</td>
							<tr>


								<th scope="row" id="th2">�Ⱓ</th>
								<td colspan="3">
									<div id="td4" class="d-flex align-items-center">
										<select class="form-select select_table"
											aria-label="Default select example">
											<option selected>�ֹ���ȣ</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
									<div class="btn-group d-flex" role="group" id="radio_table"
										aria-label="Basic radio toggle button group">

										<input type="radio" class="btn-check" name="btnradio"
											id="btnradio1" autocomplete="off" checked> <label
											class="btn btn-outline-primary" for="btnradio1">����</label> <input
											type="radio" class="btn-check" name="btnradio" id="btnradio2"
											autocomplete="off"> <label
											class="btn btn-outline-primary" for="btnradio2">����</label> <input
											type="radio" class="btn-check" name="btnradio" id="btnradio3"
											autocomplete="off"> <label
											class="btn btn-outline-primary" for="btnradio3">7��</label> <input
											type="radio" class="btn-check" name="btnradio" id="btnradio4"
											autocomplete="off"> <label
											class="btn btn-outline-primary" for="btnradio4">15��</label> <input
											type="radio" class="btn-check" name="btnradio" id="btnradio5"
											autocomplete="off"> <label
											class="btn btn-outline-primary" for="btnradio5">1����</label> <input
											type="radio" class="btn-check" name="btnradio" id="btnradio6"
											autocomplete="off"> <label
											class="btn btn-outline-primary" for="btnradio6">3����</label> <input
											type="radio" class="btn-check" name="btnradio" id="btnradio7"
											autocomplete="off"> <label
											class="btn btn-outline-primary" for="btnradio7">6����</label>

									</div>

									<div id="date_container">
										<input class="form-control" type="text" id="datepicker1">
									</div>
									<div id="tilde">~</div>
									<div id="date_container">
										<input class="form-control" type="text" id="datepicker2">
									</div>

									<div>
										<button type="button"
											class="btn btn-outline-primary period_btn">�Ⱓ ����</button>
									</div>
								</td>
							</tr>


							<tr>
								<th scope="row" id="th2">��� ��� ��ü/���</th>
								<td colspan="3">
									<div id="desired_delivery" class="d-flex align-items-center">
										<select class="form-select select_table"
											aria-label="Default select example">
											<option selected>�����۾�ü</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</td>
							</tr>


							<tr>
								<th scope="row" id="th2">�ֹ� ����</th>
								<td colspan="3">
									<div class="form-check form-check-inline" id="check_box">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckbox1" value="option1"> <label
											class="form-check-label" for="inlineCheckbox1">��ü</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckbox2" value="option2"> <label
											class="form-check-label" for="inlineCheckbox2">ȯ����</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckbox3" value="option3"> <label
											class="form-check-label" for="inlineCheckbox3">ȯ�ҿϷ�</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckbox3" value="option3"> <label
											class="form-check-label" for="inlineCheckbox3">ȯ�Һ���</label>
									</div>
								</td>
							</tr>


							<tr>
								<th scope="row">ȯ�� ����</th>
								<td class="d-flex align-items-center">
									<div id="desired_delivery" class="d-flex align-items-center">
										<select class="form-select select_table"
											aria-label="Default select example">
											<option selected>�����۾�ü</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</td>

								<th scope="row" style="width: 150px;">PG ��� ����</th>
								<td class="d-flex align-items-center">
									<div id="desired_delivery" class="d-flex align-items-center">
										<select class="form-select select_table"
											aria-label="Default select example">
											<option selected>��ü</option>
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
					<button type="button" class="btn btn-outline-dark dark_btn">�ʱ�ȭ</button>
					<button type="button" class="btn btn-outline-primary dark_search">�˻�</button>
				</div>


				<div id="tab_container">
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item" role="presentation">
							<button class="nav-link active" id="home-tab"
								data-bs-toggle="tab" data-bs-target="#1-tab-pane" type="button"
								role="tab" aria-controls="home-tab-pane" aria-selected="true">��ü</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="profile-tab" data-bs-toggle="tab"
								data-bs-target="#2-tab-pane" type="button" role="tab"
								aria-controls="profile-tab-pane" aria-selected="false">ȯ����</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="contact-tab" data-bs-toggle="tab"
								data-bs-target="#3-tab-pane" type="button" role="tab"
								aria-controls="contact-tab-pane" aria-selected="false">ȯ��
								�Ϸ�</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="contact-tab" data-bs-toggle="tab"
								data-bs-target="#4-tab-pane" type="button" role="tab"
								aria-controls="contact-tab-pane" aria-selected="false">ȯ��
								����</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="contact-tab" data-bs-toggle="tab"
								data-bs-target="#5-tab-pane" type="button" role="tab"
								aria-controls="contact-tab-pane" aria-selected="false">ȯ��
								öȸ</button>
						</li>
					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="1-tab-pane"
							role="tabpanel" aria-labelledby="home-tab" tabindex="0">
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
											<td>ȯ��������<br>(ȯ�ҿϷ���)
											</td>
											<td>�ֹ���ȣ/<br>ȯ�ҹ�ȣ
											</td>
											<td>��ü��<br>[�ֹ���]
											</td>
											<td>�� ����</td>
											<td>��ȯ�Ҿ�</td>
											<td>��ȯ�Ҿ�<br>(��ġ��)
											</td>
											<td>��������</td>
											<td>ȯ�Ҽ���</td>
											<td>ó������</td>
											<td>ȯ��ó��</td>
											<td>�޸�</td>
										</tr>


										<tr>
											<td rowspan="2">
												<div class="form-check" id="checkbox">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault">
												</div>
											</td>
											<td rowspan="2">2023-10-20</td>
											<td rowspan="2">45041231848/<br>45421254
											</td>
											<td rowspan="2">��δ�<br>[������]
											</td>
											<td>1</td>
											<td>10000</td>
											<td>10000(0)</td>
											<td>������</td>
											<td>������</td>
											<td>ȯ����</td>
											<td><button type="button" class="btn btn-dark"
													style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;">ó��</button></td>
											<td><button type="button"
													class="btn btn-outline-secondary"
													style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
													data-bs-backdrop="static" data-bs-keyboard="false"
													id="memo_btn1">memo</button>
												<br>
										</tr>

										<tr>
											<td colspan="8" id="Account_Inform">ȯ�Ұ������� * ȯ������ : ��������
												| ȯ�� ���� : 1234567855454912 | ������ : ��δ�[������]</td>
										</tr>


										<tr>
											<td rowspan="2">
												<div class="form-check" id="checkbox">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault">
												</div>
											</td>
											<td rowspan="2">2023-10-21</td>
											<td rowspan="2">45041231848/<br>45421254
											</td>
											<td rowspan="2">��δ�<br>[�ڰ��]
											</td>
											<td>1</td>
											<td>21000</td>
											<td>21000(0)</td>
											<td>������</td>
											<td>������</td>
											<td>ȯ����</td>
											<td><button type="button" class="btn btn-dark"
													style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;">ó��</button></td>
											<td><button type="button"
													class="btn btn-outline-secondary"
													style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
													data-bs-backdrop="static" data-bs-keyboard="false"
													id="memo_btn2">memo</button>
												<br>
										</tr>

										<tr>
											<td colspan="8" id="Account_Inform">ȯ�Ұ������� * ȯ������ : ��������
												| ȯ�� ���� : 145415215648415 | ������ : ��δ�[�ڰ��]</td>
										</tr>

										<tr>
											<td colspan="12" id="Account_Inform"><button
													type="button" class="btn btn-outline-dark"
													style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;"
													data-bs-backdrop="static" data-bs-keyboard="false"
													id="Refund_completed_btn">ȯ�� �Ϸ�</button></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="tab-pane fade" id="2-tab-pane" role="tabpanel"
							aria-labelledby="profile-tab" tabindex="0">ȯ����</div>
						<div class="tab-pane fade" id="3-tab-pane" role="tabpanel"
							aria-labelledby="contact-tab" tabindex="0">ȯ�ҿϷ�</div>
						<div class="tab-pane fade" id="4-tab-pane" role="tabpanel"
							aria-labelledby="disabled-tab" tabindex="0">ȯ�Һ���</div>
						<div class="tab-pane fade" id="5-tab-pane" role="tabpanel"
							aria-labelledby="disabled-tab" tabindex="0">ȯ��öȸ</div>
					</div>
				</div>
			</main>
		</div>
	</div>

	<!-- ��� HTML -->
	<div class="modal fade" id="memoModal" tabindex="-1"
		aria-labelledby="memoModalLabel" aria-hidden="true"
		data-bs-container="#tab_container" data-bs-placement="bottom">
		<div class="modal-dialog">
			<div class="modal-content" id="modal_title">

				<div class="modal-body" id="modal_content">
					<div>������ �޽���</div>
					<div>���ǿ� �ð��ּ���</div>

					<div id="modal_title">������ �޸�</div>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="1-tab-pane"
							role="tabpanel" aria-labelledby="home-tab" tabindex="0">
							<div id="outer-div">
								<table class="table table-bordered" id="memo_table">
									<!--   <caption>List of users</caption> -->
									<tbody id="inquiry_table">
										<tr>
											<td>�ۼ���</td>
											<td>�ۼ���</td>
											<td>�߿�</td>
											<td>��ǰ��</td>
											<td>����</td>
										</tr>


										<tr>
											<td>2023-10-20</td>
											<td>������</td>
											<td>�߿�</td>
											<td>-</td>
											<td>�ش� �ֹ��� ���� ��� ���</td>
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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous">
    </script>
</body>

</html>