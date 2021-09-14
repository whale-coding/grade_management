<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <jsp:include page="common-css.jsp"></jsp:include>
</head>
<body>

<!-- Main Wrapper -->
<div class="main-wrapper">

    <!-- Header -->
    <jsp:include page="common-header.jsp"></jsp:include>
    <!-- /Header -->

    <!-- Sidebar -->
    <jsp:include page="common-sidebar.jsp"></jsp:include>
    <!-- /Sidebar -->

    <!-- Page Wrapper -->
    <div class="page-wrapper">
        <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
                <div class="row">
                    <div class="col">
                        <h3 class="page-title">个人主页</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">个人主页</a></li>
                            <li class="breadcrumb-item active">个人主页</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <div class="col-md-12">
                    <div class="profile-header">
                        <div class="row align-items-center">
                            <div class="col-auto profile-image">
                                <a href="#">
                                    <img class="rounded-circle" alt="User Image" src="${pageContext.request.contextPath}/img/logo.jpg">
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="tab-content profile-tab-cont">

                        <!-- Personal Details Tab -->
                        <div class="tab-pane fade show active" id="per_details_tab">

                            <!-- Personal Details -->
                            <div class="row">
                                <div class="col-lg-10">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title d-flex justify-content-between">
                                                <span>个人信息</span>
                                            </h5>
                                            <div class="row">
                                                <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">你的姓名:</p>
                                                <p class="col-sm-9">${user.teachingsecretaryname}</p>
                                            </div>
                                            <div class="row">
                                                <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">所属学院:</p>
                                                <p class="col-sm-9">${user.departmentname}</p>
                                            </div>
                                            <div class="row">
                                                <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">登录账号:</p>
                                                <p class="col-sm-9">${user.teachingsecretaryid}</p>
                                            </div>

                                        </div>
                                    </div>

                                </div>

                            </div>
                            <!-- /Personal Details -->

                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>

    <!-- /Page Wrapper -->

</div>
<!-- /Main Wrapper -->




<jsp:include page="common-js.jsp"></jsp:include>
</body>
</html>