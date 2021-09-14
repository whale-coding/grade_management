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
                        <h3 class="page-title">教师管理</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">教师管理</a></li>
                            <li class="breadcrumb-item active">教师列表</li>
                        </ul>
                    </div>

                    <div class="text-center">

                        <form action="${pageContext.request.contextPath}/findTeaByTnoOrDeptName" method="post" class="form-inline">

                            <input type="text" name="tno" class="form-control" placeholder="请输入要查询教师的工号"
                                   onkeyup="this.value=this.value.replace(/^\s+|\s+$/g,'')">

                            <button type="submit" class="btn btn-primary">查询</button>

                            <span style="color: red;font-weight: bold">${error}</span>
                        </form>


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
                                        <th>工号</th>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th>所属学院</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <c:forEach var="teacher" items="${pageInfo.list}">
                                        <tr >
                                            <td>${teacher.tno}</td>
                                            <td>${teacher.name}</td>
                                            <td>${teacher.sex}</td>
                                            <td>${teacher.departmentname}</td>

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

                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findAllTea?pn=1">首页</a></li>

                                                <c:if test="${pageInfo.hasPreviousPage}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/findAllTea?pn=${pageInfo.pageNum-1}">
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
                                                            <a class="page-link" href="${pageContext.request.contextPath}/findAllTea?pn=${page_Num}"> ${page_Num } </a>
                                                        </li>

                                                    </c:if>

                                                </c:forEach>


                                                <c:if test="${pageInfo.hasNextPage}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/findAllTea?pn=${pageInfo.pageNum+1}">
                                                            <span aria-hidden="true">下一页</span>
                                                        </a>
                                                    </li>
                                                </c:if>

                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findAllTea?pn=${pageInfo.pages}">末页</a></li>
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