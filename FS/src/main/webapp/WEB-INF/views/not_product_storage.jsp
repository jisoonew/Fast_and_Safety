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
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="not_login_home">
                <h1>FS</h1>
            </a>
            <!-- Company Introduction Dropdown -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <a class="navbar-brand ps-3" href="not_introduce">
                    회사 소개
                </a>
           
            <!-- Services Dropdown -->
                <a class="navbar-brand ps-3" href="not_product_storage">
                    서비스
                </a>
    
            <!-- Warehouses Dropdown -->
                <a class="navbar-brand ps-3" href="">
                    창고
                </a>

            <!--delivery Dropdown-->
                <li class="nav-item dropdown2">
                    <a class="nav-link dropdown-toggle" href="" id="deliveryDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        배송
                    </a>
                    <!-- <ul class="dropdown-menu" aria-labelledby="deliveryDropdown">
                        <li><a class="dropdown-item" href="today_delivery.html">당일 배송</a></li>
                        <li><a class="dropdown-item" href="routine_delivery.html">정기 배송</a></li>
                        <li><a class="dropdown-item" href="reserve_delivery.html">예약 배송</a></li>
                    </ul> -->
                </li>

            <!-- ask Dropdown -->
                <a class="navbar-brand ps-3" href="not_inquiry">
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
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">LOGIN & JOIN</a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="login">LOGIN</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="register">JOIN</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        
        
        
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">
                                <h3>서비스</h3>
                            </div>
                            <a class="nav-link collapsed" href="not_product_storage" data-bs-toggle="collapse" data-bs-target="#collapse1" aria-expanded="false" aria-controls="collapse1">
                                <div class="sb-nav-link-icon"></div>
                                보관품목 및 유의사항
                            </a>
                            
                            <a class="nav-link" href="not_service_step">
                                <div class="sb-nav-link-icon"></div>
                                입출고 절차
                            </a>

                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main><br>
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-6">
                            <h3>보관품목</h3>
                        </div><hr>
                    </div>
                   
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <img src="resources/img/storage.png" class="service_img_product">
                        </div>
                    </div><br><br>

                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-6">
                            <h3>유의사항</h3>
                        </div><hr>
                    </div>
                   
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <img src="resources/img/info.png" class="service_img_info">
                        </div>
                    </div><br>

                </main>
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
