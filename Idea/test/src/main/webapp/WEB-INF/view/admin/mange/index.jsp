<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="keywords" content="jquery,ui,easy,easyui,web">
    <meta name="description" content="easyui help you build your web page easily!">

    <title>答辩评分系统管理员后台管理界面</title>

    <link rel="stylesheet" type="text/css" href="http://www.jeasyui.net/Public/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="http://www.jeasyui.net/Public/js/easyui/themes/icon.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="http://www.jeasyui.net/Public/js/easyui/jquery.easyui.min.js"></script>
    <script src="js/admin_addTab.js"></script>
</head>
<body>
<%--创建了带有一个名为 'Home' 的 tab 面板的 Tabs--%>

<div style="margin-bottom:10px">
    <a href="#" class="easyui-linkbutton" onclick="addTab('google','http://www.google.com')">google</a>
    <a href="#" class="easyui-linkbutton" onclick="addTab('jquery','http://jquery.com/')">jquery</a>
    <a href="#" class="easyui-linkbutton" onclick="addTab('easyui','http://jeasyui.com/')">easyui</a>
</div>
<div id="tt" class="easyui-tabs" style="width:400px;height:250px;">
    <div title="主页">
    </div>
</div>

</body>
</html>
