<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>组织信息</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }
        .org-info {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            padding: 20px;
            margin-bottom: 20px;
        }
        .org-logo {
            max-width: 100px;
            max-height: 100px;
        }
        .org-name {
            font-size: 24px;
            color: #333;
            margin-bottom: 10px;
        }
        .org-intro {
            color: #666;
            line-height: 1.6;
        }
        .form-input {
            margin-bottom: 10px;
            width: 95%;
        }
        .form-label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }
    </style>
</head>
<body>
<div class="org-info">
    <img src="${org.logo}" alt="组织Logo" class="org-logo" />
    <form action="UpdateOrgServlet" method="get" accept-charset="UTF-8"> <!-- 指定提交到的Servlet -->
        <div class="form-input">
            <label class="form-label" for="orgname">组织名称:</label>
            <input type="text" id="orgname" name="orgname" value="${org.orgname}"/>
        </div>
        <div class="form-input">
            <label class="form-label" for="orgid">组织ID:</label>
            <input type="text" id="orgid" name="orgid" value="${org.orgid}" readonly="readonly"/>
        </div>
        <div class="form-input">
            <label class="form-label" for="logo">Logo地址:</label>
            <input type="text" id="logo" name="logo" value="${org.logo}"/>
        </div>
        <div class="form-input">
            <label class="form-label" for="intro">介绍:</label>
            <textarea id="intro" name="intro" rows="4" cols="50">${org.intro}</textarea>
        </div>
        <div class="form-input">
            <button type="submit">修改</button>
        </div>
    </form>
    <form action="DeleteServlet" method="get">
        <div class="form-input">
            <input type="hidden" name="orgid" value="${org.orgid}"/>
            <input type="submit" value="删除"/>
        </div>
    </form>
</div>
</body>
</html>