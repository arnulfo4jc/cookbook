<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Agrega ingredientes</title>
	<meta name="layout" content="list">
	<r:require modules="bootstrap,application"/>
</head>
<body>
	<g:hasErrors bean="${ingredient}">
		<g:renderErrors bean="${ingredient}"/>
	</g:hasErrors>

	<g:link event="deleteRecipe" class="pull-right">Borrar receta</g:link>

	<g:form>
		<div class="form-group">
			<label for="ingredient">Ingrediente</label>
			<g:textField name="ingredient" value="${ingredient?.ingredient}" class="form-control" autofocus="true"/>
		</div>

		<g:submitButton name="addIngredient" value="Agregar ingrediente" class="btn btn-primary"/>
		<g:submitButton name="done" value="Terminar" class="btn btn-primary"/>
	</g:form>

	<g:if test="${ingredients}">
		<br>
		<table class="table">
			<thead>
				<th>Ingredientes</th>
				<th></th>
			</thead>
			<tbody>
				<g:each in="${ingredients}" var="ingredient">
					<tr>
						<td>${ingredient}</td>
						<td style="width:1px;">
							<g:link event="deleteIngredient" params="[ingredient:ingredient]">
								<span class="glyphicon glyphicon-trash"></span>
							</g:link>
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</g:if>
</body>
</html>