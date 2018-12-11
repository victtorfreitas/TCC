<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>IF-Aplication</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="<c:url value='/css/menu.css'/>" rel="stylesheet" />
<script src="<c:url value='/js/site.js'/>" type="text/javascript"></script>

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
	<div id="wrapper" class="animate">
		<nav
			class="navbar header-top fixed-top navbar-expand-lg navbar-dark bg-dark">
			<span class="navbar-toggler-icon leftmenutrigger"></span> <a
				class="navbar-brand" href="${linkTo[IndexController].index()}">IFTO</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#menuLeft" aria-controls="menuLeft"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse" id="menuLeft">
				<ul class="navbar-nav animate side-nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i class="fas fa-user"></i> Submenu <i
							class="fas fa-user shortmenu animate"></i>
					</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="#" title="Cart"><i
							class="fas fa-cart-plus"></i> Cart <i
							class="fas fa-cart-plus shortmenu animate"></i></a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						title="Comment"><i class="fas fa-comment"></i> Comment <i
							class="fas fa-comment shortmenu animate"></i></a></li>
				</ul>
				<ul class="navbar-nav ml-md-auto d-md-flex">
					<li class="nav-item"><a class="nav-link" href="#"><i
							class="fas fa-user"></i> Profile</a></li>
					<li class="nav-item"><a class="nav-link" href="#"><i
							class="fas fa-key"></i> Logout</a></li>
				</ul>
			</div>
		</nav>
		<div class="container-fluid">
			<div class="row">
				<div class="col">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Try Other</h5>
							<h6 class="card-subtitle mb-2 text-muted">Bootstrap 4.0.0
								Snippet by pradeep330</h6>
							<p class="card-text">You can also try different version of
								Bootstrap V4 side menu. Click below link to view all Bootstrap
								Menu versions.</p>
							<a href="https://bootsnipp.com/pradeep330" class="card-link">link</a>
							<a href="http://websitedesigntamilnadu.com" class="card-link">Another
								link</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Try Other</h5>
							<h6 class="card-subtitle mb-2 text-muted">Bootstrap 4.0.0
								Snippet by pradeep330</h6>
							<p class="card-text">You can also try different version of
								Bootstrap V4 side menu. Click below link to view all Bootstrap
								Menu versions.</p>
							<a href="https://bootsnipp.com/pradeep330" class="card-link">link</a>
							<a href="http://websitedesigntamilnadu.com" class="card-link">Another
								link</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">First</th>
										<th scope="col">Last</th>
										<th scope="col">Handle</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">First</th>
										<th scope="col">Last</th>
										<th scope="col">Handle</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script defer
		src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>
</html>