<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Detalhes</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<%@ include file="header.jsp"%>
</head>

<body>
	<%@ include file="menu.jsp"%>
	<div class="container">
		<h1>Detalhes</h1>
		<form action="produto" method="get">
			<table class="table table-striped">
				<tr>
					<th>Código</th>
					<th>Nome</th>
					<th>Quantidade</th>
					<th>Valor</th>
					<th>Data de Fabricação</th>
					<th>Categoria</th>
					<th>Marca</th>
				</tr>
				<c:forEach items="${produtos}" var="p">
				<tr>
					<td>${p.codigo}</td>
					<td>${p.nome}</td>
					<td>${p.quantidade}</td>
					<td>${p.valor}</td>
					<td><fmt:formatDate value="${p.dataFabricacao.time}"
							pattern="dd/MM/yyyy" /></td>
					<td>${p.categoria.nome}</td>
					<td>${p.marca.nome}</td>
				</tr>
			</c:forEach>
			</table>
			<div class="form-group my-3">
				<label for="detalhes">Observações</label> <br>
				<textarea type="text" name="detalhes" id="detalhes" class="w-50"> </textarea>
			</div>

			<button type="submit" class="btn btn-primary">Enviar</button>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

	<%@ include file="footer.jsp"%>
</body>

</html>