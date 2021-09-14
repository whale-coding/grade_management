<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<div>
    <div class="sidebar" id="sidebar">
        <div class="sidebar-inner slimscroll">
            <div id="sidebar-menu" class="sidebar-menu">
                <ul>
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/index-tec"><i class="fas fa-th-large"></i> <span>首页</span></a>
                    </li>
                    <li class="submenu">
                        <a href="#"><i class="fas fa-user-graduate"></i> <span>学生信息</span> <span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/findAllStu">学生列表</a></li>
                            <li><a href="${pageContext.request.contextPath}/toAddStu">添加学生</a></li>
                        </ul>
                    </li>

                    <li class="submenu">
                        <a href="#"><i class="fas fa-chalkboard-teacher"></i> <span> 教师信息</span> <span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/findAllTea">教师列表</a></li>
                        </ul>
                    </li>

                    <li class="submenu">
                        <a href="#"><i class="fas fa-book-reader"></i> <span> 考试信息</span> <span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/findAllExam">考试安排</a></li>
                            <li><a href="${pageContext.request.contextPath}/toAddExam">添加考试</a></li>
                        </ul>
                    </li>

                    <li class="submenu">
                        <a href="#"><i class="fas fa-clipboard-list"></i> <span> 成绩信息</span> <span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/findAllGrade">成绩查看</a></li>
                            <li><a href="${pageContext.request.contextPath}/toAddGrade">录入成绩</a></li>
                        </ul>
                    </li>

                    <li class="submenu">
                        <a href="#"><i class="fas fa-book"></i> <span> 汇总信息</span> <span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/toCountStu">学生统计</a></li>
                            <li><a href="${pageContext.request.contextPath}/toCountTea">教师统计</a></li>
                            <li><a href="${pageContext.request.contextPath}/toCountExam">考试统计</a></li>

                        </ul>
                    </li>

                    <li class="submenu">
                        <a href="#"><i class="fas fa-shield-alt"></i> <span> 个人中心</span> <span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/person-home">个人中心</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</div>