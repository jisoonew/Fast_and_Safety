<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Mypage_today_delivery</title>
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
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="mypage_same_day_delivery.jsp" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="mypage_today_delivery">My Page</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="not_login_home">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        </nav>
        

        <!-- 여기서부터 사이드 바 -->
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
                                    <a class="nav-link" href="ask_answer">문의 내역</a>
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
        </div>
        <!-- 여기까지 사이드바 -->
        
        
        <div id="container_content">
        
        <h1 class="mt-4" id="content_title">당일 배송</h1>
        
        <div id="year_month_date">
        <select class="form-select" aria-label="Default select example" id="year">
</select>

<select class="form-select" aria-label="Default select example" id="month">
</select>

<select class="form-select" aria-label="Default select example" id="date">
</select>

<button type="button" id="y_m_d_dtn" class="btn btn-outline-dark">검색</button>
</div>

        <div id="container_delivery_state">
        <select class="form-select" aria-label="Default select example" id="delivery_state_select" name="searchName">
          <option value="kind_release" selected="selected">물품명</option>
        <option value="container_num">컨테이너 번호</option>
  <option value="td_name">수령인</option>
          <option value="td_address">주소</option>
</select>

<input class="form-control" id="delivery_state_search" name="searchValue" type="text" placeholder="검색" aria-label="검색창">

<button type="submit" id="search_dtn" class="btn btn-outline-dark">검색</button>
        </div>
        </div>

	<div id="container_table">
		<table class="table table-bordered" style="font-size:15px;">
			<thead>
				<tr>
					<th scope="col" style="width: 5%">NO</th>
					<th scope="col" style="width: 16%">물품명</th>
					<th scope="col" style="width: 8%">출고 물량</th>
					<th scope="col" style="width: 8%">컨테이너</th>
					<th scope="col" style="width: 8%">컨테이너 번호</th>
					<th scope="col" style="width: 8%">수령인</th>
					<th scope="col" style="width: 20%">주소</th>
					<th scope="col" style="width: 10%">배송 상태</th>
					<th scope="col" style="width: 10%">배송비</th>
				</tr>
			</thead>
			
			<tbody>
			<c:forEach items="${list}" var="list" varStatus="status">
 			<tr>
 			<td><c:out value="${status.count}"/></td><!-- 테이블 순서 -->
 				<td><c:out value="${list.kind_release}"/></td><!-- 물품명 -->
  				<td><c:out value="${list.td_volume}"/></td><!-- 물량 -->
                 <td><c:out value="${list.container_type}"/></td><!-- 컨테이너 타입 -->
 				 <td><c:out value="${list.container_num}"/></td><!-- 컨테이너 번호 -->
 				 <td><c:out value="${list.td_name}"/></td><!-- 수령인 -->
 				 <td><c:out value="(${list.postcode}) ${list.td_address} ${list.u_detail_address}"/></td><!-- 주소 -->
 				 <td><c:out value="처리"/></td><!-- 배송 상태 -->
 				 <td><c:out value="${list.delivery_fee}"/></td><!-- 배송비 -->
			</tr>
			</c:forEach>
			</tbody>
		</table>
		
		
				<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col" style="width: 10%">배송 합계</th>
					<th scope="col" style="width: 73%"></th>
					<c:forEach items="${delivery_sum}" var="delivery_sum" varStatus="status">
					<th scope="col" style="width: 10%"><c:out value="${delivery_sum.delivery_sum}"/>원</th>
					</c:forEach>
				</tr>
		</table>
	</div>
	
		    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups" id="btn_group">
  <div class="btn-group me-2" role="group" aria-label="First group" id="btn_group">
    <button type="button" class="btn btn-primary">1</button>
    <button type="button" class="btn btn-primary">2</button>
    <button type="button" class="btn btn-primary">3</button>
    <button type="button" class="btn btn-primary">4</button>
  </div>
  </div>
   
  <script>
        
		/* 배송비 계산 */
        function calculation(){
			first = parseInt(table.td_volume.value);
 			second = 1000;
 			
 			table.delivery_fee.value = first*second;
 			
        	if (isNaN(table.total.value)) { // 값이 없어서 NaN값이 나올 경우

        		table.total.value = 0;

        		}
        }
        </script>
  
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>