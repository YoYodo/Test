<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/10/25
  Time: 下午9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>答辩系统登录页面</title>
</head>
<body>
<form name="login" action="login" method="post">
    <fieldset>
        <legend>用户登录</legend>
        <p>
            <label>账号：</label>
            <input type="text" id="name" name="name" tabindex="1">
        </p>

        <p>
            <label>密码：</label>
            <input type="text" id="pwd" name="pwd" tabindex="3">
        </p>
        <p id="buttons">
            <input id="reset" type="reset" tabindex="4" value="取消">
            <input id="submit" type="submit" tabindex="5" value="创建">
        </p>
    </fieldset>
</form>
</body>
</html>
