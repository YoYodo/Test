<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>软件工程系的答辩主题目录</title>

    <!-- SCRIPTS -->

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

        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
            </button>
            <a href="index.html" class="navbar-brand"><i class="fa fa-magnet"></i></a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/home.action">首页
                </a></li>
                <li><a href="about.html">答辩评分标准</a></li>
                <li class="active"><a href="blog.html">答辩流程</a></li>
                <li><a href="${pageContext.request.contextPath}/contact.action">我的答辩</a></li>
            </ul>
        </div>

    </div>
</div>

<!-- Blog Section -->

<section id="blog">
    <div class="container">
        <div class="row">

            <div class="col-md-offset-1 col-md-10 col-sm-12">
                <div class="section-title">
                    <h3>答辩主题</h3>
                    <h2>软件工程系的答辩主题目录.</h2>
                </div>

                <div class="blog-post-thumb">
                    <div class="blog-post-image">
                        <a href="single-post.html">
                            <img src="images/blog-image1.jpg" class="img-responsive" alt="Blog Image">
                        </a>
                    </div>
                    <div class="blog-post-title">

                        <h3><a href="single-post.html">答辩主题主要负责老师</a></h3>

                    </div>
                    <div class="blog-post-format">
                        <span><a href="#"><img src="images/author-image1.jpg" class="img-responsive img-circle"> Jen Lopez</a></span>
                        <span><i class="fa fa-date"></i> Jan 30, 2016</span>
                        <span><a href="#"><i class="fa fa-comment-o"></i> 124 Comments</a></span>
                    </div>
                    <!--描述-->
                    <div class="blog-post-des">


                        <%--<p> ${subject.mSubDetail}</p>--%>
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


                        <a href="single-post.html" class="btn btn-default">Continue Reading</a>
                    </div>

                </div>

            </div>

        </div>
    </div>
</section>

<!-- Footer Section -->

<footer>
    <div class="container">
        <div class="row">

            <div class="col-md-3 col-sm-3">
                <i class="fa fa-magnet"></i>
            </div>

            <div class="col-md-4 col-sm-4">
                <p> 大连东软信息学院 </br>
                    地址：大连软件园路8号</p>
            </div>

            <div class="col-md-offset-1 col-md-4 col-sm-offset-1 col-sm-3">
                <p><a href="neudoft.edu.cn">大连东软信息学院官网</a></p>
                <p>(+86) 2048937 / (+86) 203403</p>
            </div>

            <div class="clearfix col-md-12 col-sm-12">
                <hr>
            </div>

            <div class="col-md-6 col-sm-6">
                <div class="footer-copyright">
                    <p>© 2017 YoYo Studio | All Rights Reserved.</p>
                </div>
            </div>

            <div class="col-md-6 col-sm-6">
                <ul class="social-icon">
                    <li><a href="#" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-twitter"></a></li>
                    <li><a href="#" class="fa fa-linkedin"></a></li>
                </ul>
            </div>

        </div>
    </div>
</footer>


</body>
</html>
