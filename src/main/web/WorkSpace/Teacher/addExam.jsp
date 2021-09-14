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
                            <li class="breadcrumb-item active">新增考试</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <div class="col-sm-12">

                    <div class="card">
                        <div class="card-body">
                            <form action="${pageContext.request.contextPath}/addExam" method="post">
                                <div class="row">

                                    <div class="col-12">
                                        <h5 class="form-title"><span>新增考试</span></h5>
                                    </div>

                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>课程号</label>
                                            <input type="text" name="cno" class="form-control" placeholder="请输入课程号" maxlength="8" required pattern="^[A-Z]{2}(?![a-zA-Z]+$)[a-zA-Z\d]{5,}$" oninput="check1(this)">
                                        </div>
                                    </div>

                                    <script>
                                        function check1(obj) {
                                            var it=obj.validity;
                                            if (true==it.valueMissing){
                                                obj.setCustomValidity("课程号不能为空");
                                            }else if (true==it.patternMismatch){
                                                obj.setCustomValidity("课程号输入不合法");
                                            }else {
                                                obj.setCustomValidity("");
                                            }
                                        }
                                    </script>


                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>课程名</label>
                                            <input type="text" name="name" class="form-control" placeholder="请输入课程名" required pattern="^[\u4E00-\u9FA5A-Za-z]+$" oninput="check2(this)">
                                        </div>
                                    </div>

                                    <script>
                                        function check2(obj) {
                                            var it=obj.validity;
                                            if (true==it.valueMissing){
                                                obj.setCustomValidity("课程名不能为空");
                                            }else if (true==it.patternMismatch){
                                                obj.setCustomValidity("课程名输入不合法");
                                            }else {
                                                obj.setCustomValidity("");
                                            }
                                        }
                                    </script>

                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>学分</label>
                                            <input type="text" name="credit" class="form-control" placeholder="请输入学分" required pattern="^\+?[1-9][0-9]*$" maxlength="2" oninput="check3(this)">
                                        </div>
                                    </div>

                                    <script>
                                        function check3(obj) {
                                            var it=obj.validity;
                                            if (true==it.valueMissing){
                                                obj.setCustomValidity("学分不能为空");
                                            }else if (true==it.patternMismatch){
                                                obj.setCustomValidity("学分输入不正确");
                                            }else {
                                                obj.setCustomValidity("");
                                            }
                                        }
                                    </script>


                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>课程性质</label>
                                            <select class="form-control" name="type">
                                                <option>必修课</option>
                                                <option>选修课</option>
                                                <option>任选课</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>课程类别</label>
                                            <label>
                                                <input checked="考试" type="radio" name="nature"  value="考试">&nbsp;考试
                                            </label>
                                            &nbsp;&nbsp;&nbsp;
                                            <label>
                                                <input  type="radio" name="nature"  value="考查">&nbsp;考查
                                            </label>
                                        </div>
                                    </div>



                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>学期</label>
                                            <select class="form-control" name="semester">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                                <option>6</option>
                                                <option>7</option>
                                                <option>8</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>开课学院</label>
                                            <input type="text" name="departmentname" class="form-control" value="${sessionScope.user.departmentname}" >
                                        </div>
                                    </div>


                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <label>考试时间</label>
                                            <input type="text" name="examdate" class="form-control" placeholder="请按yyyy-MM-dd格式输入" required pattern="^((?:19|20)\d\d)-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$" oninput="check4(this)">
                                        </div>
                                    </div>

                                    <%--日期的验证--%>
                                    <script>
                                        function check4(obj) {
                                            var it=obj.validity;
                                            if (true==it.valueMissing){
                                                obj.setCustomValidity("入学时间不能为空");
                                            }else if (true==it.patternMismatch){
                                                obj.setCustomValidity("时间格式不正确");
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

