<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<c:import url="/WEB-INF/jsp/templateLogado/header.jsp" />

<li class="breadcrumb-item"><a
	href="${linkTo[UsuarioController].list()}">Usuarios</a></li>
<li class="breadcrumb-item active">Listar</li>

</ol>



<div class="card mb-3">
	<div class="card-header" style="border-bottom: 0px">
		<i class="fas fa-table"></i> Usuarios Cadastrados

		<button class="btn btn-outline-secondary" data-toggle="modal"
			data-target="#newUserModel" style="float: right;">
			Novo Usuario <span class="fa fa-plus-circle" /></span>
		</button>

	</div>
	<div class="card-body">
		<c:import url="../default/table.jsp"></c:import>
	</div>
</div>

<c:import url="/WEB-INF/jsp/templateLogado/footer.jsp" />
