<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>我的课程</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.png">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;0,700;1,400&display=swap">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/fontawesome/css/all.min.css">

    <!-- Datatables CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/datatables/datatables.min.css">

    <!-- Main CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>
<body>

<!-- Main Wrapper -->
<div class="main-wrapper">

    <!-- Header -->
    <div class="header">


        <a href="javascript:void(0);" id="toggle_btn">
            <i class="fas fa-align-left"></i>
        </a>

        <!-- Search Bar -->
        <div class="top-nav-search">
            <form>
                <input type="text" class="form-control" placeholder="搜索">
                <button class="btn" type="submit"><i class="fas fa-search"></i></button>
            </form>
        </div>
        <!-- /Search Bar -->

        <!-- Mobile Menu Toggle -->
        <a class="mobile_btn" id="mobile_btn">
            <i class="fas fa-bars"></i>
        </a>
        <!-- /Mobile Menu Toggle -->

        <!-- Header Right Menu -->
        <ul class="nav user-menu">
            <!-- User Menu -->
            <li class="nav-item dropdown has-arrow">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                    <span class="user-img"><img class="rounded-circle" src="${pageContext.request.contextPath}/assets/img/profiles/avatar-01.jpg" width="31" alt="Ryan Taylor"></span>
                </a>
                <div class="dropdown-menu">
                    <div class="user-header">
                        <div class="avatar avatar-sm">
                            <img src="${pageContext.request.contextPath}/assets/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle">
                        </div>
                        <div class="user-text">
                            <h6></h6>
                            <p class="text-muted mb-0"></p>
                        </div>
                    </div>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/WorkSpace/profile.jsp">我的资料</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/Login.jsp">退出系统</a>
                </div>
            </li>
            <!-- /User Menu -->
        </ul>
        <!-- /Header Right Menu -->
    </div>
    <!-- /Header -->


    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <div class="sidebar-inner slimscroll">
            <div id="sidebar-menu" class="sidebar-menu">
                <ul>
                    <li class="menu-title">
                        <span>主菜单</span>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/WorkSpace/index-stu.jsp"><i class="fas fa-th-large"></i> <span>主页</span></a>
                    </li>
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/WorkSpace/Student/course.jsp"><i class="fas fa-holly-berry"></i> <span>课程</span></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/WorkSpace/Student/exam.jsp"><i class="fas fa-clipboard-list"></i> <span>考试</span></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/WorkSpace/Student/grades.jsp"><i class="fas fa-table"></i> <span>时间表</span></a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
    <!-- /Sidebar -->

    <!-- Page Wrapper -->
    <div class="page-wrapper">
        <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">所有课程</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item">2020-2021学年春季学期</li>
                            <li class="breadcrumb-item active">已排课程</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <div class="col-sm-12">

                    <div class="card card-table">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-center mb-0 datatable">
                                    <thead>
                                    <tr>
                                        <th>课程号</th>
                                        <th>课程名</th>
                                        <th>开课单位</th>
                                        <th>上课教师</th>
                                        <th>学分</th>
                                        <th>教室名称</th>
                                        <th>选课类型</th>
                                        <th>课程性质</th>
                                        <th>开课学期</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
<!-- /Main Wrapper -->
</div>
<!-- /Page Wrapper -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/assets/js/jquery-3.5.1.min.js"></script>

<!-- Bootstrap Core JS -->
<script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

<!-- Slimscroll JS -->
<script src="${pageContext.request.contextPath}/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Chart JS -->
<script src="${pageContext.request.contextPath}/assets/plugins/apexchart/apexcharts.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/apexchart/chart-data.js"></script>

<!-- Custom JS -->
<script  src="${pageContext.request.contextPath}/assets/js/script.js"></script>

</body>
</html>