<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="header">


    <a href="javascript:void(0);" id="toggle_btn">
        <i class="fas fa-align-left"></i>
    </a>

    <!-- Mobile Menu Toggle -->
    <a class="mobile_btn" id="mobile_btn">
        <i class="fas fa-bars"></i>
    </a>
    <!-- /Mobile Menu Toggle -->

    <!-- Header Right Menu -->
    <ul class="nav user-menu">
        <!-- User Menu -->
        <li class="nav-item dropdown has-arrow">
            <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                <span class="user-img"><img class="rounded-circle" src="${pageContext.request.contextPath}/img/logo.jpg" width="31" alt="Ryan Taylor"></span>
            </a>
            <div class="dropdown-menu">
                <div class="user-header">
                    <div class="avatar avatar-sm">
                        <img src="${pageContext.request.contextPath}/img/logo.jpg" alt="User Image" class="avatar-img rounded-circle">
                    </div>
                    <div class="user-text">
                        <h6>${TeachingSecretary.teachingsecretaryname}</h6>
                        <p class="text-muted mb-0">${TeachingSecretary.teachingsecretaryid}</p>
                    </div>
                </div>
                <a class="dropdown-item" href="${pageContext.request.contextPath}/person-home">我的资料</a>
                <a class="dropdown-item" href="${pageContext.request.contextPath}/Login.jsp">退出系统</a>
            </div>
        </li>
        <!-- /User Menu -->
    </ul>
    <!-- /Header Right Menu -->
</div>
