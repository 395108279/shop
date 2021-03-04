<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<html>
<head>
    <title>刷卡消费</title>
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
                    <small>刷卡消费</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/records/addRecords" method="post">
        VIP卡号：<input type="text" name="cardId"><br><br><br>
        <input type="hidden" name="time" value="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime())%>"/><br><br><br>
        消费金额：<input type="text" name="money"><br><br><br>
        消费备注：<input type="text" name="ps"><br><br><br>
        <input type="submit" value="确认消费">
    </form>

</div>