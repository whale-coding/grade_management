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
                        <h3 class="page-title">考试信息</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">考试信息</a></li>
                            <li class="breadcrumb-item active">考试安排</li>
                        </ul>
                    </div>
                    <div class="row">

                        <div class="col-md-6 ">
                            <form action="${pageContext.request.contextPath}/findExamByCno" method="post" class="form-inline">

                                <input type="text" name="cno" class="form-control" placeholder="请输入要查询考试的课程号"
                                       onkeyup="this.value=this.value.replace(/^\s+|\s+$/g,'')">

                                <button type="submit" class="btn btn-primary">查询</button>
                                <span style="color: red;font-weight: bold">
                                    ${error}
                                </span>
                            </form>

                        </div>

                        <div class="col-md-6 ">
                            <form action="${pageContext.request.contextPath}/findExamByName" method="post" class="form-inline">

                                <input type="text" name="name" class="form-control" onkeyup="this.value=this.value.replace(/^\s+|\s+$/g,'')"  placeholder="请输入要查询考试的课程名">

                                <button type="submit" class="btn btn-primary">查询</button>
                                <span style="color: red;font-weight: bold">${error2}</span>
                            </form>

                        </div>

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
                                        <th>课程类别</th>
                                        <th>课程性质</th>
                                        <th>学分</th>
                                        <th>学期</th>
                                        <th>开课学院</th>

                                        <th>考试时间</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <c:forEach var="exam" items="${pageInfo.list}">
                                        <tr >
                                            <td>${exam.cno}</td>
                                            <td>${exam.name}</td>
                                            <td>${exam.type}</td>
                                            <td>${exam.nature}</td>
                                            <td>${exam.credit}</td>
                                            <td>${exam.semester}</td>
                                            <td>${exam.departmentname}</td>

                                            <td>${exam.examdate}</td>

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

                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findAllExam?pn=1">首页</a></li>

                                                <c:if test="${pageInfo.hasPreviousPage}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/findAllExam?pn=${pageInfo.pageNum-1}">
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
                                                            <a class="page-link" href="${pageContext.request.contextPath}/findAllExam?pn=${page_Num}">${page_Num }</a>
                                                        </li>

                                                    </c:if>

                                                </c:forEach>


                                                <c:if test="${pageInfo.hasNextPage}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/findAllExam?pn=${pageInfo.pageNum+1}">
                                                            <span aria-hidden="true">下一页</span>
                                                        </a>
                                                    </li>
                                                </c:if>

                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findAllExam?pn=${pageInfo.pages}">末页</a></li>
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