<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/templateLogado/header.jsp" />

<li class="breadcrumb-item"><a
	href="${linkTo[UsuarioController].list()}">Usuarios</a></li>
<li class="breadcrumb-item active">Buscar</li>
</ol>
<div class="card">
	<div class="card-header">
		<i class="far fa-file-alt"></i> Formulario de Usuario
	</div>
	<div class="card-body">
		<form action="${linkTo[UsuarioController].findByUser(null)}"
			method="post">
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-3">
						<div class="form-label-group">
							<input id="matricula" name="usuario.id" type="text"
								class="form-control" placeholder="Matricula:"
								value="${user.id}" /> <label
								for="matricula">Matricula:</label>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-label-group">
							<input class="form-control" type="text" id="nome"
								name="usuario.nome" placeholder="Nome: " value="${user.nome}" /><label
								for="nome">Nome:</label>
						</div>
					</div>
					<div class="col-md-6" style="line-height: 2.1;">
						<button type="submit" class="btn btn-outline-primary active" style="line-height: 2.1;">
							<span class="fas fa-search"> </span> Pesquisar
						</button>
						<button type="reset" class="btn btn-outline-warning active" style="line-height: 2.1;">Limpar</button>
					</div>
				</div>
			</div>
		</form>
		<c:if test="${not empty usuariosFilter}">
			<c:import url="../default/table.jsp"></c:import>
		</c:if>

	</div>
</div>
<c:import url="/WEB-INF/jsp/templateLogado/footer.jsp" />