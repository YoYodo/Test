<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>答辩主题列表</title>
</head>
<body>
<h2>答辩主题列表</h2>

<table border="1">
    <tr>
        <th>辩题所属系</th>
        <th>辩题编号</th>
        <th>辩题名称</th>
        <th>辩题描述</th>

    </tr>
    <c:forEach items="${subjects}" var="subject">
        <tr>
            <td>${subject.depar_id}</td>
            <td>${subject.sub_id}</td>
            <td>${subject.sub_name}</td>
            <td>${subject.sub_desc}</td>
                <%--<td><a href="${pageContext.request.contextPath}/bookUpdateView.do?isbn=${book.isbn}">修改</a></td>--%>
        </tr>
    </c:forEach>
</table>
</body>
</html>