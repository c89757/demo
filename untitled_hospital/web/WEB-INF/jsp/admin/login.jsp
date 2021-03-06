<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
</head>

<body>

<!DOCTYPE html>
<html lang="en" class="app">
<head>
    <meta charset="utf-8" />
    <title>后台登录页面模板 - 源码之家</title>
    <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link rel="stylesheet" href="/css/bootstrap.css" type="text/css" />

</head>
<body background="images/bodybg.jpg">
<section id="content" class="m-t-lg wrapper-md animated fadeInUp ">
    <div class="container aside-xl" style="margin-top: 48px;">
        <a class="navbar-brand block"><span class="h1 font-bold" style="color: #ffffff">管理员后台登录</span></a>
        <section class="m-b-lg">
            <header class="wrapper text-center">
                <strong class="text-sucess">管理员登录</strong>
            </header>
            <form action="javascript:;" method="post" >
                <div class="form-group">
                    <input type="username" name="username" placeholder="用户名" class="form-control  input-lg text-center no-border">
                </div>
                <div class="form-group">
                    <input type="password" name="password" placeholder="密码" class="form-control  input-lg text-center no-border">
                </div>

                <button type="submit" class="btn btn-lg btn-danger lt b-white b-2x btn-block" id="validate-submit">
                    <i class="icon-arrow-right pull-right"></i><span class="m-r-n-lg">登录</span></button>
            </form>
        </section>
    </div>
</section>


</body>
</html>


<%--    <form method="post" action="/admin/login">--%>
<%--        <div class="form-group" style="width: 350px;">--%>
<%--            <label for="exampleInputEmail1">username</label>--%>
<%--            <input class="form-control" name="username" id="exampleInputEmail1" placeholder="请输入用户名">--%>
<%--        </div>--%>
<%--        <div class="form-group" style="width: 350px;">--%>
<%--            <label for="exampleInputPassword1">password</label>--%>
<%--            <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="请输入密码">--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <lable style="color: red;">${error}</lable>--%>
<%--        </div>--%>
<%--        <button type="submit" class="btn btn-default">登录</button>--%>
<%--    </form>--%>

</body>
</html>
