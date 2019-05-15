<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

            <div class="container-fluid">
                <g:form action="saveDeparment" method="post">
                    <g:render template="form"/>
                    <input type="submit" value="Save"/>
                </g:form>

            </div>


    </body>
</html>
