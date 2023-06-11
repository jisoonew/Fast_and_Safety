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
        <title>FS_Mypage</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="resources/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
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

        
        <div class="container">
    <div class="row align-items-center">
      <div class="col">
        <img src="resources/img/소개.png" class="rounded mx-auto d-block" style="height: 60vh;" width="1100px" />
      </div>
      <div class="row text-center mt-5">
        <div class="col">
          <h1 style="font-weight: bold;">회사소개</h1>
          <img src="resources/img/회사.png" class="rounded mx-auto d-block" style="height: 60vh;" width="1100px" />
        </div>
      </div>
      <div class="row text-start mt-3">
        <div class="col ms-5 me-5">
          <div class="ms-5 me-5 border border-secondary">
            <div class="ms-3">
              <h1 class="mt-3">회사명 : 에프에스물류창고 (FS)</h1>
              <h1 class="mt-3">설립일 : 2023.01.01</h1>
              <h1 class="mt-3">업종 : 식품 물류 창고 (회원제)</h1>
              <h1 class="mt-3">주소 : 경기도 의정부시 서부로 545</h1>
              <h1 class="mt-3">면적 : 면적 200평</h1>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col text-center mt-5">
          <h1 style="font-weight: bold;">회원제 혜택</h1>
        </div>
      </div>

      <div class=" align-items-center text-center">
        <div class=" row border border-secondary ms-5 me-5">
          <div class="row mt-4 align-items-center mb-4">
            <div class="col">
              <img src="resources/img/배송.png" />
            </div>
            <div class="col">
              <h5>회원 전용 예약 배송 운영</h5>
            </div>
          </div>
          <hr>
          <div class="row mt-2 mb-4 aligh align-items-center">
            <div class="col">
              <h5>암튼 좋음 그냥 회원 등록 하셈</h5>
            </div>
            <div class="col">
              <img src="resources/img/물류.png" width="324" height="292" />
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col text-center mt-5">
          <h1 style="font-weight: bold;">오시는 길</h1>
        </div>
      </div>

      <div class="row align-items-center border border-secondary ms-5" style="width: 1220px;">
        <div class="col mt-3 mb-3 text-center">
          <img src="resources/img/지도.png" />
        </div>
        <div class="col mt-3 text-start">
          <h5 class="mt-3">주소: 서울특별시 어쩌구 저쩌구</h5>
          <h5 class="mt-5">Tel : 02-1234-5678</h5>
          <h5 class="mt-5">Fax : 02-1234-5678</h5>
          <h5 class="mt-5">Email : fsemail@gmail</h5>
        </div>
      </div>

      <footer style="padding: 50px 0;"></footer>

    </div>
  </div>
            
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
