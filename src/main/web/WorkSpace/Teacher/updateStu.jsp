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
                        <h3 class="page-title">修改学生信息</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">学生管理</a></li>
                            <li class="breadcrumb-item active">修改学生信息</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <div class="col-sm-12">

                    <div class="card">
                        <div class="card-body">
                            <form action="${pageContext.request.contextPath}/updateStu" method="post">
                                <input type="hidden" name="id" value="${student.id}">
                                <div class="row">

                                    <div class="col-12">
                                        <h5 class="form-title"><span>修改学生信息</span></h5>
                                    </div>


                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>学号</label>
                                            <input type="text" name="sno" value="${student.sno}" class="form-control" disabled>
                                        </div>
                                    </div>

                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>姓名</label>
                                            <input type="text" name="name" value="${student.name}" class="form-control" required pattern="^[\u4E00-\u9FA5A-Za-z]+$" oninput="check2(this)" >
                                        </div>
                                    </div>

                                    <%--姓名的验证--%>
                                    <script>
                                        function check2(obj) {
                                            var it=obj.validity;
                                            if (true==it.valueMissing){
                                                obj.setCustomValidity("姓名不能为空");
                                            }else if (true==it.patternMismatch){
                                                obj.setCustomValidity("只能输入中文和英文");
                                            }else {
                                                obj.setCustomValidity("");
                                            }
                                        }
                                    </script>


                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>性别</label>
                                            <label>
                                                <input checked="男" type="radio" name="sex"  value="男">&nbsp;男
                                            </label>
                                            &nbsp;&nbsp;&nbsp;
                                            <label>
                                                <input  type="radio" name="sex"  value="女">&nbsp;女
                                            </label>
                                        </div>
                                    </div>

                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>年龄</label>
                                            <input type="text" name="age" value="${student.age}" class="form-control" required pattern="^(?:[1-9][0-9]?|1[01][0-9]|120)$" oninput="check3(this)">
                                        </div>
                                    </div>

                                    <%--年龄的验证--%>
                                    <script>
                                        function check3(obj) {
                                            var it=obj.validity;
                                            if (true==it.valueMissing){
                                                obj.setCustomValidity("年龄不能为空");
                                            }else if (true==it.patternMismatch){
                                                obj.setCustomValidity("年龄输入不合法");
                                            }else {
                                                obj.setCustomValidity("");
                                            }
                                        }
                                    </script>


                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>入学时间</label>
                                            <div>
                                                <input type="date" name="enrollmentdate" value="${student.enrollmentdate}" class="form-control" disabled>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>所在学院</label>
                                            <input type="text" name="departmentname" value="${sessionScope.user.departmentname}" class="form-control" disabled>
                                        </div>
                                    </div>


                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>所属专业</label>
                                            <select class="form-control" name="studentmajor">
                                                <c:forEach var="profession" items="${list}">
                                                    <option>${profession.major}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>年级</label>
                                            <select class="form-control" name="grade">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                            </select>
                                        </div>
                                    </div>


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
