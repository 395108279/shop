<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="layui-header">
	<div class="layui-logo">匠心造型</div>
	<!-- 头部区域（可配合layui已有的水平导航） -->

	<ul class="layui-nav layui-layout-right">
		<li class="layui-nav-item">
			<a href="javascript:;">
				<img src="${pageContext.request.contextPath}/static/images/head.jpg" class="layui-nav-img"> ${msAdmin.adminName}
			</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;"  onclick="getusermeans()">个人信息</a>
				</dd>
				<dd>
					<a href="javascript:;" target="iframe">修改密码</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="${pageContext.request.contextPath}/user/userLogout" onclick="return confirm('确认退出管理员${user.userName }？')">安全退出</a></li>
	</ul>

	<script>
		function getusermeans(){

			layer.open({
				type: 2,
				title: '个人资料',
				maxmin: true,
				skin: 'layui-layer-lan',
				shadeClose: true, //点击遮罩关闭层
				area : ['400px' , '280px'],
				content:'${pageContext.request.contextPath}/other/usermeans'//弹框显示的url,对应的页面
			});
		}
	</script>
</div>