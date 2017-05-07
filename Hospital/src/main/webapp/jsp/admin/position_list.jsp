<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="com.hospital_hr.entity.*" %>
<%@ page import="com.baomidou.mybatisplus.plugins.Page" %>
<% String path = request.getContextPath();%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>医院 - 职称列表</title>
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
                    <h5>职称列表</h5>
                </div>
                <div class="ibox-content">
                    <div>
                        <a href="<%=path %>/position/toAdd.do" class="btn btn-success">添加职称</a>
                    </div>
                    <table class="table table-striped table-bordered table-hover dataTables-example">
                        <thead>
                        <tr>
                            <th>序号</th>
                            <th>职称号</th>
                            <th>职称名称</th>
                            <th>权限</th>
                            <th width="240px">描述</th>
                            <th>管理</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            Page<Position> pageInfo = (Page<Position>) request.getAttribute("page");
                            if (null != pageInfo && null != pageInfo.getRecords() && pageInfo.getRecords().size() > 0) {
                                List<Position> list = pageInfo.getRecords();
                                int index = 1;
                                for (Position position : list) {
                        %>
                        <tr class="gradeA">
                            <td><%=index++ %>
                            </td>
                            <td><%=position.getPositionNumber() %>
                            </td>
                            <td><%=position.getName() %>
                            </td>
                            <td><%=position.getLevel() %>
                            </td>
                            <td><%=position.getNotes() %>
                            </td>
                            <td><a href="<%=path %>/position/<%=position.getId() %>/toUpdate.do"
                                   class="btn btn-primary">修改</a>&nbsp;&nbsp;
                                <a href="<%=path %>/position/<%=position.getId() %>/delete.do"
                                   class="btn btn-danger">删除</a>
                            </td>
                        </tr>
                        <%
                                }
                            }
                        %>
                        </tbody>
                    </table>
                    <div>
							<span style="float: left; padding: 5px">
								当前&nbsp;<span
                                    style="color: red;"><%=pageInfo.getCurrent() %></span>&nbsp;/&nbsp;<b><%=pageInfo.getPages() %></b>&nbsp;页&nbsp;&nbsp;
								总共&nbsp;<b><%=pageInfo.getTotal() %></b>&nbsp;条</span>
                        <nav aria-label="Page navigation" style="margin: 0 auto; width: 240px">
                            <ul class="pagination" style="margin: 0;">
                                <li>
                                    <a href="<%=path %>/position/listPage.do?page=<%=pageInfo.getCurrent()-1>1?pageInfo.getCurrent()-1:1 %>"
                                       aria-label="Previous"> <span aria-hidden="true">前一页</span>
                                    </a>
                                </li>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
