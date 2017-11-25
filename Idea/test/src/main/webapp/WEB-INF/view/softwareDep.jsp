<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <title>软件工程系答辩主题</title>

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/MyCriticizm.js"></script>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

</head>


<body>

<!-- PRE LOADER -->

<div class="preloader">
    <div class="sk-spinner sk-spinner-wordpress">
        <span class="sk-inner-circle"></span>
    </div>
</div>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 ">
            <ol class="breadcrumb text-right" id="info">

                <c:if test="${sessionScope['login_user']==null}">
                    <li id="li1">
                        <span id="welcomeSpan">您好，欢迎使用YoYo答辩评分系统！</span>
                        <a href="#loginDialog" data-toggle="modal"> [登录]</a>
                    </li>
                </c:if>

                <c:if test="${sessionScope['login_user']!=null}">
                    <li id="li1">
                        <span>欢迎 ${sessionScope['login_user'].username} 同学,您现在查看的是软件工程的答辩主题状态:</span>
                    </li>
                    <li><a href="#"
                           onclick="ChangePassword('${pageContext.request.contextPath}')">修改密码</a>
                    </li>
                    <li><a href="#"
                           onclick="logout('${pageContext.request.contextPath}')">退出登录</a>
                    </li>

                </c:if>

            </ol>
        </div>
    </div>
</div>

<!-- Navigation section  -->
<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">
        <%--导航栏--%>
        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
            </button>
            <a href="home.action" class="navbar-brand"><i class="fa fa-magnet"></i></a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="#">答辩主题列表</a>
            </ul>
        </div>
    </div>
</div>


<table border="1" align="center">
    <tr>
        <th>辩题编号</th>
        <th>辩题所属系</th>
        <th>辩题名称</th>
        <th>辩题描述</th>
        <th>已选人数</th>
        <th>总共人数</th>
        <th>答辩地点</th>
        <th>答辩注意事项</th>

    </tr>
    <c:forEach items="${subjects}" var="subject">
        <tr>
            <td>${subject.mSubId}</td>
            <td>${subject.mDeparId}</td>
            <td>${subject.mSubName}</td>
            <td>${subject.mSubDesc}</td>
            <td>${subject.mSubSelected}</td>
            <td>${subject.mSubmount}</td>
            <td>${subject.mSubPalce}</td>
            <td>${subject.mSubDetail}</td>

                <%--<td><a href="${pageContext.request.contextPath}/bookUpdateView.do?isbn=${book.isbn}">修改</a></td>--%>
        </tr>
    </c:forEach>
</table>
</body>
</html>
