<%@ page import="np.com.pantbinod.StatusList" %>

<html>
<head>
    <meta name="layout" content="main"/>
    <title>Employee List</title>
</head>
<body>



<div class="container-fluid">
    <div class="row">
        <a href="${createLink(controller: 'staff', action: 'create')}" CLASS="btn btn-success">Add Staff</a>
    </div>

    <div class="row float-right">
        <a href="${createLink(controller: 'employee',action: 'employeeList')}" class="btn btn-success">All</a>
        <a href="${createLink(controller: 'employee',action: 'employeeList', params: [status: StatusList.PUBLISH.toString()])}" class="btn btn-primary">Publish</a>
        <a href="${createLink(controller: 'employee',action: 'employeeList', params: [status: StatusList.DRAFT.toString()])}" class="btn btn-secondary">Draft</a>
        <a href="${createLink(controller: 'employee',action: 'employeeList',params: [status: StatusList.TRASH.toString()])}" class="btn btn-danger">Trash</a>
    </div>


    <g:if test="${flash.message}">


        <div class="alert alert-success">
            <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">&times;</a>

            ${flash.message}
        </div>

    </g:if>



    <table class="table table-hover table-bordered">
        <tr>
            <td>Staff Id</td>
            <td>First Name</td>
            <td>Middle Name</td>
            <td>Last Name</td>
            <td>Status</td>
            <td>Action</td>
        </tr>

        <g:each in="${staffList}" status="i" var="e">
            <tr>
                <td>${e?.staffId}</td>
                <td>${e.firstname}</td>
                <td>${e.middlename}</td>
                <td>${e.lastname}</td>
                <td>${e?.status}</td>
                <td>
                    <a href="${createLink(controller: 'staff', action: 'show', params: [id: e?.id])}">View</a>
                    <a href="${createLink(controller: 'staff', action: 'edit', params: [id: e?.id])}">Update</a>
                    <a href="${createLink(controller: 'staff', action: 'delete', params: [id: e?.id])}">Delete</a>
                </td>


            </tr>

        </g:each>

    </table>




</div>



</body>

</html>