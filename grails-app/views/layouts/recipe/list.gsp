<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><g:layoutTitle default="recipes"/></title>
	<r:layoutResources/>
</head>
<body>
	<g:render template="/layouts/navbar"/>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<g:layoutBody/>
				<g:if test="${flash.message}">
					${flash.message}
				</g:if>
			</div>
		</div>
	</div>
	<r:layoutResources/>
</body>
</html>