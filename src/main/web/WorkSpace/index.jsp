<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>学生信息管理系统</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.png">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;0,700;1,400&display=swap">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/fontawesome/css/all.min.css">

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
                            <h6>${user.userName}</h6>
                            <p class="text-muted mb-0">${UType}</p>
                        </div>
                    </div>
                    <a class="dropdown-item" href="javascript:void(0)" onclick="aClick()">退出系统</a>
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
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/WorkSpace/index.jsp"><i class="fas fa-th-large"></i> <span>返回主页</span></a>
                    </li>
                    <li class="submenu">
                        <a href="#"><i class="fas fa-user-graduate"></i> <span>学生信息</span> <span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="javascript:void(0)" onclick="AdminStudents()">学生列表</a></li>
                            <li><a href="javascript:void(0)" onclick="AdminAddStudent()">添加学生</a></li>
                        </ul>
                    </li>

                    <li class="submenu">
                        <a href="#"><i class="fas fa-chalkboard-teacher"></i> <span> 教师信息</span> <span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/WorkSpace/Admin/teachers.jsp">教师列表</a></li>
                            <li><a href="${pageContext.request.contextPath}/WorkSpace/Admin/teacher-details.jsp">教师视图</a></li>
                            <li><a href="${pageContext.request.contextPath}/WorkSpace/Admin/add-teacher.jsp">添加教师</a></li>
                            <li><a href="${pageContext.request.contextPath}/WorkSpace/Admin/edit-teacher.jsp">删除教师</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="${pageContext.request.contextPath}/WorkSpace/holiday.jsp"><i class="fas fa-holly-berry"></i> <span>假期</span></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/WorkSpace/exam.jsp"><i class="fas fa-clipboard-list"></i> <span>考试</span></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/WorkSpace/time-table.jsp"><i class="fas fa-table"></i> <span>时间表</span></a>
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
                <div class="row">
                    <div class="col-sm-12">
                        <h3 class="page-title">Welcome Admin!</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
            <!-- /Page Header -->
        <!-- Footer -->
        <footer>
            <p>Copyright © 2021&nbsp;By <a href="#">Team</a></p>
        </footer>
        <!-- /Footer -->

    </div>
    <!-- /Page Wrapper -->

</div>
<!-- /Main Wrapper -->

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

<script>
    function aClick () {
        location.href="${pageContext.request.contextPath}/logoutUser"
    }
    function AdminStudents() {
        location.href="${pageContext.request.contextPath}/AdminStudents"
    }
    function AdminAddStudent() {
        location.href="${pageContext.request.contextPath}/AdminAdd"
    }
</script>

</body>
</html>