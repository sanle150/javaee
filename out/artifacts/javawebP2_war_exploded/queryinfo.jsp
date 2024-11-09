<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/9/23
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HIS康养管理系统</title>
</head>
<body>
<h1>信息查询</h1>
<hr/>
<form action="QueryAOrgServlet" method="get">
    组织名称：<input type="text" name="orgname" /><br />

    <input type="submit" value="查询" />

</form>
</body>
</html>
