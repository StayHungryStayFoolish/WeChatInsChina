<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="com.hospital_hr.entity.*" %>
<%@page import="com.hospital_hr.uitl.MyTimeUtil" %>
<% String path = request.getContextPath();%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>医院 - 查看离休员工信息</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="<%=path %>/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path %>/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <!-- Data Tables -->
    <link href="<%=path %>/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="<%=path %>/css/animate.css" rel="stylesheet">
    <link href="<%=path %>/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>查看离休员工信息</h5>
                </div>
                <div class="ibox-content">
                    <% History history = (History) request.getAttribute("history"); %>
                    <form method="post" class="form-horizontal" action="">
                        <div class="form-group">
                            <div class="col-md-1"></div>
                            <div class="col-md-4">
                                <label class="col-sm-8 control-label">工号：</label>
                                <p class="form-control-static"><%=history.getEmployeeNumber() %>
                                </p>
                            </div>
                            <div class="col-md-4">
                                <label class="col-sm-5 control-label">姓名：</label>
                                <p class="form-control-static"><%=history.getName() %>
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-1"></div>
                            <div class="col-md-4">
                                <label class="col-sm-8 control-label">性别：</label>
                                <p class="form-control-static"><%=history.getGender() %>
                                </p>
                            </div>
                            <div class="col-md-4">
                                <label class="col-sm-5 control-label">出生日期：</label>
                                <% String birthday = MyTimeUtil.dateFormat(history.getBirthday()); %>
                                <p class="form-control-static"><%=birthday %>
                                </p>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 全局js -->
<script src="<%=path %>/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=path %>/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=path %>/js/plugins/jeditable/jquery.jeditable.js"></script>

<!-- Data Tables -->
<script src="<%=path %>/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="<%=path %>/js/plugins/dataTables/dataTables.bootstrap.js"></script>

<!-- 自定义js -->
<script src="<%=path %>/js/content.js?v=1.0.0"></script>

</body>
</html>