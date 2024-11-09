<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>HIS康养管理系统</title>
</head>
<body bgcolor="#6FB7B7">
<h1>查询列表</h1>
<hr/>

<c:forEach items="${orgs}" var="o">
    <form action="/ViewOrgDetailServlet" method="get">
        <input type="hidden" name="orgid" value="${o.orgid}"/>
        <input type="submit" value="${o.orgname}"/>
    </form>
</c:forEach>
</body>
</html>