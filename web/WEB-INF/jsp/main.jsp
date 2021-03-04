<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseUri" value="${pageContext.request.contextPath }"
       scope="request"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>匠心造型</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css">
</head>


<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">

    <!-- 引入头部导航 -->
    <c:import url="${pageContext.request.contextPath}/nav/titlenav.jsp">

    </c:import>

    <!-- 引入左边导航 -->
    <c:import url="${pageContext.request.contextPath}/nav/leftnav.jsp"/>

    <!-- 内容主体区域 -->
    <div class="layui-body">
        <div style="width: 100%; height: 100%">
            <iframe src="" width="100%" height="100%" name="iframe" frameborder="0"></iframe>
        </div>
    </div>

    <!-- 引入底部导航 -->
    <c:import url="${pageContext.request.contextPath}/nav/bottom.jsp"/>
</div>


<script src="${pageContext.request.contextPath}/static/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function() {
        var element = layui.element;

    });
    layui.use('carousel', function() {
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem : '#test1',
            width : '100%' //设置容器宽度
            ,
            arrow : 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
</script>
</body>
</html>