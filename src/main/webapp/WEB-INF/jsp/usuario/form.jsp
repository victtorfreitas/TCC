<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="alura"%>
<c:import url="/WEB-INF/jsp/templateLogado/header.jsp" />

<li class="breadcrumb-item"><a
	href="${linkTo[UsuarioController].list()}">Usuarios</a></li>
<li class="breadcrumb-item active">Cadastrar</li>
</ol>
<div class="card">
	<div class="card-header">
		<i class="far fa-file-alt"></i> Formulario de Usuario
	</div>
	<div class="card-body">
		<c:import url="../default/formularioUsuario.jsp"></c:import>
	</div>
</div>

<c:import url="/WEB-INF/jsp/templateLogado/footer.jsp" />