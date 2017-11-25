<%@ page import="java.util.List" %>
<%@ page import="org.test.dto.picDTO" %><%--
  Created by IntelliJ IDEA.
  User: p_ruyiye
  Date: 2017/7/28
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>测试tomcat</title>
</head>
<body>
<script>
    function royTest(vId) {
        var x = document.getElementsByName("name_view_id");
        alert(x.length);
    }
</script>
<p id="test">测试</p>
<p id="demo">单击按钮来改变这一段中的文本。</p>

<a onclick="royTest(0)" name="name_view_id">点我</a>
<%
    List data = (List) request.getAttribute("data");
    for (int i = 0; i < data.size(); i++) {
        picDTO mPic = (picDTO) data.get(i);
%>
<%= mPic.getmPicId()%>
<%
    }
%>

<script>
    function myFunction() {
        document.getElementById("test").innerHTML = "Hello World";
    };

</script>

</body>
</html>
