<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="alura"%>
<c:import url="/WEB-INF/jsp/templateDeslogado/header.jsp" />
<div style="padding: 8%;">
	<div class="card card-login mx-auto mt-5">
		<div class="card-header">Login</div>
		<div class="card-body">
			<form action="${linkTo[LoginController].login(null)}" method="post">

				<c:if test="${not empty errors}">
					<div class="alert alert-danger alert-dismissable">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<alura:validationMessage name="login_invalido" />
					</div>
				</c:if>

				<div class="form-group">
					<div class="form-label-group">
						<input id="login" name="usuario.login" type="text"
							class="form-control" placeholder="Login:" required="required" />
						<label for="login">Login </label>
					</div>
				</div>
				<div class="form-group">
					<div class="form-label-group">
						<input id="senha" name="usuario.senha" type="password"
							class="form-control" placeholder="Senha:" required="required" /><label
							for="senha">Senha </label>
					</div>
				</div>
				<div class="form-group">
					<div class="checkbox">
						<label> <input type="checkbox" value="remember-me">
							Lembrar de mim
						</label>
					</div>
				</div>
				<button type="submit" class="btn btn-primary btn-block">Autenticar</button>
			</form>
			<div class="text-center">
				<a class="d-block small mt-3" href="${linkTo[UsuarioController].form()}">Cadastrar uma
					conta</a> <a class="d-block small" href="forgot-password.html">Problemas
					no login?</a>
			</div>
		</div>
	</div>
</div>
<c:import url="/WEB-INF/jsp/templateDeslogado/footer.jsp" />