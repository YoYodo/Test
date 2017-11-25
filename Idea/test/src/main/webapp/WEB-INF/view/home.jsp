<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/10/25
  Time: 下午9:25
  To change this template use File | Settings | File Templates.
--%>
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
    <title>YoYo答辩评分系统</title>

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
                        <span>${sessionScope['login_user'].username }</span>
                    </li>
                    <li><a href="#"
                           onclick="ChangePassword('${pageContext.request.contextPath}')">修改密码</a>
                    </li>
                    <li><a href="#"
                           onclick="logout('${pageContext.request.contextPath}')">退出登录</a>
                    </li>

                </c:if>

            </ol>


            <!-- 小尺寸的调节 -->
            <div class="modal fade bs-example-modal-sm" id="loginDialog" role="dialog"
                 aria-hidden="true" aria-labelledby="myModalLabel" tabindex="-1">

                <form role="form" action="/login.action" method="post">
                    <div class="modal-dialog  modal-sm">
                        <!-- 	弹出会话框内容 -->
                        <div class="modal-content" align="center">
                            <div class="modal-header">
                                <button class="close" aria-hidden="true" type="button"
                                        data-dismiss="modal">X
                                </button>

                                <h4 class="modal-title" id="myModalLabel" align="center">用户登录</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label class="control-label">用户名</label>
                                    <input type="text" class="form-control" id="username" value="${username}"
                                           placeholder="请输入用户名"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">密码</label>
                                    <input type="password" class="form-control" id="password" value="${password}"
                                           placeholder="请输入密码"/>
                                </div>

                            </div>
                            <!-- 弹出会话框的底部两个按钮 注册 关闭 -->
                            <div class="modal-footer">
                                <button class="btn btn-primary" type="button" id="login_btn">
                                    登 录
                                </button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">
                                    关 闭
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            </ol>
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
                                <a href="${pageContext.request.contextPath}/home.action">首页
                                </a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">系
                                    <strong class="caret"></strong></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/subjectsCate.action?childid=1">
                                            软件工程系
                                        </a>
                                    </li>
                                    <li class="divider"></li>

                                    <li>
                                        <a href="${pageContext.request.contextPath}/subjectsCate.action?childid=2">
                                            通信工程系
                                        </a>
                                    </li>
                                    <li class="divider"></li>

                                    <li>
                                        <a href="${pageContext.request.contextPath}/subjectsCate.action?childid=3">
                                            电子工程系
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <%--“论文答辩”就是“(thesis) oral defense--%>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">答辩<strong
                                        class="caret"></strong></a>

                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/oraldefense.action?childid=1">
                                            未答辩
                                        </a>
                                    </li>
                                    <li class="divider"></li>

                                    <li>
                                        <a href="${pageContext.request.contextPath}/oraldefense.action?childid=2">
                                            答辩中
                                        </a>
                                    </li>
                                    <li class="divider"></li>

                                    <li>
                                        <a href="${pageContext.request.contextPath}/oraldefense.action?childid=3">
                                            已答辩
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="active">
                                <a href="${pageContext.request.contextPath}/contact.action">联系我们
                                </a>
                            </li>
                        </ul>

                        <form class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control"/>
                            </div>
                            <button type="submit" class="btn btn-default">搜索</button>

                        </form>
                        <ul class="nav navbar-nav navbar-right">

                            <li class="dropdown"><a href="#" class="dropdown-toggle"
                                                    data-toggle="dropdown">今日答辩通知
                                <strong class="caret"></strong></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">按时间查询</a></li>

                                    <li class="divider"></li>
                                    <li><a href="#">按班级查询</a></li>

                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</div>

<!-- Home Section -->
<section id="home">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <h2>答辩主题中心</h2>
                <hr>
            </div>
        </div>
    </div>
</section>
<!-- Portfolio Section -->
<div class="copyrights">Collect from <a href="#">YoYo答辩评分系统</a></div>
<section id="portfolio">
    <div class="container">
        <div class="row">

            <div class="col-md-4 col-sm-6">
                <a href="softwareDeparList.do">
                    <div class="portfolio-thumb">
                        <img src="images/portfolio-img1.jpg" class="img-responsive" alt="Portfolio">
                        <div class="portfolio-overlay">
                            <div class="portfolio-item">
                                <h3>软件工程系</h3>
                                <small>答辩主题</small>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 col-sm-6">
                <a href="engineerDeparList.do">
                    <div class="portfolio-thumb">
                        <img src="images/portfolio-img2.jpg" class="img-responsive" alt="Portfolio">
                        <div class="portfolio-overlay">
                            <div class="portfolio-item">
                                <h3>通信工程系</h3>
                                <small>答辩主题</small>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 col-sm-6">
                <a href="single-project.html">
                    <div class="portfolio-thumb">
                        <img src="images/portfolio-img3.jpg" class="img-responsive" alt="Portfolio">
                        <div class="portfolio-overlay">
                            <div class="portfolio-item">
                                <h3>电子工程系</h3>
                                <small>答辩主题</small>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 col-sm-6">
                <a href="single-project.html">
                    <div class="portfolio-thumb">
                        <img src="images/portfolio-img4.jpg" class="img-responsive" alt="Portfolio">
                        <div class="portfolio-overlay">
                            <div class="portfolio-item">
                                <h3>英语系</h3>
                                <small>答辩主题</small>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 col-sm-6">
                <a href="single-project.html">
                    <div class="portfolio-thumb">
                        <img src="images/portfolio-img5.jpg" class="img-responsive" alt="Portfolio">
                        <div class="portfolio-overlay">
                            <div class="portfolio-item">
                                <h3>数字艺术系</h3>
                                <small>答辩主题</small>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 col-sm-6">
                <a href="single-project.html">
                    <div class="portfolio-thumb">
                        <img src="images/portfolio-img6.jpg" class="img-responsive" alt="Portfolio">
                        <div class="portfolio-overlay">
                            <div class="portfolio-item">
                                <h3>商务管理系</h3>
                                <small>答辩主题</small>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-12 col-sm-12 text-center">
                <h3>选择的答辩主题有问题 <a href="contact.jsp">请联系老师！</a></h3>
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


<!-- SCRIPTS -->


</div>
</body>
</html>







