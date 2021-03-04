<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>注册会员</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>注册会员</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/customer/addCustomer" method="post">
        VIP卡号：<input type="text" name="cardId"><br><br><br>
        会员姓名：<input type="text" name="customName"><br><br><br>
        卡上金额：<input type="text" name="money"><br><br><br>
        顾客电话：<input type="text" name="tel"><br><br><br>
        <input type="submit" value="添加">
    </form>

</div>