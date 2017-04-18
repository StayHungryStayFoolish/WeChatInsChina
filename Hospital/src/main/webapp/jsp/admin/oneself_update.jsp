<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="com.hospital_hr.entity.*" %>
<%@ page import="com.hospital_hr.uitl.MyTimeUtil" %>
<% String path = request.getContextPath();%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>医院 - 修改在职员工信息</title>
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
                    <h5>修改在职员工信息</h5>
                </div>
                <div class="ibox-content">
                    <% Employee employee = (Employee) request.getAttribute("employee"); %>
                    <form method="post" class="form-horizontal" id="commentForm"
                          action="<%=path %>/employee/<%=employee.getId() %>/update.do">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">工号</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" name="employeeNumber"
                                       value="<%=employee.getEmployeeNumber() %>" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">姓名</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" name="name" value="<%=employee.getName() %>"
                                       minlength="2" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">密码</label>
                            <div class="col-sm-7">
                                <input type="password" class="form-control" name="password"
                                       value="<%=employee.getPassword() %>" minlength="4" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">性别</label>
                            <div class="col-sm-7">
                                <div class="radio i-checks">
                                    <label>
                                        <input type="radio" value="男" name="gender"
                                            <%
												if(employee.getGender().equals("男")){
											%>
                                               checked="checked"
                                            <%  } %>
                                        > <i></i>男</label>
                                    <i style="margin-left: 25px"></i>
                                    <label>
                                        <input type="radio" value="女" name="gender"
                                            <%
												if(employee.getGender().equals("女")){
											%>
                                               checked="checked"
                                            <%  } %>
                                        > <i></i>女</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">出生年月</label>
                            <div class="col-sm-7">
                                <% String birthday = MyTimeUtil.dateFormat(employee.getBirthday()); %>
                                <input type="date" class="form-control" name="date" value="<%=birthday %>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">联系方式</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" name="telephone"
                                       value="<%=employee.getTelephone() %>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">邮箱</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" placeholder="" name="email"
                                       value="<%=employee.getEmail() %>" email="true">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">籍贯</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" name="address"
                                       value="<%=employee.getAddress() %>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">学历</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" name="education"
                                       value="<%=employee.getEducation() %>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">备注</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" name="notes" value="<%=employee.getNotes() %>">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-8">
                                <button class="btn btn-primary" type="submit">修&nbsp;&nbsp;改</button>&nbsp;&nbsp;&nbsp;&nbsp;
                                <button class="btn btn-white" type="reset">取&nbsp;&nbsp;消</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
