<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
</head>

<body>
<div class="page login-page">
    <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
            <div class="row">
                <!-- Logo & Information Panel-->
                <div class="col-lg-6">
                    <div class="info d-flex align-items-center">
                        <div class="content">
                            <div class="logo">
                                <h1>欢迎登录</h1>
                            </div>
                            <p>学生成绩信息管理系统</p>
                        </div>
                    </div>
                </div>
                <!-- Form Panel    -->
                <div class="col-lg-6 bg-white">
                    <div class="form d-flex align-items-center">
                        <div class="content">
                            <form method="post" action="loginUser" class="form-validate" id="loginFrom">
                                <div class="form-group">
                                    <input id="login-username" type="text" name="userName" required
                                           data-msg="请输入用户名" placeholder="用户名" class="input-material">
                                </div>
                                <div class="form-group">
                                    <input id="login-password" type="password" name="passWord" required
                                           data-msg="请输入密码" placeholder="密码" class="input-material">
                                </div>
                                <button id="login" type="submit" class="btn btn-primary">登录</button>
                                <div style="margin-top: -40px;">
                                    <div class="custom-control custom-checkbox " style="float: right;">
                                        <input type="checkbox" class="custom-control-input" id="check2" name="UType" value="student" onclick="selectCheckOne(this)">
                                        <label class="custom-control-label" for="check2">学生</label>
                                    </div>
                                    <div class="custom-control custom-checkbox " style="float: right;">
                                        <input type="checkbox" class="custom-control-input" id="check1" name="UType" value="teacher" onclick="selectCheckOne(this)">
                                        <label class="custom-control-label" for="check1">教学秘书&nbsp;&nbsp;</label>
                                    </div>
                                    <div class="custom-control custom-checkbox " style="float: right;">
                                        <input type="checkbox" class="custom-control-input" id="check3" name="UType" value="admin" onclick="selectCheckOne(this)">
                                        <label class="custom-control-label" for="check3">管理员&nbsp;&nbsp;</label>
                                    </div>
                                </div>
                            </form>

                            <script>
                                function selectCheckOne(obj){
                                    var checks = document.getElementsByName("UType");
                                    if(obj.checked){
                                        for( var i=0;i<checks.length;i++){
                                            checks[i].checked=false; } obj.checked=true;
                                    }else{
                                        for( var i=0;i<checks.length;i++){
                                            checks[i].checked=false; }
                                    }
                                }
                            </script>

                            <br />
                            <p style="color: red" id="msg">${msg}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="https://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/bootstrap/4.2.1/bootstrap.min.js"></script>
<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
<!--表单验证-->
<!-- Main File-->
<script src="js/front.js"></script>
<script>
    $(function () {

        $("#login").click(function () {
            var userName = $("#login-username").val();
            var passWord = $("#login-password").val();
            /*获取当前输入的账号密码*/
            localStorage.setItem("userName", userName)
            localStorage.setItem("passWord", passWord)
        })
    })
</script>
</body>

</html>
