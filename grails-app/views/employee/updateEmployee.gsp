<%--
  Created by IntelliJ IDEA.
  User: developer
  Date: 4/30/19
  Time: 8:42 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>

        <div class="container-fluid">
            <h2>Update Employee Detail</h2>


            <g:form action="update" method="post">
                <input type="hidden" name="id" value="${employee.id}"/>
                <g:render template="form" model="[employee:employee]"/>
                <input type="submit" value="Update Employee" class="btn btn-success"/>
            </g:form>
        </div>




</body>
</html>