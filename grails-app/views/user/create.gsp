<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>login</title>
	<meta name="layout" content="create">
	<r:require modules="bootstrap,application"/>
</head>
<body>

	<div class="row">
		<g:if test="${flash.message}">
			<div class="col-lg-12 alert alert-danger">
				<a class="close" data-dismiss="alert" href="#">&times;</a>
					<h4>${message(code:'ni.com.cookbook.errors')}</h4>
					<g:eachError bean="${userInstance}" var="us">
						<li id="er">
							<g:message error="${us}"/>
						</li>
					</g:eachError>
			</div>
		</g:if>
	</div>
	
	<g:form  controller= "user" action="save" class="form-inline">
		<g:if test="${session.user=='user'}">
			<g:hiddenField name="role" value="user"/>
		</g:if>
		<g:render template="frcreate"/>
	</g:form>
</body>
</html>