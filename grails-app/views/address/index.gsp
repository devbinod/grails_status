<html>
<head>
    <meta name="layout" content="main"/>
    <title>Employee List</title>
</head>

<body>

<div class="container-fluid">
    <div class="row">
        <a href="${createLink(controller: 'address', action: 'create')}" CLASS="btn btn-success">Add Address</a>
    </div>

    <g:if test="${flash.message}">

        <div class="alert alert-success">
            <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">&times;</a>

            ${flash.message}
        </div>

    </g:if>


    <div class="row table">
        <table class="table table-hover table-bordered">
            <tr>
                <td>S.N</td>
                <td>State</td>
                <td>District</td>
                <td>Local Unit</td>
                <td>Ward</td>
                <td>tole</td>
                <td>Action</td>
            </tr>

            <g:each in="${addressList}" status="i" var="e">
                <tr>
                    <td>${i + 1}</td>
                    <td>${e.state}</td>
                    <td>${e.district}</td>
                    <td>${e.localunit}</td>
                    <td>${e.wardNo}</td>
                    <td>${e.tole}</td>

                </tr>

            </g:each>

            </table>


    </div>'

</div>

</body>

</html>