<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    
    <!-- Bootstrap core CSS-->
    <!-- <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
    
    <link href="<c:url value='/styles/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" />
    
		
    <!-- Custom fonts for this template-->
    <!-- <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"> -->
    
    <link href="<c:url value='/styles/fontawesome-free/css/all.min.css'/>" rel="stylesheet" />
    

    <!-- Page level plugin CSS-->
    <!-- <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet"> -->

    <link href="<c:url value='/styles/datatables/dataTables.bootstrap4.css'/>" rel="stylesheet" />
    
    <!-- Custom styles for this template-->
    <!-- <link href="css/sb-admin.css" rel="stylesheet"> -->
    
    <link href="<c:url value='/styles/css/sb-admin.css'/>" rel="stylesheet" />

<title>IFTO</title>
</head>
  
  <body id="page-top">
    
    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
	      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
		     <i class="fas fa-bars"></i>
		  </button>
		  <a class="navbar-brand mr-1" href="${linkTo[IndexController].index()}">IF-Aplication</a>
		     <!-- Navbar Search -->
	      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
	        <div class="input-group">
	          <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
	          <div class="input-group-append">
	            <button class="btn btn-primary" type="button">
	              <i class="fas fa-search"></i>
	            </button>
	          </div>
	        </div>
	      </form>
	
	      <!-- Navbar -->
	      <ul class="navbar-nav ml-auto ml-md-0">
	        <li class="nav-item dropdown no-arrow mx-1">
	          <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	            <i class="fas fa-bell fa-fw"></i>
	            <span class="badge badge-danger">9+</span>
	          </a>
	          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
	            <a class="dropdown-item" href="#">Action</a>
	            <a class="dropdown-item" href="#">Another action</a>
	            <div class="dropdown-divider"></div>
	            <a class="dropdown-item" href="#">Something else here</a>
	          </div>
	        </li>
	        <li class="nav-item dropdown no-arrow mx-1">
	          <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	            <i class="fas fa-envelope fa-fw"></i>
	            <span class="badge badge-danger">3</span>
	          </a>
	          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
	            <a class="dropdown-item" href="#">Action</a>
	            <a class="dropdown-item" href="#">Another action</a>
	            <div class="dropdown-divider"></div>
	            <a class="dropdown-item" href="#">Something else here</a>
	          </div>
	        </li>
	        <li class="nav-item dropdown no-arrow">
	          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	            <i class="fas fa-user-circle fa-fw"></i>
	          </a>
	          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
	            <a class="dropdown-item" href="#">Settings</a>
	            <a class="dropdown-item" href="#">Activity Log</a>
	            <div class="dropdown-divider"></div>
	            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
	          </div>
	        </li>
	      </ul>

	</nav>

	
    <!-- Sidebar -->	
	<ul class="sidebar navbar-nav">
        <li class="nav-item active">
	          <a class="nav-link" href="${linkTo[IndexController].index()}">
	            <i class="fas fa-fw fa-home"></i>
	            <span>Home</span>
	          </a>
    	</li>
    	<li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	            <i class="fas fa-fw fa-folder"></i>
	            <span>Curso</span>
	          </a>
	          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
	            <h6 class="dropdown-header">Opções:</h6>
	            <a class="dropdown-item" href="login.html">Buscar</a>
	            <a class="dropdown-item" href="login.html">Adicionar</a>
	            <a class="dropdown-item" href="register.html">Remover</a>
	            <a class="dropdown-item" href="forgot-password.html">Atualizar</a>
	            <div class="dropdown-divider"></div>
	            <h6 class="dropdown-header">Other Pages:</h6>
	            <a class="dropdown-item" href="forgot-password.html">Listar Todos</a>
	          </div>
        </li>
    </ul>	
	
	
	
	
	
	<!-- Bootstrap core JavaScript-->
    <!-- <script src="vendor/jquery/jquery.min.js"></script> -->
    <script src="<c:url value='/styles/jquery/jquery.min.js'/>"></script>
    
    <!-- <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->
    <script src="<c:url value='/styles/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

    <!-- Core plugin JavaScript-->
    <!-- <script src="vendor/jquery-easing/jquery.easing.min.js"></script> -->
    <script src="<c:url value='/styles/jquery-easing/jquery.easing.min.js'/>"></script>

    <!-- Page level plugin JavaScript-->
    <!-- <script src="vendor/chart.js/Chart.min.js"></script> -->
    <script src="<c:url value='/styles/chart.js/Chart.min.js'/>"></script>
    
    <!-- <script src="vendor/datatables/jquery.dataTables.js"></script> -->
    <script src="<c:url value='/styles/datatables/jquery.dataTables.js'/>"></script>

    <!-- <script src="vendor/datatables/dataTables.bootstrap4.js"></script> -->
    <script src="<c:url value='/styles/datatables/dataTables.bootstrap4.js'/>"></script>

    <!-- Custom scripts for all pages-->
    <!-- <script src="js/sb-admin.min.js"></script> -->
    <script src="<c:url value='/styles/js/sb-admin.min.js'/>"></script>

    <!-- Demo scripts for this page-->
    <!-- <script src="js/demo/datatables-demo.js"></script> -->
    <script src="<c:url value='/styles/js/demo/datatables-demo.js'/>"></script>
    
    <!-- <script src="js/demo/chart-area-demo.js"></script> -->
    <script src="<c:url value='/styles/js/demo/chart-area-demo.js'/>"></script>
</body>
</html>