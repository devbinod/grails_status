

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
  <div class="container-fluid">
      <h3>Add Employee Detail</h3>
      <g:form action="save" method="post">
        <g:render template="form"/>
          <input type="submit" value="Save Employee" class="btn btn-success"/>
      </g:form>
  </div>


</body>
</html>