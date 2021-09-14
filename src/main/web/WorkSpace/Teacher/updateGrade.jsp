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
                        <h3 class="page-title">修改成绩</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">成绩管理</a></li>
                            <li class="breadcrumb-item active">修改成绩</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <div class="col-sm-12">

                    <div class="card">
                        <div class="card-body">
                            <form action="${pageContext.request.contextPath}/updateGrade" method="post">
                                <input type="hidden" name="id" value="${sc.id}">
                                <div class="row">

                                    <div class="col-12">
                                        <h5 class="form-title"><span>修改成绩</span></h5>
                                    </div>


                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>学号</label>
                                            <input type="text" name="sno" value="${sc.sno}" class="form-control" disabled>
                                        </div>
                                    </div>

                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>课程号</label>
                                            <input type="text" name="cno" value="${sc.cno}" class="form-control" disabled>
                                        </div>
                                    </div>

                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>修读类型</label>
                                            <input type="text" name="type" value="${sc.type}" class="form-control" disabled>
                                        </div>
                                    </div>

                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>分数</label>
                                            <input type="text" name="grades" value="${sc.grades}" class="form-control" required pattern="^1?[1-9]?\d([.]\d)?$" oninput="check(this)">
                                        </div>
                                    </div>
                                    <script>
                                        function check(obj) {
                                            var it=obj.validity;
                                            if (true==it.valueMissing){
                                                obj.setCustomValidity("成绩不能为空");
                                            }else if (true==it.patternMismatch){
                                                obj.setCustomValidity("成绩在0~100之间");
                                            }else {
                                                obj.setCustomValidity("");
                                            }
                                        }
                                    </script>


                                    <div class="col-12">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="common-footer.jsp"></jsp:include>
        </div>
    </div>
    <!-- /Page Wrapper -->

</div>
<!-- /Main Wrapper -->


<jsp:include page="common-js.jsp"></jsp:include>
</body>
</html>
