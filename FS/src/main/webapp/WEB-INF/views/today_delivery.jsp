<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Today_delivery</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="resources/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        
        </head>
        
        <body>
        
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
        <form name="table" role="form" method="post" action="/today_delivery"><br>
            <div class="row">
                <div class="col-1"></div>
                <div class="col-3"><h2> 당일 배송 신청</h2></div>
            </div><br><br>

            <div class="row">
                <div class="col-2"></div>
                <div class="col-1"><h4>수령인</h4></div>
                        <c:forEach items="${user}" var="user">
                <div class="col-2"><input type="text" name="td_name" value="${user.u_name}"></div></c:forEach>
                
                <div class="col-1"></div>
                <div class="col-1"><h4>연락처</h4></div>
                <c:forEach items="${user}" var="user">
                <div class="col-2"> <input type="text" oninput="hypenTel(this)" name="td_phone" maxlength="13" value="${user.u_phone}"></div></c:forEach>
            </div><br><br><br>

            <div class="row">
                <div class="col-2"></div>
                <div class="col-1"><h4>출고 물품</h4></div>
                <div class="col-2">
                    <select name="kind_release" id="d_product">
                    
                    <option>물품선택</option>
                    
                    <c:forEach items="${kind_release}" var="kind_release">
                    <option><c:out value="${kind_release.kind}"/></option>
                    </c:forEach>
                    
                    </select>
                </div>
                <div class="col-1"></div>
                <div class="col-1"><h4>출고 물량</h4></div>
                <div class="col-2"><input type="text" name="td_volume" id='td_volume' onKeyUp=calculation();> PLT</div>
            </div><br><br><br>
            
<c:forEach items="${user}" var="user">
            <div class="row">
                <div class="col-2"></div>
                <div class="col-1"><h4>우편번호 </h4></div>
                <div class="col-2"><input type="text" id="postcode" class="address_input_1"  name="postcode" value="${user.postcode}"></div>
                <div class="col-2"><button type="button" onclick="execution_daum_address()">우편번호 검색</button><br></div>
                
            </div>
        
            <div class="row">
                <div class="col-2"></div>
                <div class="col-1"><h5>주소 </h5></div>
                <div class="col-6"><input type="text" id="address" class="address_input_2" name="td_address" value="${user.u_company_address}"><br></div>
            </div>

            <div class="row">
                <div class="col-2"></div>
                <div class="col-1"><h5>상세주소 </h5></div>
                <div class="col-5"><input type="text" id="detailAddress" class="address_input_3"  name="u_detail_address" value="${user.u_detail_address}"><br></div>
            </div><br><br><br>
</c:forEach>

            <div class="row">
                <div class="col-4"></div>
                <div class="col-1"><h5>예상 배송비 </h5></div>
                <div class="col-1"></div>
                <div class="col-4"><h5> <input type='text' name='delivery_fee' size='7' style="border:none; outline:none;" readonly><label>원</label></h5></div>
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
        
        
        <!-- 도로명 주소 api를 위한 스크립트 -->
        <script>
        
		/* 배송비 계산 */
        function calculation(){
			first = parseInt(table.td_volume.value);
 			second = 1000;
 			
 			table.delivery_fee.value = first*second;
 			
        	if (isNaN(table.delivery_fee.value)) { // 값이 없어서 NaN값이 나올 경우

        		table.delivery_fee.value = 0;

        		}
        }

        
        /* 다음 주소 연동 */
        function execution_daum_address(){
        	new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
                    
                	// 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수
     
                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }
     
                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                     // 주소변수 문자열과 참고항목 문자열 합치기
                        addr += extraAddr;
                    
                    } else {
                    	addr += ' ';
                    }
     
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    $(".address_input_1").val(data.zonecode);
            //$("[name=memberAddr1]").val(data.zonecode);    // 대체가능
            $(".address_input_2").val(addr);
            //$("[name=memberAddr2]").val(addr);            // 대체가능
                    // 커서를 상세주소 필드로 이동한다.
         // 상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
            $(".address_input_3").attr("readonly",false);
             $(".address_input_3").focus();
                }
            }).open();    
        }
        </script>


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
