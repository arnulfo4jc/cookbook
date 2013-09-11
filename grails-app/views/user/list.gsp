<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>list</title>
	<meta name="layout" content="list">
	<r:require modules="bootstrap,application"/>
</head>
<body>
      <table class="table table-striped">
         <thead>
          <tr>
            <th><g:message code="ni.com.cookbook.email"/></th>
            <th><g:message code="ni.com.cookbook.fullname"/></th>
            <th><g:message code="ni.com.cookbook.role"/></th>
            <th><g:message code="ni.com.cookbook.enable"/></th>
          </tr>
        </thead>
        <tbody>
        <g:each in="${userInstance}" var="us" status="i">
          <tr>
            <td>${us.email}</td>
            <td>${us.fullName}</td>
            <td>${us.role}</td>
            <td>${us.enable}</td>
          </tr>
        </g:each>
        </tbody>
      </table>
  
</body>
</html>