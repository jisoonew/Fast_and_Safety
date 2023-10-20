<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>���� ������ - ��й�ȣ ����</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="/resources/navbar/navbar.css" rel="stylesheet" />
    <link href="/resources/mypage/sidebar.css" rel="stylesheet" />
    <link href="/resources/mypage/pw_change.css" rel="stylesheet" />
</head>

<body class="sb-nav-fixed">
    <nav class="navbar sb-topnav navbar-expand">
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0 ps-3" id="sidebarToggle" href="#"><i
                class="fas fa-bars"></i></button>
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="/main_login">
            <h1>FS</h1>
        </a>
        <!-- Company Introduction Dropdown -->
        <ul class="navbar-nav me-auto ">
            <a class="navbar-brand ps-3" href="/navbar/introduce">
                ȸ�� �Ұ�
            </a>

            <!-- Services Dropdown -->
            <div class="dropdown">
                <button class="nav-link dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    ����
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/navbar/product_storage">����ǰ�� �� ���ǻ���</a></li>
                    <hr class="dropdown-divider" />
                    <li><a class="dropdown-item" href="/navbar/service_step">����� ����</a></li>
                </ul>
            </div>

            <!-- Warehouses Dropdown -->
            <a class="navbar-brand ps-3" href="/navbar/storage_reserve">
                <!-- ��� �޽��� -->
                â��
            </a>

            <div class="dropdown">
                <button class="nav-link dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    ���
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/navbar/today_delivery">���� ���</a></li>
                    <hr class="dropdown-divider" />
                    <li><a class="dropdown-item" href="/navbar/routine_delivery">���� ���</a></li>
                    <hr class="dropdown-divider" />
                    <li><a class="dropdown-item" href="/navbar/reserve_delivery">���� ���</a></li>
                </ul>
            </div>

            <!-- ask Dropdown -->
            <a class="navbar-brand ps-3" href="/navbar/inquiry">
                ����
            </a>
        </ul>

        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="mypage_today_delivery" role="button"
                    data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="mypage_today_delivery">My Page</a></li>
                    <li>
                        <hr class="dropdown-divider" />
                    </li>
                    <li><a class="dropdown-item" href="/user/logout.do">Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <!--������� �׺���̼� ��-->

        <!-- ���⼭���� ���̵� �� -->
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">
                            <h3>MY PAGE</h3>
                        </div>
                        <a class="nav-link collapsed" href="/mypage/today_delivery" data-bs-toggle="collapse"
                            data-bs-target="#collapse1" aria-expanded="false" aria-controls="collapse1">
                            <div class="sb-nav-link-icon"></div>
                            �̿볻��
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapse1" aria-labelledby="headingOne"
                            data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="/mypage/today_delivery">���� ���</a>
                                <a class="nav-link" href="/mypage/regular_delivery">���� ���</a>
                                <a class="nav-link" href="/mypage/reserve_delivery">���� ���</a>
                            </nav>
                        </div>

                        <a class="nav-link" href="/mypage/storage">
                            <div class="sb-nav-link-icon"></div>
                            MY â��
                        </a>

                        <a class="nav-link collapsed" href="/mypage/information_details" data-bs-toggle="collapse"
                            data-bs-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
                            <div class="sb-nav-link-icon"></div>
                            ȸ�� ����
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapse2" aria-labelledby="headingOne"
                            data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="/mypage/information_details">ȸ�� ���� ��</a>
                                <a class="nav-link" href="/mypage/pay">���� ���</a>

                            </nav>
                        </div>

                        <a class="nav-link collapsed" href="/mypage/ask" data-bs-toggle="collapse" data-bs-target="#collapse3"
                            aria-expanded="false" aria-controls="collapse3">
                            <div class="sb-nav-link-icon"></div>
                            Q & A
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapse3" aria-labelledby="headingOne"
                            data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="/mypage/ask">1:1 ���� �ϱ�</a>
                                <a class="nav-link" href="/mypage/ask_answer">���� ����</a>
                            </nav>
                        </div>

                        <a class="nav-link" href="/mypage/delete">
                            <div class="sb-nav-link-icon"></div>
                            ȸ�� Ż��
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- ������� ���̵�� -->

    <form id="form">
        <div id="container_content">

            <h1 class="mt-5" id="content_title2">��й�ȣ ����</h1>

            <div id="container_pw_change">
                <div id="pw_change1">
                    <a id="pw_text1"><ins>������ ��й�ȣ�� �� ������ ��ȣ</ins></a><a id="pw_text4">�ϼ���.</a></div>
                <a id="pw_text2">�ٸ� ���̵�/����Ʈ���� ����� �� ���� ��й�ȣ</a>
                <div id="pw_change2">
                    <a id="pw_text3">������ ����� �� ���� ��й�ȣ</a><a id="pw_text5">�� �����մϴ�.</a></div>
            </div>

            <div id="container_pw_text">
                <input class="form-control" type="text" placeholder="���� ��й�ȣ" aria-label="default input example">
                <input id="pw_text_input1" class="form-control" type="text" placeholder="�� ��й�ȣ"
                    aria-label="default input example">
                <input id="pw_text_input2" class="form-control" type="text" placeholder="�� ��й�ȣ Ȯ��"
                    aria-label="default input example">
            </div>

            <div id="container_pw_btn">
                <div id="cencle_dtn"><button type="button" class="btn btn-outline-dark"
                        style="width: 120px;">���</button></div>
                <div id="check_dtn"><button type="button" class="btn btn-outline-dark" style="width: 120px;">Ȯ��</button>
                </div>
            </div>
        </div>
    </form>

    <script src="/resources/js/sidebar.js"></script>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>

</html>