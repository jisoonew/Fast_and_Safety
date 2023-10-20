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
<!-- �޷� �ѱ� �߰��� ���� Ŀ���� -->

<!-- ��¥ ����Ʈ��Ŀ ���̺귯�� -->
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
				<h1>����</h1>
				<div id="outer-div">
					<table class="table table-bordered">
						<!--   <caption>List of users</caption> -->
						<tbody id="inquiry_table">
							<tr>
								<th scope="row" id="th1">���� ������</th>
								<td id="td1">
									<div id="date_container">
										<input class="form-control" type="text" id="datepicker1">
									</div>
									<div id="tilde">~</div>
									<div id="date_container">
										<input class="form-control" type="text" id="datepicker2">
									</div>
								</td>
								<td id="td2">��ȸ ����</td>
								<td id="td3"><div id="select1">
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
									</div></td>
							</tr>
							<tr>
								<th scope="row" id="th2">ó������</th>
								<td><div id="td4">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>�̴亯</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div></td>
								<td id="td5">����</td>
								<td><div id="td6">
										<select class="form-select"
											aria-label="Default select example">
											<option selected>���� �˻� �� ����</option>
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
					<button type="button" class="btn btn-outline-dark dark_btn">�ʱ�ȭ</button>
					<button type="button" class="btn btn-outline-primary dark_search">�˻�</button>
				</div>

				<div id="select_container">
					<div id="select3">
						<select class="form-select" aria-label="Default select example">
							<option selected>����</option>
							<option value="1">�ֽż�</option>
							<option value="2">������ ��</option>
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
								<th scope="col" style="width: 8%;">������</th>
								<th scope="col" style="width: 8%;">ó�� ����</th>
								<th scope="col" style="width: 20%;">��ǰ ����</th>
								<th scope="col" style="width: 30%;">���� ����</th>
								<th scope="col" style="width: 10%;">������ ID</th>
								<th scope="col" style="width: 8%;">ó����</th>
								<th scope="col" style="width: 8%;">����</th>
								<th scope="col" style="width: 8%;">-</th>
							</tr>
						</thead>
						<tbody id="inquiry_table2">
							<tr>
								<th scope="row">2023-10-20</th>
								<td>�̴亯</td>
								<td id="table2_left">���� ������ ������</td>
								<td id="table2_left">���� ��� �Ȱ����ؼ� �ֹ��ϰǵ� �������� ������ �ȵ˴ϴ�.�̤�</td>
								<td>kyun****</td>
								<td>-</td>
								<td>-</td>
								<td><button type="button"
										class="btn btn-outline-primary table2_blue_btn">Ȯ����</button></td>
							</tr>

							<tr>
								<th scope="row">2023-10-20</th>
								<td>�̴亯</td>
								<td id="table2_left">��Ÿ��� ����108PRO ������Ű���� Ǯ��Ȱ ������� ���� Ŀ����
									Ű���� Ȳ�� ����</td>
								<td id="table2_left">��� �Ⱓ</td>
								<td>kyun****</td>
								<td>-</td>
								<td>-</td>
								<td><button type="button"
										class="btn btn-outline-dark table2_dark_btn">���� ����</button></td>
							</tr>

							<tr>
								<th scope="row">2023-10-20</th>
								<td>�̴亯</td>
								<td id="table2_left">��Ÿ��� ����108PRO ������Ű���� Ǯ��Ȱ ������� ���� Ŀ����
									Ű���� Ȳ�� ����</td>
								<td id="table2_left">��� �Ⱓ</td>
								<td>kyun****</td>
								<td>-</td>
								<td>-</td>
								<td><button type="button"
										class="btn btn-outline-dark table2_dark_btn">���� ����</button></td>
							</tr>


							<tr>
								<th scope="row">2023-10-20</th>
								<td>�̴亯</td>
								<td id="table2_left">��Ÿ��� ����108PRO ������Ű���� Ǯ��Ȱ ������� ���� Ŀ����
									Ű���� Ȳ�� ����</td>
								<td id="table2_left">��� �Ⱓ</td>
								<td>kyun****</td>
								<td>-</td>
								<td>-</td>
								<td><button type="button"
										class="btn btn-outline-dark table2_dark_btn">���� ����</button></td>
							</tr>


							<tr>
								<th scope="row">2023-10-20</th>
								<td>�̴亯</td>
								<td id="table2_left">��Ÿ��� ����108PRO ������Ű���� Ǯ��Ȱ ������� ���� Ŀ����
									Ű���� Ȳ�� ����</td>
								<td id="table2_left">��� �Ⱓ</td>
								<td>kyun****</td>
								<td>-</td>
								<td>-</td>
								<td><button type="button"
										class="btn btn-outline-dark table2_dark_btn">���� ����</button></td>
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
									<th scope="row" style="width: 20%; text-align: left;">������</th>
									<td style="width: 25%;">2023-10-20</td>
									<th style="width: 20%;">ó����
									<td style="width: 25%;">-</td>
								</tr>
								<tr>
									<th scope="row" style="width: 20%; text-align: left;">������
										ID</th>
									<td style="width: 25%;">kyun****</td>
									<th style="width: 20%;">ó�� ����
									<td style="width: 25%;">�̴亯</td>
								</tr>
								<tr>
									<th scope="row" style="width: 20%; text-align: left;">��ǰ
										��ȣ</th>
									<td style="width: 25%;">50405640</td>
									<th style="width: 20%;">����
									<td style="width: 25%;">-</td>
								</tr>
								<tr>
									<th scope="row" style="width: 10%;">���� ����</th>
									<td colspan="3">���� ������ ������ ���� ������ ������ ���� ������ ������ ���� ������
										������ ���� ������ ������ ���� ������ ������ ���� ������ ������ ���� ������ ������ ���� ������ ������ ����
										������ ������ ���� ������ ������ ���� ������ ������ ���� ������ ������ ���� ������ ������</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="inquiry_table4">
						<table class="table table-borderless">
							<tbody>
								<tr>
									<th scope="row" style="width: 10%;">�亯 ����</th>
									<td colspan="3"><div class="mb-3">
											<textarea class="form-control"
												id="exampleFormControlTextarea1" rows="8"></textarea>
										</div></td>
								</tr>
							</tbody>

						</table>

						<div id="inquiry_table4_btn">
							<button type="button" class="btn btn-outline-primary">����</button>
							<button type="button" class="btn btn-outline-primary">����</button>
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