<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="msg"%>


<html>
<head>

<!-- Bootstrap core CSS-->
<link href="<c:url value='/styles/bootstrap/css/bootstrap.min.css'/>"
	rel="stylesheet" />


<!-- Custom fonts for this template-->
<link href="<c:url value='/styles/fontawesome-free/css/all.min.css'/>"
	rel="stylesheet" type="text/css" />

<!-- Page level plugin CSS-->
<link
	href="<c:url value='/styles/datatables/dataTables.bootstrap4.css'/>"
	rel="stylesheet" />

<!-- Custom styles for this template-->
<link href="<c:url value='/styles/css/sb-admin.css'/>" rel="stylesheet" />

<title>IFTO</title>
</head>

<body id="page-top">

	<nav class="navbar navbar-expand navbar-dark static-top"
		style="background-color: #233142 !important;">
		<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>
		<a class="navbar-brand mr-1" href="${linkTo[IndexController].index()}">IF-Aplication</a>
		<!-- Navbar Search -->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search for..."
					aria-label="Search" aria-describedby="basic-addon2">
				<div class="input-group-append">
					<button class="btn btn-primary" type="button">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</form>

		<!-- Navbar -->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown no-arrow mx-1"><a
				class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <span
					class="badge badge-danger">9+</span>
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="alertsDropdown">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
			<li class="nav-item dropdown no-arrow mx-1"><a
				class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i> <span
					class="badge badge-danger">3</span>
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="messagesDropdown">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
			<li class="nav-item dropdown no-arrow"><a
				class="nav-link dropdown-toggle" href="#" id="userDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-user-circle fa-fw"></i>
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a class="dropdown-item" href="#">Editar conta</a> <a
						class="dropdown-item" href="#">Ver atividades</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#" data-toggle="modal"
						data-target="#logoutModal">Sair</a>
				</div></li>
		</ul>
	</nav>

	<div id="wrapper">


		<!-- Sidebar -->
		<ul class="sidebar navbar-nav" style="background-color: #0f1e2b;">
			<li class="nav-item active"><a class="nav-link"
				href="${linkTo[IndexController].index()}"> <i
					class="fas fa-fw fa-home"></i> <span>Home</span>
			</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle"
				href="${linkTo[UsuarioController].list()}" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-fw fa-folder"></i> <span>Usuario</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">Opções:</h6>
					<a class="dropdown-item" href="login.html">Buscar</a> <a
						class="dropdown-item" href="${linkTo[UsuarioController].form()}">Adicionar</a>
					<a class="dropdown-item" href="register.html">Remover</a> <a
						class="dropdown-item" href="forgot-password.html">Atualizar</a>
					<div class="dropdown-divider"></div>
					<h6 class="dropdown-header">Outras Opções:</h6>
					<a class="dropdown-item" href="${linkTo[UsuarioController].list()}">Listar
						Todos</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-fw fa-folder"></i> <span>Curso</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">Opções:</h6>
					<a class="dropdown-item" href="login.html">Buscar</a> <a
						class="dropdown-item" href="login.html">Adicionar</a> <a
						class="dropdown-item" href="register.html">Remover</a> <a
						class="dropdown-item" href="forgot-password.html">Atualizar</a>
					<div class="dropdown-divider"></div>
					<h6 class="dropdown-header">Outras Opções:</h6>
					<a class="dropdown-item" href="forgot-password.html">Listar
						Todos</a>
				</div></li>
		</ul>

		<div id="content-wrapper">
			<div class="container-fluid">

				<ol class="breadcrumb">
					<c:if test="${not empty errors}">
						<div
							style="display: block; position: fixed; right: 15px; width: 20%;">
							<div class="alert alert-success alert-dismissable"
								style="margin: 0 auto; box-shadow: 1px 1px 5px black;">
								<button type="button" class="close" data-dismiss="alert"
									aria-hidden="true">&times;</button>
								<msg:validationMessage name="${msg}" />
							</div>
						</div>
					</c:if>
					<li class="breadcrumb-item"><a
						href="${linkTo[IndexController].index()}">Home</a></li>