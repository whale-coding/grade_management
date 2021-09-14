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
                        <h3 class="page-title">学生信息</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">学生信息</a></li>
                            <li class="breadcrumb-item active">学生列表</li>
                        </ul>
                    </div>

                    <div class="row">

                        <div class="col-md-6 ">
                            <form action="${pageContext.request.contextPath}/findStuBySno" method="post" class="form-inline">

                                <input type="text" name="sno" class="form-control"  placeholder="请输入要查询学生的学号" onkeyup="this.value=this.value.replace(/^\s+|\s+$/g,'')">

                                <button type="submit" class="btn btn-primary">查询</button>
                                <span style="color: red;font-weight: bold">
                                    ${error}
                                </span>
                            </form>

                        </div>

                        <div class="col-md-6 ">
                            <form action="${pageContext.request.contextPath}/findStuByName" method="post" class="form-inline">

                                <input type="text" name="name" class="form-control"  placeholder="请输入要查询学生的姓名"
                                       onkeyup="this.value=this.value.replace(/^\s+|\s+$/g,'')">

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
                                        <th>学号</th>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th>年龄</th>
                                        <th>入学时间</th>
                                        <th>所属学院</th>
                                        <th>所属专业</th>
                                        <th>所属年级</th>
                                        <th class="text-right">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <c:forEach var="stu" items="${pageInfo.list}">
                                        <tr >
                                            <td>${stu.sno}</td>
                                            <td>${stu.name}</td>
                                            <td>${stu.sex}</td>
                                            <td>${stu.age}</td>
                                            <td>${stu.enrollmentdate}</td>
                                            <td>${stu.departmentname}</td>
                                            <td>${stu.studentmajor}</td>
                                            <td>${stu.grade}</td>
                                            <td class="text-right">
                                                <div class="actions">
                                                    <a href="${pageContext.request.contextPath}/toUpdateStu?id=${stu.id}" class="btn btn-sm bg-success-light mr-2">
                                                        编辑
                                                        <i class="fas fa-pen"></i>
                                                    </a>
<%--                                                    <a href="${pageContext.request.contextPath}/delStu/${stu.id}" class="btn btn-sm bg-danger-light">--%>
<%--                                                        删除--%>
<%--                                                        <i class="fas fa-trash"></i>--%>
<%--                                                    </a>--%>

                                                    <a href="javascript:void(0)" onclick="deleteStudentByID(${stu.id})" class="btn btn-sm bg-danger-light">
                                                        <i class="fas fa-trash"></i>
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

                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findAllStu?pn=1">首页</a></li>

                                                <c:if test="${pageInfo.hasPreviousPage}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/findAllStu?pn=${pageInfo.pageNum-1}">
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
                                                            <a class="page-link" href="${pageContext.request.contextPath}/findAllStu?pn=${page_Num}">${page_Num }</a>
                                                        </li>

                                                    </c:if>

                                                </c:forEach>


                                                <c:if test="${pageInfo.hasNextPage}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/findAllStu?pn=${pageInfo.pageNum+1}">
                                                            <span aria-hidden="true">下一页</span>
                                                        </a>
                                                    </li>
                                                </c:if>

                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findAllStu?pn=${pageInfo.pages}">末页</a></li>
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

<script>
    function deleteStudentByID(id) {
        if (confirm("确定要删除该学生吗?")){
            location.href="${pageContext.request.contextPath}/delStu/"+id
        }
    }
</script>
</body>
</html>