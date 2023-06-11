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
        <title>회원가입</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="resources/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="bg-primary">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-7">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">회원가입</h3>
                                </div>
                                <div class="card-body">
                                    <form>
                                        <div class="form-floating mb-3">
                                            <input class="form-control" id="inputName" type="Id" placeholder="이름 입력" />
                                            <label for="inputName">이름</label>
                                        </div>
                                        <div class="form-floating mb-3 mb-md-0">
                                            <input class="form-control" id="inputId" type="Id" placeholder="ID" />
                                            <label for="inputID">ID</label>
                                        </div>

                                        <div class="form-floating mb-3 mb-md-0 mt-3">
                                            <input class="form-control" id="inputPassword" type="password"
                                                placeholder="Create a password" />
                                            <label for="inputPassword">Password</label>
                                        </div>

                                        <div class="form-floating mb-3 mb-md-0 mt-3">
                                            <input class="form-control" id="inputPasswordConfirm" type="password"
                                                placeholder="Confirm password" />
                                            <label for="inputPasswordConfirm">Confirm Password</label>
                                        </div>

                                        <div class="mt-2 mb-0">
                                            <div class="d-grid"><a class="btn btn-primary btn-block">비밀번호 확인</a></div>
                                        </div>

                                        <div class="form-floating mb-3 mt-3">
                                            <input class="form-control" id="inputEmail" type="email"
                                                placeholder="name@example.com" />
                                            <label for="inputEmail">이메일</label>
                                        </div>

                                        <div class="form-floating mb-3 mt-3">
                                            <input class="form-control" id="inputEmail" type="Com"
                                                placeholder="회사명을 입력해주세요" />
                                            <label for="inputCom">회사명</label>
                                        </div>

                                        <div class="form-floating mb-1 mt-3">
                                            <input class="form-control" id="inputAddress" type="Address"
                                                placeholder="회사명을 입력해주세요" />
                                            <label for="inputAddress">주소</label>
                                        </div>
                                    
                                        <div class="mb-0">
                                            <div class="d-grid"><a class="btn btn-primary btn-block">검색</a></div>
                                        </div>

                                        <div class="form-floating mb-3 mt-1">
                                            <input class="form-control" id="inputAddress" type="Address"
                                                placeholder="회사명을 입력해주세요" />
                                            <label for="inputAddress">상세주소</label>
                                        </div>

                                        <div class="mt-4 mb-0">
                                            <div class="d-grid"><a class="btn btn-primary btn-block" href="login">회원가입</a></div>
                                        </div>

                                        <div class="card-footer text-center py-2">
                                            <div class="small">계정이 있으신가요? <a href="login">로그인</a></div>
                                        </div>
                                </div>
                            </div>
                            </form>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
    </script>
    <script src="js/scripts.js"></script>
</body>

</html>
