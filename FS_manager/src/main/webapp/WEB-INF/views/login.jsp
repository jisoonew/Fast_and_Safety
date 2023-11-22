<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/css/login.css">
                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <title>로그인</title>
</head>

<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="mt-5">로그인</h2>
                <form id="login_form" method="post">
                    <div class="form-group">
                        <label for="username">아이디</label>
                        <input type="text" id="username" name="m_id" class="id_input form-control">
                    </div>

                    <div class="form-group">
                        <label for="password">비밀번호</label>
                        <input type="text" id="password" name="m_pw" class="pw_input form-control">
                    </div>
                    
                    <c:if test = "${result == 0 }">
                    	<div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
                    </c:if>
                    
                    
                    <input type="button" class="login_btn btn btn-primary" value="로그인">
                </form>
            </div>
        </div>
    </div>
    

    <!-- 부트스트랩 JavaScript 및 jQuery 파일 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
    
    <script>
    /* 로그인 버튼 클릭 메서드 */
    $(".login_btn").click(function(){
        
        //alert("로그인 버튼 작동");
        
        /* 로그인 메서드 서버 요청 */
        $("#login_form").attr("action", "/login");
        $("#login_form").submit();
        
    });
 
</script>

</body>

</html>