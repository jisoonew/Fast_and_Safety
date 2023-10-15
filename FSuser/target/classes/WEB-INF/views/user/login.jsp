<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>로그인</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="/resources/css/user/login.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
  </head>
  <body>

    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container mt-5">
                        <div class="row justify-content-center mx-auto">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header">
                                        <h3 class="text-center font-weight-light my-4">로그인</h3>
                                    </div>
                                    <div class="card-body">
                                        <form id="login_form" method="post">
                                            <div class="form-floating mb-3">
                                                <input class="form-control id_input" name="u_id"/>
                                                <label for="inputEmail">아이디</label>
                                            </div>
    
                                            <div class="form-floating mb-3">
                                                <input class="form-control pw_input" name="u_pw"/>
                                                <label for="inputPassword">비밀번호</label>
                                            </div>
                                            <c:if test = "${result == 0 }">
                                                <div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
                                            </c:if>
    
                                                <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                    <a class="small" href="/user/find_id">아이디 찾기</a>
                                                    <a class="small" href="/user/find_pw">비밀번호 찾기</a>
                                                </div>
                                                <div class="d-grid gap-2 col-6 mx-auto mt-3">
                                                    <button class="btn btn-primary login_button" type="button" href="main_login">Login</button>
                                                </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"> 아직 회원이 아니신가요? <a href="/user/join">회원가입</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2023</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>

        <script>
 
            /* 로그인 버튼 클릭 메서드 */
            $(".login_button").click(function(){
                
                //alert("로그인 버튼 작동");
                /* 로그인 메서드 서버 요청 */
                $("#login_form").attr("action", "/user/login");
                $("#login_form").submit();
            });
         
        </script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  </body>
</html>