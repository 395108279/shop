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
    <title>匠心造型</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
    <!--
    .pageshow {
        background-color: #dff0d8;
        float: right;
        line-height: 50px;
        margin-right: 100px;
    }
    -->
</style>
<body>
<!-- 内容主体区域 -->
<fieldset class="layui-elem-field layui-field-title"
          style="margin-top: 20px;">
    <legend>所有消费记录</legend>
</fieldset>

<div class="row">
    <div class="col-md-4 column">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/records/showAllRecords">查询全部记录</a>
    </div>
    <form class="form-inline" action="${pageContext.request.contextPath}/records/queryRecordsByName" method="post" style="float: right;margin-right: 100px">
        <span style="color:red;font-weight: bold">${error}</span>
        <input type="text" name="customName" class="form-control" placeholder="请输入需要查询的会员姓名">
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
                    <a href="${pageContext.request.contextPath}/records/toUpdateRecords/${records.id}">修改记录</a>&nbsp;|&nbsp;
                    <a href="${pageContext.request.contextPath}/records/deleteRecords/${records.id}">删除记录</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- 页码显示 -->
<div class="pageshow">
    <span> 第${requestScope.pageMsg.currPage }/${requestScope.pageMsg.totalPage}页</span>
    &nbsp;&nbsp; <span>总记录数：${requestScope.pageMsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.pageMsg.pageSize}</span>
    &nbsp;&nbsp; <span> <c:if
        test="${requestScope.pageMsg.currPage != 1}">
    <a href="${baseUri}/showBook?currentPage=1">[首页]</a>&nbsp;&nbsp;
    <a href="${baseUri}/showBook?currentPage=${requestScope.pageMsg.currPage-1}">[上一页]</a>
    &nbsp;&nbsp;
</c:if>
				<c:if test="${requestScope.pageMsg.currPage != requestScope.pageMsg.totalPage}">
                    <a href="${baseUri}/showBook?currentPage=${requestScope.pageMsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
                    <a href="${baseUri}/showBook?currentPage=${requestScope.pageMsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
                </c:if><script src="${baseUri}/static/layui/layui.js"></script>
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
        layer.open({
            type : 4,
            content : [ '已下架', '#soldBook' ]
            //数组第二项即吸附元素选择器或者DOM
        });
	</script>
    </span>
</div>


</body>
</html>