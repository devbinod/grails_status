<!doctype html>
<html>
    <head>
        <title>Page Not Found</title>
        <meta name="layout" content="main">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
    </head>
    <body>

        <div class="container-fluid">
           <h2><span> Oops Something went wrong!!!!</span></h2>
            <a href="${createLink(controller: 'employee',action: 'employeeList')}" class="btn btn-success">
                Go to Employee List
            </a>
        </div>

    </body>
</html>
