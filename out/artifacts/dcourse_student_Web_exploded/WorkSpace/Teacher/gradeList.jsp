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
                            <li class="breadcrumb-item active">成绩列表</li>
                        </ul>
                    </div>

                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <div class="col-sm-12">

                    <div class="card card-table">
                        <div class="card-body">
                            <a class="btn btn-danger" href="${pageContext.request.contextPath}/findAllGradeBySno">按学号排序</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a class="btn btn-danger" href="${pageContext.request.contextPath}/findAllGradeByGrades">按成绩排序</a>

                            <div class="col-auto text-right float-right ml-auto">

                                <a href="${pageContext.request.contextPath}/exportExcel" class="btn btn-outline-primary mr-2"><i class="fas fa-download"></i>导出成绩为excel</a>

                            </div>

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
                                        <th class="text-right">操作</th>

                                    </tr>
                                    </thead>
                                    <tbody>

                                    <c:forEach var="grade" items="${pageInfo.list}">
                                        <tr >
                                            <td>${grade.sno}</td>
                                            <td>${grade.cno}</td>
                                            <td>${grade.student.name}</td>
                                            <td>${grade.course.name}</td>
                                            <td>${grade.type}</td>
                                            <td>${grade.grades}</td>

                                            <td class="text-right">
                                                <div class="actions">
                                                    <a href="${pageContext.request.contextPath}/toUpdateGrade?id=${grade.id}" class="btn btn-sm bg-success-light mr-2">
                                                        修改
                                                        <i class="fas fa-pen"></i>
                                                    </a>
                                                </div>
                                            </td>

                                        </tr>
                                    </c:forEach>

                                    </tbody>
                                </table>

                                <div class="row">
                                    <%--分页文字信息--%>
                                    <div class="col-md-6">
                                        当前第 ${pageInfo.pageNum }页,
                                        总共${pageInfo.pages }页,
                                        总共 ${pageInfo.total } 条记录
                                    </div>

                                    <div class="col-md-6" >


                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination justify-content-end">

                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findAllGrade?pn=1">首页</a></li>

                                                <c:if test="${pageInfo.hasPreviousPage}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/findAllGrade?pn=${pageInfo.pageNum-1}">
                                                            <span aria-hidden="true">上一页</span>
                                                        </a>
                                                    </li>
                                                </c:if>


                                                <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                                                    <c:if test="${page_Num == pageInfo.pageNum }">
                                                        <li class="page-item active">
                                                            <a class="page-link" href="#">${page_Num }</a>
                                                        </li>

                                                    </c:if>

                                                    <c:if test="${page_Num != pageInfo.pageNum }">
                                                        <li class="page-item">
                                                            <a class="page-link" href="${pageContext.request.contextPath}/findAllGrade?pn=${page_Num}">${page_Num }</a>
                                                        </li>

                                                    </c:if>

                                                </c:forEach>


                                                <c:if test="${pageInfo.hasNextPage}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/findAllGrade?pn=${pageInfo.pageNum+1}">
                                                            <span aria-hidden="true">下一页</span>
                                                        </a>
                                                    </li>
                                                </c:if>

                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findAllGrade?pn=${pageInfo.pages}">末页</a></li>
                                            </ul>
                                        </nav>


                                    </div>

                                </div>

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