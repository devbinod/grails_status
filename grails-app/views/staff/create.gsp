<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'staff.label', default: 'Staff')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
       <div class="container-fluid">
           <h4>Add staff detail</h4>
           <g:form action="save" method="post">
               <g:render template="form"/>
               <input type="submit" name="Save" value="Save" class="btn btn-success"/>
           </g:form>

       </div>
    </body>
</html>
