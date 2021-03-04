<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="layui-side layui-bg-black">
	<div class="layui-side-scroll">
		<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
		<ul class="layui-nav layui-nav-tree" lay-filter="test">
			<li class="layui-nav-item layui-nav-itemed">	<!-- layui-nav-itemed 展开 -->
				<a class="" href="javascript:;">管理会员</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="${pageContext.request.contextPath}/customer/showAllCustomer" target="iframe">所有会员信息</a>
					</dd>

					<dd>
						<a href="${pageContext.request.contextPath}/customer/toAddCustomer" target="iframe">注册会员</a>
					</dd>

					<dd>
						<a href="${pageContext.request.contextPath}/customer/toRechange" target="iframe">会员充值</a>
					</dd>
					</dl></li>

			<li class="layui-nav-item layui-nav-itemed">	<!-- layui-nav-itemed 展开 -->
				<a class="" href="javascript:;">消费记录管理</a>
				<dl class="layui-nav-child">

					<dd>
						<a href="${pageContext.request.contextPath}/records/showAllRecords" target="iframe">所有消费记录</a>
					</dd>

					<dd>
						<a href="${pageContext.request.contextPath}/records/toAddRecords" target="iframe">刷卡消费</a>
					</dd>

					<dd>
						<a href="${pageContext.request.contextPath}/records/toQueryRecords" target="iframe">查询顾客消费记录</a>
					</dd>
				</dl>
			</li>
		</ul>
	</div>
</div>