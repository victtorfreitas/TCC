<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>T�tulo</title>
<link href="<c:url value='/css/bootstrap.css'/>" rel="stylesheet" />
<link href="<c:url value='/css/site.css'/>" rel="stylesheet" />
</head>
<body>
	<header> </header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link"
					href="${linkTo[IndexController].index()}">Home </a></li>
				<li class="nav-item"><a class="nav-link"
					href="${linkTo[UsuarioController].list()}">Usuarios </a></li>
				<c:if test="${usuarioLogado.logado}">
					<li class="nav-item"><a class="nav-link"
						href="${linkTo[LoginController].deslogar()}">Deslogar </a></li>
				</c:if>
				<c:if test="${!usuarioLogado.logado}">
					<li class="nav-item"><a class="nav-link"
						href="${linkTo[LoginController].form()}">Login</a></li>
				</c:if>
			</ul>
		</div>
	</nav>
	<div class="container">
		<main class="col-sm-8">