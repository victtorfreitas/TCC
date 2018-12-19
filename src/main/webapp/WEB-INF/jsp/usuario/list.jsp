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
		<div class="table-responsive">
			<table class="table table-striped table-bordered table-hover"
				id="tabelaUsuario">
				<thead>
					<tr>
						<th class="text-center" style="width: 4%;">#</th>
						<th>Nome</th>
						<th>E-mail</th>
						<th>Login</th>
						<th class="text-center">Ação</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${usuarios}" var="usuario" varStatus="i">
						<tr id="trUsuarios">
							<td class="text-center" id="index">${i.index+1}</td>
							<td>${usuario.nome}</td>
							<td>${usuario.email}</td>
							<td>${usuario.login}</td>
							<td class="text-center"><a class="btn btn-primary"
								href="${usuarioController.editToForm(i.index)}"> <span
									class="fa fa-edit" data-toggle="modal"
									data-target="#newUserModel"></span>
							</a> <!--  <button id="valorId" type="submit" name="index" class="btn btn-danger" data-toggle="modal"
									data-target="#removerUserModel" onclick="removerUsuario(${i.index})"
									value="${i.index}">
									<span class="fa fa-times" style="font-size: 110%;"
										aria-hidden="true"></span>
								</button> -->
								<button class="btn"
									onclick="confirma(${usuario.id})">Remover</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

<c:import url="/WEB-INF/jsp/templateLogado/footer.jsp" />
