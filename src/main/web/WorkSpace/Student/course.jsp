<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>我的课程</title>

	<!-- Favicon -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.png">

	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;0,700;1,400&display=swap">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css">

	<!-- Fontawesome CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/fontawesome/css/all.min.css">

	<!-- Main CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

	<!-- Datatables CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/datatables/datatables.min.css">
</head>
<body>

<!-- Main Wrapper -->
<div class="main-wrapper">

	<!-- Header -->
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
					<span class="user-img"><img class="rounded-circle" src="${pageContext.request.contextPath}/assets/img/profiles/avatar-01.jpg" width="31" alt="Ryan Taylor"></span>
				</a>
				<div class="dropdown-menu">
					<div class="user-header">
						<div class="avatar avatar-sm">
							<img src="${pageContext.request.contextPath}/assets/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle">
						</div>
						<div class="user-text">
							<h6>${SingleStudent.name}</h6>
							<p class="text-muted mb-0">${SingleStudent.sno}</p>
						</div>
					</div>
					<a class="dropdown-item" href="${pageContext.request.contextPath}/WorkSpace/profile-stu.jsp">我的资料</a>
					<a class="dropdown-item" href="${pageContext.request.contextPath}/Login.jsp">退出系统</a>
				</div>
			</li>
			<!-- /User Menu -->
		</ul>
		<!-- /Header Right Menu -->
	</div>
	<!-- /Header -->

	<!-- Sidebar -->
	<div class="sidebar" id="sidebar">
		<div class="sidebar-inner slimscroll">
			<div id="sidebar-menu" class="sidebar-menu">
				<ul>
					<li class="menu-title">
						<span>主菜单</span>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/WorkSpace/index-stu.jsp"><i class="fas fa-th-large"></i> <span>返回主页</span></a>
					</li>
					<li class="active"><a href="javascript:void(0)" onclick="Studentcourse(${SingleStudent.sno})"><i class="fas fa-book-reader"></i> <span>课程</span></a></li>
					<li><a href="javascript:void(0)" onclick="Studentexam(${SingleStudent.sno})"><i class="fas fa-table"></i> <span>考试</span></a></li>
					<li><a href="javascript:void(0)" onclick="Studentgrades(${SingleStudent.sno})"><i class="fas fa-clipboard-list"></i> <span>成绩</span></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- /Sidebar -->


	<!-- Page Wrapper -->
	<div class="page-wrapper">
		<div class="content container-fluid">

			<!-- Page Header -->
			<div class="page-header">
				<div class="row">
					<div class="col">
						<h3 class="page-title">所有课程</h3>
						<ul class="breadcrumb">
							<li class="breadcrumb-item">2020-2021学年春季学期</li>
							<li class="breadcrumb-item active">已排课程</li>
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
								<table  class="table table-hover table-center mb-0 datatable">
									<thead>
									<tr>
										<th>课程号</th>
										<th>课程名</th>
										<th>开课单位</th>
										<th>上课教师</th>
										<th>学分</th>
										<th>选课类型</th>
										<th>课程性质</th>
										<th>开课学期</th>
									</tr>
									</thead>
									<tbody>
									<c:forEach items="${courseDetail}" var="course">
										<tr>
											<td>${course.cno}</td>
											<td>${course.name}</td>
											<td>${course.departmentname}</td>
											<td>${course.tname}</td>
											<td>${course.credit}</td>
											<td>${course.type}</td>
											<td>${course.nature}</td>
											<td>${course.semester}</td>
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
	</div>
	<!-- /Page Wrapper -->

</div>
<!-- /Main Wrapper -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/assets/js/jquery-3.5.1.min.js"></script>

<!-- Bootstrap Core JS -->
<script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

<!-- Slimscroll JS -->
<script src="${pageContext.request.contextPath}/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>


<!-- Custom JS -->
<script  src="${pageContext.request.contextPath}/assets/js/script.js"></script>
<script>
	function aClick () {
		location.href="${pageContext.request.contextPath}/logoutUser"
	}
	function Studentexam(Sno) {
		location.href="${pageContext.request.contextPath}/Studentexam?Sno="+Sno
	}
	function Studentcourse(Sno) {
		location.href="${pageContext.request.contextPath}/Studentcourse?Sno="+Sno
	}
	function Studentgrades(Sno) {
		location.href="${pageContext.request.contextPath}/Studentgrades?Sno="+Sno
	}
</script>

</body>
</html>