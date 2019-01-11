<%@taglib tagdir="/WEB-INF/tags" prefix="alura"%>



<form action="${linkTo[UsuarioController].saveOrUpdate(null)}"
	method="post">
	<input  type="text" id="id" name="usuario.id" class="form-control"
		value="${user.id}" hidden="true" />
	<div class="form-group">
		<div class="form-row">
			<div class="col-md-6">
				<div class="form-label-group">
					<input class="form-control" type="text" id="nome" name="usuario.nome"
						 placeholder="Nome: "
						required="required" value="${user.nome}" /> <label for="nome">Nome:</label>
					<alura:validationMessage name="usuario.nome" />
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-label-group">
					<input class="form-control" type="email" id="email" name="usuario.email"
						 value="${user.email}"
						placeholder="E-mail: " required="required" /> <label for="email">E-mail:
					</label>
					<alura:validationMessage name="usuario.email" />
				</div>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="form-row">
			<div class="col-md-6">
				<div class="form-label-group">
					<input class="form-control" type="text" id="login" name="usuario.login"
						 value="${user.login}"
						placeholder="Login: " required="required" /><label for="login">Login:
					</label>
					<alura:validationMessage name="usuario.login" />
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-label-group">
					<input class="form-control" type="password" id="senha" name="usuario.senha"
						 placeholder="Senha: " required="required" />
					<label for="senha">Senha: </label>
					<alura:validationMessage name="usuario.senha" />
				</div>
			</div>
		</div>
	</div>
	<div class="btn form-cadastro"
		style="display: block; margin-right: auto; margin-left: auto; width: 30%;">
		<button type="submit" class="btn btn-outline-primary active">Cadastrar</button>
		<button type="reset" class="btn btn-outline-warning active">Limpar</button>
	</div>
</form>


