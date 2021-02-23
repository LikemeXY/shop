<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>商城 | 登录</title>
    <link rel="stylesheet" href="static/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="static/css/AdminLTE.min.css">
</head>
<!-- ./Head End -->

<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="#">一生有你服饰</a>
    </div>
    <!-- /.login-logo -->

    <div class="login-box-body">
        <p class="login-box-msg">欢迎管理员登录</p>

        <form action="adminLogin" method="post">
            <div class="alert alert-danger alert-dismissible" ${message == null ? "style='display:none;'" : ""}>
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                ${message}
            </div>

            <div class="form-group has-feedback">
                <input name="username" type="text" class="form-control" placeholder="用户名" value="${username}">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input name="password" type="password" class="form-control" placeholder="密码" value="${password}">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-9">
                     <button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
                </div>
                <div class="col-xs-3">
                    <a href="adminMain" class="btn btn-primary btn-block btn-flat">Go</a>
                </div>
            </div>
        </form>
        <a href="#">忘记密码？</a><br>
    </div>
</div>

</body>
</html>