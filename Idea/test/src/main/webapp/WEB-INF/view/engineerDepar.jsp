<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/11/16
  Time: 下午2:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>通信工程系答辩主题</title>
</head>
<body>

<table border="1">
    <tr>
        <th>辩题编号</th>
        <th>辩题所属系</th>
        <th>辩题名称</th>
        <th>辩题描述</th>

    </tr>
    <c:forEach items="${subjects}" var="subject">
        <tr>
            <td>${subject.sub_id}</td>
            <td>${subject.depar_id}</td>
            <td>${subject.sub_name}</td>
            <td>${subject.sub_desc}</td>
                <%--<td><a href="${pageContext.request.contextPath}/bookUpdateView.do?isbn=${book.isbn}">修改</a></td>--%>
        </tr>
    </c:forEach>
</table>
</body>
</html>
