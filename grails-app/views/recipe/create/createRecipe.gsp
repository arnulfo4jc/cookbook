<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Recetas</title>
	<meta name="layout" content="list">
	<r:require modules="bootstrap,application"/>
</head>
<body>
	<g:hasErrors bean="${recipe}">
		<g:renderErrors bean="${recipe}"/>
	</g:hasErrors>

	<g:form>
		<div class="form-group">
			<label for="name">Nombre</label>
			<g:textField name="name" value="${recipe?.name}" autofocus="true" class="form-control"/>
		</div>

		<div class="form-group">
			<label for="type">Tipo</label>
			<g:select name="type" from="${recipe?.constraints?.type?.inList}" value="${recipe?.type}" class="form-control"/>
		</div>

		<div class="form-group">
			<label for="serve">Receta para</label>
			<g:textField name="serve" value="${recipe?.serve}" class="form-control"/>
		</div>

		<div class="form-group">
			<label for="occation">Temporada del anio</label>
			<g:select name="occation" from="${recipe?.constraints?.occation?.inList}" value="${recipe?.occation}" noSelection="['':'-General-']" class="form-control"/>
		</div>

		<div class="form-group">
			<label for="method">Metodo</label>
			<g:textArea name="method" value="${recipe?.method}" class="form-control" style="resize:vertical;"/>
		</div>

		<g:submitButton name="create" value="Agregar ingredientes" class="btn btn-primary"/>
	</g:form>
</body>
</html>