<%@ page import="np.com.pantbinod.Department" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'staff.label', default: 'Staff')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container-fluid">
            <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
            <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
            <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <!------ Include the above in your HEAD tag ---------->

            <section id="tabs" class="project-tab">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <nav>
                                <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Staff Detail</a>
                                    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Address Detail</a>
                                    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Department Detail</a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                   <table>

                                       <tr>


                                           <td>Name</td>
                                           <g:if test="${staff?.middlename}">
                                               <td>${staff?.firstname + " "+ staff?.middlename + " " + staff?.lastname}</td>

                                           </g:if>
                                           <g:else>
                                               <td>${staff?.firstname + " " + staff?.lastname}</td>

                                           </g:else>
                                       </tr>

                                       <tr>
                                           <td>Staff Id </td>
                                           <td>${staff?.staffId}</td>
                                       </tr>

                                   </table>


                                </div>
                                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">

                                    <div class="row">
                                        <g:if test="${staff?.address}">
                                            <a href="${createLink(controller: 'address', action: 'update', params: [addressId: staff?.address?.id])}" class="btn btn-info">Update Address</a>

                                        </g:if>
                                        <g:else>
                                            <a href="${createLink(controller: 'address', action: 'create', params: [domainId: staff?.id, domainName: 'staff'])}" class="btn btn-info">Add Address</a>

                                        </g:else>
                                        <table class="table table-hover">
                                            <tr>
                                                <td>
                                                    State :
                                                </td>
                                               <td>
                                                    ${staff?.address?.state}
                                               </td>

                                            </tr>
                                            <tr>
                                                <td>District</td>
                                                <td>${staff?.address?.district}</td>
                                            </tr>


                                            <tr>
                                                <td>Local Unit</td>
                                                <td>${staff?.address?.localunit}</td>
                                            </tr>

                                        </table>


                                    </div>


                                </div>
                                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                    <div class="row">
                                        <div class="row form-row">

                                            <label>Choose Department</label>
                                            <g:select name="department" from="${Department.list()}" optionKey="id" optionValue="departmentName" class="form-control" value="${staff?.department?.id}" noSelection="${['':'Select Department']}" onchange="saveDepartment()" id="departmentId"/>
                                        </div>

                                    </div>

                                    <div class="row" id="departmentDetail">
                                        <g:render template="departmentDetail" model="[department: staff?.department]"/>

                                    </div>
                                    <div class="row" id="showDepartment">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    
    <script>
        function saveDepartment() {


            var departmentId =  $('#departmentId').val()
            if(departmentId=== null || departmentId === ''){
                alert("Please select department")
                return
            }

            $.ajax({

                url: "${createLink(controller: 'staff', action: 'addDepartment')}",
                data: {
                  departmentId: $('#departmentId').val(),
                    staffId : "${staff?.id}"
                },
                success: function (resp) {
                    $("#departmentDetail").hide();
                    $('#showDepartment').html(resp)
                },
                error: function (e) {
                    alert("error")

                }
            })
        }
    </script>
    
    </body>
</html>
