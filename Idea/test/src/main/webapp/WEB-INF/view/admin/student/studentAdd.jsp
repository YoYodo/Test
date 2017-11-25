<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/11/13
  Time: 下午12:04
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>添加学生</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/studentUpdate.do"
      enctype="multipart/form-data">
    学号：<input type="text" name="id"><br>
    姓名：<input type="text" name="name"><br>
    年龄：<input type="text" name="age"><br>
    选择照片：<input type="file" name="photo" id="photo"/><br>
    <input type="submit" value="提交">
    <input type="reset" value="重写">

    <c:if test="${not empty info}">
        ${info}
    </c:if>
</form>
<a href="${pageContext.request.contextPath}/studentList.do">返回学生列表</a>
</body>
</html>

