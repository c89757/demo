<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
</head>

<body>
    <form method="post" action="/admin/login">
        <div class="form-group" style="width: 350px;">
            <label for="exampleInputEmail1">username</label>
            <input class="form-control" name="username" id="exampleInputEmail1" placeholder="请输入用户名">
        </div>
        <div class="form-group" style="width: 350px;">
            <label for="exampleInputPassword1">password</label>
            <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="请输入密码">
        </div>
        <div class="form-group">
            <lable style="color: red;">${error}</lable>
        </div>
        <button type="submit" class="btn btn-default">登录</button>
    </form>

</body>
</html>
