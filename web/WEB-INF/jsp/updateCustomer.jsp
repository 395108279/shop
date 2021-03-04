<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
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
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/customer/updateCustomer" method="post">
        <input type="hidden" name="id" value="${customer.id}"/>
        <label>VIP卡号：</label>        <input type="text" name="cardId" value="${customer.cardId}"/>
        <label>顾客姓名：</label>        <input type="text" name="customName" value="${customer.customName}"/>
        <label>卡上金额：</label>        <input type="text" name="money" value="${customer.money}"/>
        <label>顾客电话：</label>        <input type="text" name="tel" value="${customer.tel}"/>
        <input type="submit" value="提交" class="btn btn-primary"/>
    </form>

</div>