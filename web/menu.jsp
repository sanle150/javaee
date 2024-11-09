<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<section id="main-menu">
    <nav class="container" id="menu">
        <ul>
            <li><a href="ToIndexServlet" class="current">主页</a></li>
            <li><a href="#">项目</a>
                <ul>
                    <li><a href="#">关于</a></li>
                    <li class="last"><a href="#">服务</a></li>
                </ul>
            </li>
            <li><a href="#">待开发</a>
                <ul>
                    <li><a href="#">Submenu 1</a>
                    </li>
                    <li><a href="#">Submenu 3</a>
                        <ul>
                            <li><a href="#">2nd Level Item</a></li>
                            <li class="last"><a href="#">2nd Level Item</a></li>
                        </ul>
                    </li>
                    <li class="last"><a href="#">Submenu 3</a>
                    </li>
                </ul>
            </li>
            <li><a href="QueryAllOrgServlet">机构管理</a>
                <ul>
                    <c:if test="${not empty uu}">
                	<li><a href="addinfo.jsp">添加</a></li>
                    </c:if>
                    <li><a href="QueryAllOrgServlet">查询</a></li>
                   
                    <li class="last"><a href="./blog-single.html">详情</a></li>
                </ul>
            </li>
            <li><a href="./contact.html">联系我们</a></li>
        </ul>
    </nav>
</section>