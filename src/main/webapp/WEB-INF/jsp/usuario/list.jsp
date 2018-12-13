<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/templateLogado/header.jsp" />

<li class="breadcrumb-item"><a
	href="${linkTo[UsuarioController].list()}">Usuarios</a></li>
<li class="breadcrumb-item active">Listar</li>
</ol>

<a href="${linkTo[UsuarioController].form()}">Novo Usuario</a>

<div class="card mb-3">
	<div class="card-header">
		<i class="fas fa-table"></i> Usuarios Cadastrados
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="tabelaUsuario" width="100%"
				cellspacing="0">
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
