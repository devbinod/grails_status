<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

    <div class="container-fluid">
            <g:form action="save" method="post">
                <input type="hidden" name="employee" value="${employee}"/>
                <g:render template="form"/>
                <input type="submit" class="btn btn-success"/>
            </g:form>

    </div>

    </body>
</html>
