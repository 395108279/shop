<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会员充值</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>会员充值</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/customer/rechange" method="post">
        VIP卡号：<input type="text" name="cardId" value="${customer.cardId}"><br><br><br>
        充值金额：<input type="text" name="money"><br><br><br>
        <input type="submit" value="确认充值">
    </form>
</div>