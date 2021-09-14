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
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">成绩管理</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">成绩管理</a></li>
                            <li class="breadcrumb-item active">录入成绩</li>
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
                                        <th>学号</th>
                                        <th>课程号</th>
                                        <th>学生名</th>
                                        <th>课程名</th >
                                        <th>修读类型</th>
                                        <th>成绩</th>
                                        <th class="text-right">录入成绩</th>

                                    </tr>
                                    </thead>
                                    <tbody>

                                    <c:forEach var="grade" items="${grades}">
                                        <tr >
                                            <td>${grade.sno}</td>
                                            <td>${grade.cno}</td>
                                            <td>${grade.student.name}</td>
                                            <td>${grade.course.name}</td>
                                            <td>${grade.type}</td>
                                            <td>${grade.grades}</td>

                                            <td class="text-right">
                                                <div class="actions">
                                                    <a href="${pageContext.request.contextPath}/addGrade?id=${grade.id}" class="btn btn-sm bg-success-light mr-2">
                                                        录入成绩
                                                        <i class="fas fa-pen"></i>
                                                    </a>
                                                </div>
                                            </td>

                                        </tr>
                                    </c:forEach>

                                    </tbody>
                                </table>


                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>

        <!-- Footer -->
        <jsp:include page="common-footer.jsp"></jsp:include>
        <!-- /Footer -->
    </div>
    <!-- /Page Wrapper -->

</div>
<!-- /Main Wrapper -->

<jsp:include page="common-js.jsp"></jsp:include>
</body>
</html>