<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/10/28
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>loginmenu</title>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="span3 logo">
      <a href="./index.html"><img src="./images/logo.png" alt="logo" /></a>
    </div>
    <div class="span5 offset7 login-form hidden-phone"><p class="pull-right">Call us <strong>+1 800 PHONE</strong> or log in to clients support area. </p>
        <c:if test="${empty uu}">
            <form class="bs-docs-example form-inline pull-right" action="LoginServlet" method="post"/>
                <input type="text" placeholder="Nmea" class="input-small" name="name"/>
                <input type="password" placeholder="Password" class="input-small" name="password" />
            <button class="btn" type="submit">Sign in</button>
            </form>
        </c:if>
        <c:if test="${not empty uu}">
            欢迎您,${uu.name} <img src="${uu.image}" width="64px" height="64px" />
        </c:if>
    </div>
  </div>
</div>
</body>
</html>
