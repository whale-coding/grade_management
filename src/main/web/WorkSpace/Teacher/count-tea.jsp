<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <jsp:include page="common-css.jsp"></jsp:include>
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery-3.5.1.min.js"></script>
    <!-- 引入 ECharts 文件 -->
    <script src="${pageContext.request.contextPath}/echarts/echarts.min.js"></script>
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
                        <h3 class="page-title">汇总信息</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">汇总信息</a></li>
                            <li class="breadcrumb-item active">教师统计</li>
                        </ul>
                    </div>

                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <div class="col-sm-12">
                    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                    <div id="main" style="width: 800px;height:600px;"></div>

                    <script type="text/javascript">

                        $(function (){
                            $.ajax({
                                "url":"${pageContext.request.contextPath}/CountTeaNumberByDepartment",
                                "type":"POST",
                                "success":function (data) {

                                    // 基于准备好的dom，初始化echarts实例
                                    var myChart = echarts.init(document.getElementById('main'));

                                    // 指定图表的配置项和数据
                                    var option = {
                                        title: {
                                            text: '全校各学院教师人数统计',
                                            left: 'center'
                                        },
                                        tooltip: {
                                            trigger: 'item'
                                        },
                                        legend: {
                                            orient: 'vertical',
                                            left: 'left',
                                        },
                                        series: [
                                            {
                                                name: '全校各学院教师人数统计',
                                                type: 'pie',
                                                radius: '50%',
                                                data: data,
                                                emphasis: {
                                                    itemStyle: {
                                                        shadowBlur: 10,
                                                        shadowOffsetX: 0,
                                                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                                                    }
                                                }
                                            }
                                        ]
                                    };

                                    // 使用刚指定的配置项和数据显示图表。
                                    myChart.setOption(option);

                                }
                            })
                        })


                    </script>

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


<!-- Bootstrap Core JS -->
<script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

<!-- Slimscroll JS -->
<script src="${pageContext.request.contextPath}/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom JS -->
<script  src="${pageContext.request.contextPath}/assets/js/script.js"></script>
</body>
</html>