<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
							<td class="text-center"><a class="btn btn-outline-info"
								href="${linkTo[UsuarioController].infoToForm(i.index)}"> <span
									class="fas fa-info"></span>
							</a> <a class="btn btn-outline-warning"
								href="${linkTo[UsuarioController].editToForm(i.index)}"> <span
									class="fas fa-pencil-alt"></span>
							</a> <a class="btn btn-outline-danger"
								href="${linkTo[UsuarioController].removeToForm(i.index)}"><span
									class="fa fa-times" style="font-size: 110%;" aria-hidden="true"></span>
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
