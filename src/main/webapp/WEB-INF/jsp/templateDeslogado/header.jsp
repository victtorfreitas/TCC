<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">
		<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>
		<a class="navbar-brand mr-1" href="${linkTo[IndexController].index()}">IF-Aplication</a>

		<!-- Navbar -->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown no-arrow"><a
				class="nav-link dropdown-toggle" href="#" id="userDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-user-circle fa-fw"></i>
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a class="dropdown-item" href="#">Criar conta</a> <a
						class="dropdown-item" href="#">Esqueceu a senha</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#" data-toggle="modal"
						data-target="#logoutModal">Problemas?</a>
				</div></li>
		</ul>
	</nav>

	<div id="wrapper">
		<div id="content-wrapper">
			<div class="container-fluid">