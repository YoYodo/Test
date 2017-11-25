<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/11/13
  Time: 下午2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <title>联系页面</title>


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

<!-- Navigation section  -->

<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">

        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
            </button>
            <a href="index.jsp" class="navbar-brand"><i class="fa fa-magnet"></i></a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="home.jsp">Projects</a></li>
                <li><a href="about.html">Our Studio</a></li>
                <li><a href="blog.html">Blog</a></li>
                <li class="active"><a href="contact.jsp">Contact</a></li>
            </ul>
        </div>

    </div>
</div>


<!-- Contact Section -->

<section id="contact">
    <div class="container">
        <div class="row">

            <div class="col-md-offset-1 col-md-10 col-sm-12">
                <div class="section-title">
                    <h3>get in touch</h3>
                    <h2>The creative web & mobile studio and focused on brand identity, web development and social
                        marketing.</h2>
                </div>

                <form action="#" method="post">
                    <div class="col-md-6 col-sm-6">
                        <input type="text" class="form-control" placeholder="Name">
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <input type="email" class="form-control" placeholder="Email">
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <input type="telephone" class="form-control" placeholder="Phone Number">
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <select class="form-control">
                            <option>Budget Select</option>
                            <option>$1200 to $1600</option>
                            <option>$2200 to $2400</option>
                            <option>$2500 to $3800</option>
                        </select>
                    </div>
                    <div class="col-md-12 col-sm-12">
                        <textarea class="form-control" rows="5" placeholder="Project Details"></textarea>
                    </div>
                    <div class="col-md-3 col-sm-4">
                        <input type="submit" class="form-control" value="Send Message">
                    </div>
                </form>
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
                <p>124 Market Street, Suite 3570 San Francisco, CA 3042 United States</p>
            </div>

            <div class="col-md-offset-1 col-md-4 col-sm-offset-1 col-sm-3">
                <p><a href="mailto:youremail@gmail.com">hello@yourstudio.co</a></p>
                <p>(+01) 2048937 / 02 203403</p>
            </div>

            <div class="clearfix col-md-12 col-sm-12">
                <hr>
            </div>

            <div class="col-md-6 col-sm-6">
                <div class="footer-copyright">
                    <p>© 2016 Magnet Studio | All Rights Reserved. More Templates <a href="http://www.cssmoban.com/"
                                                                                     target="_blank"
                                                                                     title="模板之家">模板之家</a> - Collect
                        from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
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

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/custom.js"></script>

</body>
</html>
