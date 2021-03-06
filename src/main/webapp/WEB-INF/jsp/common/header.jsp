<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<div class="fly-header layui-bg-black">
    <div class="layui-container">
        <a class="fly-logo" href="/">
            <img src="${pageContext.request.contextPath}/res/images/logo.png" alt="layui">
        </a>
        <ul class="layui-nav fly-nav layui-hide-xs">
            <li class="layui-nav-item layui-this">
                <a href="/"><i class="iconfont icon-jiaoliu"></i>交流</a>
            </li>
            <li class="layui-nav-item">
                <a href="case/case.html"><i class="iconfont icon-iconmingxinganli"></i>案例</a>
            </li>
            <li class="layui-nav-item">
                <a href="http://www.layui.com/" target="_blank"><i class="iconfont icon-ui"></i>框架</a>
            </li>
        </ul>

        <ul class="layui-nav fly-nav-user">

            <c:choose>
                <c:when test="${empty userinfo}">
                    <!-- 未登入的状态 -->
                    <li class="layui-nav-item">
                        <a class="iconfont icon-touxiang layui-hide-xs" href="../user/login.html"></a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="${pageContext.request.contextPath}/user/login">登入</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="${pageContext.request.contextPath}/user/reg">注册</a>
                    </li>
                    <li class="layui-nav-item layui-hide-xs">
                        <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" title="QQ登入" class="iconfont icon-qq"></a>
                    </li>
                    <li class="layui-nav-item layui-hide-xs">
                        <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" title="微博登入" class="iconfont icon-weibo"></a>
                    </li>
                </c:when>
                <c:otherwise>
                    <!-- 登入后的状态 -->

                    <li class="layui-nav-item">
                    <a class="fly-nav-avatar" href="javascript:;">
                    <cite class="layui-hide-xs">${userinfo.nickname}</cite>
                    <i class="iconfont icon-renzheng layui-hide-xs" title="认证信息：layui 作者"></i>
                    <i class="layui-badge fly-badge-vip layui-hide-xs">VIP${userinfo.vipGrade}</i>
                        <c:choose>
                            <c:when test="${userinfo.picPath != ''}">
                                <img src="${pageContext.request.contextPath}/res/uploadImgs/${userinfo.picPath}">
                            </c:when>
                            <c:otherwise>
                                <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg">
                            </c:otherwise>
                        </c:choose>
                    </a>
                    <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/user/set"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/user/message"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/user/home/${userinfo.id}"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>
                    <hr style="margin: 5px 0;">
                    <dd><a href="${pageContext.request.contextPath}/user/logout/" style="text-align: center;">退出</a></dd>
                    </dl>
                    </li>

                </c:otherwise>
            </c:choose>



        </ul>
    </div>
</div>