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


    <input type="text" id="fullname" onkeyup="searchData()"/>
    <input type="text" id="status" onkeyup="searchData()"/>


    <g:if test="${flash.message}">


        <div class="alert alert-success">
            <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">&times;</a>

            ${flash.message}
        </div>

    </g:if>


    <table class="table table-hover table-bordered" id="myTable" width="100%">
       <thead>
        <tr>
            <td>Staff Id</td>
            <td> Name</td>

            <td>Status</td>
            <td>Action</td>
        </tr>
       </thead>
    </table>




</div>


<script>

$(document).ready(function () {
    searchResult();



})
    function searchResult(fullname,status) {
    $('#myTable').DataTable().destroy();
        $('#myTable').DataTable( {
            "processing": true,
            "serverSide": true,
            "searching":false,
            "ajax": {
                "url": "${createLink(controller: 'staff', action: 'getData')}",
                "data": function (d) {
                    d.fullname= fullname;
                    d.status=status;
                }
            },
            "columns": [
                { "data": "staffId" },
                { "data": "name" },
                { "data": "status" },



            ]
        } );
    }

    function searchData() {

        searchResult($('#fullname').val(),$('#status').val())

    }
</script>
</body>

</html>