<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <div class="container-fluid">
            <div class="row">
                <a href="${createLink(controller: 'department',action: 'create')}">Create Department</a>
            </div>
            <div class="row">
                <table class="table table-bordered table-hover table-danger">
                    <tr>
                        <td>S.N</td>
                        <td>Department ID</td>

                        <td>Department name</td>
                        <td>No of Employee</td>
                        <td>Action</td>

                    </tr>
                    <g:each in="${departmentList}" var="d" status="i">

                      <tr>
                          ${d}
                          <td>${i+1}</td>
                          <td>${d?.departmentId}</td>

                          <td>${d?.departmentName}</td>
                          <td>${d?.noOfEmployee}</td>
                          <td>Action</td>
                      </tr>
                    </g:each>

                </table>
            </div>
        </div>
    </body>
</html>