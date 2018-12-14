<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/templateLogado/header.jsp" />

<li class="breadcrumb-item"><a
	href="${linkTo[UsuarioController].list()}">Usuarios</a></li>
<li class="breadcrumb-item active">Listar</li>
</ol>



<div class="card mb-3">
	<div class="card-header" style="border-bottom: 0px">
		<i class="fas fa-table"></i> Usuarios Cadastrados <a
			href="${linkTo[UsuarioController].form()}"
			class="btn btn-outline-secondary" style="float: right;"> Novo
			Usuario <span class="fa fa-plus-circle" /></span>
		</a>

	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-striped table-bordered table-hover"
				id="tabelaUsuario">
				<thead>
					<tr>
						<th>Id</th>
						<th>Nome</th>
						<th>E-mail</th>
						<th>Login</th>
						<th>Ação</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${usuarios}" var="usuario" varStatus="i">
						<tr>
							<td>${i.index}</td>
							<td>${usuario.nome}</td>
							<td>${usuario.email}</td>
							<td>${usuario.login}</td>
							<td><a
								href="${linkTo[UsuarioController].editToForm(i.index)}"> <span
									class="glyphicon glyphicon-pencil">i</span></a> <a class="close"
								aria-label="Close"
								href="${linkTo[UsuarioController].remove(i.index)}"><span
									class="glyphicon glyphicon-remove" aria-hidden="true">x</span></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<c:import url="/WEB-INF/jsp/templateLogado/footer.jsp" />
