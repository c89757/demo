<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登录界面</title>
      <link rel="stylesheet" href="/static/css/bootstrap.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
      <script type="text/javascript" src="/static/js/jquery-1.12.4.min.js"></script>
      <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
  </head>
  <body>

<div class="div1">
    <div class="div3"><span>
        Untitled医院管理系统
    </span></div>
<div class="div2">
<form action="${pageContext.request.contextPath}/user/login" method="post">
    <br>
    <div class="input-group">
        <span class="input-group-addon" id="basic-addon1">输入工号</span>
        <input type="text" class="form-control" placeholder="请输入工号" name="uid" aria-describedby="basic-addon1">
    </div> <br><br>
    <div class="input-group">
        <span class="input-group-addon" id="basic-addon2">输入密码</span>
        <input type="password" class="form-control" placeholder="请输入密码" name="password" aria-describedby="basic-addon2">
    </div> <br><br>
<%--    <div class="form-group">--%>
<%--    <label for="email" class="col-sm-2 control-label">所属角色</label>--%>
    <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">选择登录身份</span>
        <div class="form-group">
            <select class="form-control" name="person">
                <option value="" disabled>--选择登录身份--</option>
                <option value="registration">挂号人员</option>
                <option value="doctor">医务人员</option>
                <option value="medicine">药品人员</option>
            </select>
        </div>
    </div>

    <br>

        <input style="width: 120px;height: 38px;margin-left: 135px;margin-bottom: 20px" type="submit" class="btn btn-primary" value="登录">

</form>
</div>
</div>

</body>
</html>
