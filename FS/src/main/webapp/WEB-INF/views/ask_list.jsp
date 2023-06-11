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
        
        
        
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">
                                <h3>MY PAGE</h3>
                            </div>
                            <a class="nav-link collapsed" href="mypage_today_delivery" data-bs-toggle="collapse" data-bs-target="#collapse1" aria-expanded="false" aria-controls="collapse1">
                                <div class="sb-nav-link-icon"></div>
                                이용내역
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapse1" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="mypage_today_delivery">당일 배송</a>
                                    <a class="nav-link" href="mypage_regular_delivery">정기 배송</a>
                                    <a class="nav-link" href="mypage_reserve_delivery">예약 배송</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link" href="mypage_storage">
                                <div class="sb-nav-link-icon"></div>
                                MY 창고
                            </a>
                        
                            <a class="nav-link collapsed" href="mypage_information_details" data-bs-toggle="collapse" data-bs-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
                                <div class="sb-nav-link-icon"></div>
                                회원 정보
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapse2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="mypage_information_details">회원 정보 상세</a>
                                    <a class="nav-link" href="pay">결제 방법</a>
                                    
                                </nav>
                            </div>

                            <a class="nav-link collapsed" href="ask" data-bs-toggle="collapse" data-bs-target="#collapse3" aria-expanded="false" aria-controls="collapse3">
                                <div class="sb-nav-link-icon"></div>
                                Q & A
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapse3" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="ask">1:1 문의 하기</a>
                                    <a class="nav-link" href="ask_list">문의 내역</a>
                                </nav>
                            </div>    

                            <a class="nav-link" href="delete">
                                <div class="sb-nav-link-icon"></div>
                                회원 탈퇴
                            </a>
                        </div>
                    </div>
                </nav>
            </div>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">문의 내역</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index">FS</a></li>
                            <li class="breadcrumb-item active">문의 내역</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <!-- Flatpickr CSS -->
                                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

                                <!-- Flatpickr JS -->
                                <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

                                <div class="card mb-4">
                                    <div class="card-body">
                                      <div class="row">
                                        <div class="col-md-3">
                                          <div class="form-group">
                                            <label for="startDate">조회 시작일</label>
                                            <input type="date" class="form-control" id="startDate" name="startDate">
                                          </div>
                                        </div>
                                        <div class="col-md-3">
                                          <div class="form-group">
                                            <label for="endDate">조회 종료일</label>
                                            <input type="date" class="form-control" id="endDate" name="endDate">
                                          </div>
                                        </div>
                                        <div class="col-md-3">
                                          <div class="form-group">
                                            <label>&nbsp;</label><br>
                                            <button type="button" class="btn btn-secondary">조회</button>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>

                                  <div class="card">
                                    <div class="card-header">
                                      <h5 class="card-title">문의 내역 리스트</h5>
                                    </div>
                                    <div class="card-body">
                                      <table class="table">
                                        <thead>
                                          <tr>
                                            <th>날짜</th>
                                            <th>구분</th>
                                            <th>제목</th>
                                            <th>답변 여부</th>
                                            <th>상태</th>
                                            <th>-</th>
                                            <th>-</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr>
                                            <td>2023-05-10</td>
                                            <td>배송</td>
                                            <td>결제 오류 문의</td>
                                            <td><i class="bi bi-x-circle-fill text-danger"></i> 미답변</td>
                                            <td><span class="badge bg-secondary">대기 중</span></td>
                                            <td><button type="button" class="btn btn-primary btn-sm">수정</button></td>
                                            <td><button type="button" class="btn btn-danger btn-sm">삭제</button></td>
                                          </tr>
                                          <tr>
                                            <td>2023-05-09</td>
                                            <td>기타</td>
                                            <td>회원 가입 오류 문의</td>
                                            <td><i class="bi bi-check-circle-fill text-success"></i> 답변 완료</td>
                                            <td><span class="badge bg-warning text-dark">처리 중</span></td>
                                            <td><button type="button" class="btn btn-primary btn-sm">보기</button></td>
                                            <td><button type="button" class="btn btn-danger btn-sm">삭제</button></td>
                                          </tr>
                                          <tr>
                                            <td>2023-05-08</td>
                                            <td>기타</td>
                                            <td>서비스 이용 문의</td>
                                            <td><i class="bi bi-check-circle-fill text-success"></i> 답변 완료</td>
                                            <td><span class="badge bg-success">완료</span></td>
                                            <td><a href="ask_answer" class="btn btn-primary btn-sm">보기</button></td>
                                            <td><button type="button" class="btn btn-danger btn-sm">삭제</button></td>
                                          </tr>
                                        </tbody>
                                      </table>
                                    </div>
                                  </div>
                                  
                                  

                                  <!-- <script>
                                    // Flatpickr 라이브러리 초기화
                                    flatpickr("#startDate", {
                                      dateFormat: "Y-m-d", // 선택한 날짜 형식
                                      maxDate: new Date(), // 오늘 이후로는 선택 불가능하도록 설정
                                      onChange: function(selectedDates, dateStr, instance) {
                                        // 시작일 선택 시, 종료일에서 선택할 수 있는 날짜 범위 제한
                                        const endPicker = document.getElementById("endDate")._flatpickr;
                                        endPicker.set("minDate", selectedDates[0]);
                                        endPicker.set("maxDate", new Date());
                                      },
                                    });
                                  
                                    flatpickr("#endDate", {
                                      dateFormat: "Y-m-d",
                                      maxDate: new Date(),
                                      onChange: function(selectedDates, dateStr, instance) {
                                        // 종료일 선택 시, 시작일에서 선택할 수 있는 날짜 범위 제한
                                        const startPicker = document.getElementById("startDate")._flatpickr;
                                        startPicker.set("maxDate", selectedDates[0]);
                                      },
                                    });
                                  </script> -->
                                
                            </div>
                        </div>
                    </div>
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
