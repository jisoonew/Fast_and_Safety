<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="resources/css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="login_home">
                <h1>FS</h1>
            </a>
            <!-- Company Introduction Dropdown -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <a class="navbar-brand ps-3" href="introduce">
                    회사 소개
                </a>
           
            <!-- Services Dropdown -->
                <a class="navbar-brand ps-3" href="product_storage">
                    서비스
                </a>
    
            <!-- Warehouses Dropdown -->
                <a class="navbar-brand ps-3" href="storage_reserve">
                    창고
                </a>

            <!--delivery Dropdown-->
                <li class="nav-item dropdown2">
                    <a class="nav-link dropdown-toggle" href="today_delivery" id="deliveryDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        배송
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="deliveryDropdown">
                        <li><a class="dropdown-item" href="today_delivery">당일 배송</a></li>
                        <li><a class="dropdown-item" href="routine_delivery">정기 배송</a></li>
                        <li><a class="dropdown-item" href="reserve_delivery">예약 배송</a></li>
                    </ul>
                </li>

            <!-- ask Dropdown -->
                <a class="navbar-brand ps-3" href="inquiry">
                    문의
                </a>
            </ul>
            
            <!-- Navbar Search-->
            <!-- <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form> -->
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="mypage_today_delivery" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="mypage_today_delivery">My Page</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="not_login_home">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </head>
    <body>
        <form><br>
            <div class="row">
                <div class="col-1"></div>
                <div class="col-3"><h2> 예약 배송 신청</h2></div>
            </div><br><br>

            <div class="row">
                <div class="col-2"></div>
                <div class="col-1"><h4>수령인</h4></div>
                <div class="col-2"><input type="text"></div>
                <div class="col-1"></div>
                <div class="col-1"><h4>연락처</h4></div>
                <div class="col-2"> <input type="text" oninput="hypenTel(this)" maxlength="13"></div>
            </div><br><br><br>

            <div class="row">
                <div class="col-2"></div>
                <div class="col-1"><h4>출고 물품</h4></div>
                <div class="col-2">
                    <select name="d_product" id="d_product">
                    <option value="">물품선택</option>
                    <option value="학생">아이스크림</option>
                    <option value="회사원">우유</option>
                    <option value="기타">두유</option>
                    </select>
                </div>
                <div class="col-1"></div>
                <div class="col-1"><h4>출고 물량</h4></div>
                <div class="col-2"><input type="text"> PLT</div>
            </div><br><br>

            <div class="row">
                <div class="col-2"></div>
                <div class="col-1" for="postcode"><h5>배송 날짜 </h5></div>
                <div class="col-5"> <input type="text" id="datepicker" placeholder="날짜 선택"></div>
            </div><br><br>

            <div class="row">
                <div class="col-2"></div>
                <div class="col-1" for="postcode"><h4>우편번호 </h4></div>
                <div class="col-2"><input type="text" id="postcode" name="postcode" readonly></div>
                <div class="col-2"><button type="button" onclick="execDaumPostcode()">우편번호 검색</button><br></div>
            </div>
        
            <div class="row">
                <div class="col-2"></div>
                <div class="col-1" for="postcode"><h5>주소 </h5></div>
                <div class="col-6"><input type="text" id="address" name="address" readonly><br></div>
            </div>

            <div class="row">
                <div class="col-2"></div>
                <div class="col-1" for="postcode"><h5>상세주소 </h5></div>
                <div class="col-5"><input type="text" id="detailAddress" name="detailAddress"><br></div>
            </div><br><br>

            <div class="row">
                <div class="col-4"></div>
                <div class="col-1" for="postcode"><h5>예상 배송비 </h5></div>
                <div class="col-1"></div>
                <div class="col-4"><h5><label>-----원</label></h5></div>
            </div><br><br>

            <div class="row">
                <div class="col-2"></div>
                <div class="col-1"></div>
                <div class="col-2"><button type="submit" class="d_btn">신청하기</button></div>
                <div class="col-1"></div>
                <div class="col-1"></div>
                <div class="col-2"><button class="d_btn">취소</button></div>
            </div>
        </form>

        <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script src="js/syh.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
