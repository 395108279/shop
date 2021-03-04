<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseUri" value="${pageContext.request.contextPath }"
       scope="request">
</c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>查询消费记录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<fieldset class="layui-elem-field layui-field-title"
          style="margin-top: 20px;">
    <legend>查询消费记录</legend>
</fieldset>

<div class="row">
    <div class="col-md-4 column">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/records/toQueryRecords">查询全部记录</a>
    </div>
    <form class="form-inline" action="${pageContext.request.contextPath}/records/queryRecords" method="post" style="float: right;margin-right: 100px">
        <span style="color:red;font-weight: bold">${error}</span>
        <input type="text" name="cardId" class="form-control" placeholder="请输入需要查询的会员卡号">
        <input type="submit" value="查询" class="btn btn-primary">
    </form>
</div>

<div class="layui-form">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="350">
            <col width="350">
            <col width="150">
            <col width="220">
            <col width="200">
            <col width="200">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <th>编号</th>
            <th>vip卡号</th>
            <th>消费时间</th>
            <th>会员姓名</th>
            <th>电话</th>
            <th>消费金额</th>
            <th>消费备注</th>
            <th >操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${recordslist}" var="records">
            <tr>
                <td>${records.id}</td>
                <td>${records.cardId }</td>
                <td>${records.consumeTime}</td>
                <td>${records.customName}</td>
                <td>${records.tel}</td>
                <td>${records.money}</td>
                <td>${records.ps}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/records/deleteRecords/${records.id}">删除记录</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
