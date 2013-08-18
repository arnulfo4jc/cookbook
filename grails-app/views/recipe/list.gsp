<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Recetas</title>
	<meta name="layout" content="list">
	<r:require modules="bootstrap,application"/>
</head>
<body>
	<g:link action="create" class="pull-right">Crear receta</g:link>
	<g:if test="${recipes}">
		<table class="table">
			<thead>
				<th>Receta</th>
				<th></th>
			</thead>
			<tbody>
				<g:each in="${recipes}" var="recipe">
				<tr>
					<td>
						<g:link action="show" id="${recipe.id}">${recipe.name}</g:link>
					</td>
					<td style="width:1px;">
						<g:link action="delete" id="${recipe.id}"><span class="glyphicon glyphicon-trash"></span></g:link>
					</td>
				</tr>
				</g:each>
			</tbody>
		</table>
	</g:if>
	<g:else>
		<div class="alert alert-info">
			No hay recetas que mostrar
		</div>
	</g:else>
</body>
</html>