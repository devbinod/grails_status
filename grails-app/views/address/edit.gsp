<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>

    <div class="container-fluid">
        <g:form action="update" method="post">
            <input type="hidden" name="id" value="${address?.id}"/>
            <g:render template="form" model="[address: address]"/>
            <input type="submit" value="Update"/>
        </g:form>

    </div>
    </body>
</html>
