<%@ page import="np.com.pantbinod.StatusList" %>

<html>
<head>
    <meta name="layout" content="main"/>
    <title>Employee List</title>
</head>
<body>



    <div class="container-fluid">
        <div class="row">
            <a href="${createLink(controller: 'employee', action: 'addEmployee')}" CLASS="btn btn-success">Add Employee</a>
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
                  <td>S.N</td>
                  <td>First Name</td>
                  <td>Middle Name</td>
                  <td>Last Name</td>
                  <td>Address</td>
                  <td>Department</td>
                  <td>Action</td>
                  <td>Change Status</td>
              </tr>

              <g:each in="${employeeList}" status="i" var="e">
                  <tr>
                      <td>${i+1}</td>
                      <td>${e.firstname}</td>
                      <td>${e.middlename}</td>
                      <td>${e.lastname}</td>
                      <td>${e?.address?.state+"/" +e?.address?.district +"/"+e?.address?.localunit+"/"+e?.address?.wardNo+"/"+e?.address?.tole}</td>
                      <td>${e.department}</td>
                      <td>

%{--                          <a href="${createLink(controller: 'employee', action: 'updateEmployee',params: [id:e.id])}"--}%
%{--                              class="btn btn-success">Update</a>--}%


                          <g:if test="${e?.address==null}">
                              <a href="${createLink(controller: 'address', action: 'create',params: [id:e?.id])}"
                                 class="btn btn-success">Add Address</a>
                          </g:if>


                          <g:else>
                                  <a href="${createLink(controller: 'address', action: 'edit',params: [id:e?.address?.id])}"
                                 class="btn btn-success">Update Address</a>
                          </g:else>


                      </td>
%{--                      <td>--}%
%{--                          <g:if test="${e?.status!=StatusList.DRAFT.toString()}">--}%
%{--                              <a href="${createLink(controller: 'employee', action: 'deleteEmployee', params: [id: e?.id,status:StatusList.DRAFT.toString()])}" class="btn btn-info">Draft</a>--}%

%{--                          </g:if>--}%

%{--                          <g:if test="${e?.status!=StatusList.TRASH.toString()}">--}%
%{--                              <a href="${createLink(controller: 'employee', action: 'deleteEmployee', params: [id: e?.id,status:StatusList.TRASH.toString()])}" class="btn btn-danger">Trash</a>--}%

%{--                          </g:if>--}%

%{--                          <g:if test="${e?.status!=StatusList.PUBLISH.toString()}">--}%
%{--                              <a href="${createLink(controller: 'employee', action: 'deleteEmployee', params: [id: e?.id,status:StatusList.PUBLISH.toString()])}" class="btn btn-success">Publish</a>--}%

%{--                          </g:if>--}%
%{--                      </td>--}%
                  </tr>

              </g:each>

          </table>




        </div>



</body>

</html>