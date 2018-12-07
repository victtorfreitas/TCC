package br.com.web.ifto.controller;

import javax.inject.Inject;
import javax.validation.constraints.NotNull;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.web.ifto.controller.seguranca.UsuarioLogado;
import br.com.web.ifto.model.annotations.Open;
import br.com.web.ifto.model.dao.UsuarioDao;
import br.com.web.ifto.model.entity.Usuario;

@Controller
public class LoginController implements iController {

	private UsuarioDao dao;
	private UsuarioLogado usuarioLogado;
	private Result result;
	private Validator validator;

	public LoginController() {
	}

	@Inject
	public LoginController(UsuarioDao dao, UsuarioLogado usuarioLogado, Result result, Validator validator) {
		this.dao = dao;
		this.usuarioLogado = usuarioLogado;
		this.result = result;
		this.validator = validator;
	}

	@Open
	@Override
	public void form() {
	}

	@Override
	@Deprecated
	public void list() {
		/** 
		 * Página não implementada
		 */
	}

	@Open
	@Post
	public void login(@NotNull Usuario usuario) {
		if (!validator.hasErrors()) {
			usuario = dao.loginCheck(usuario);
			if (usuario != null) {
				usuarioLogado.fazLogin(usuario);
				redirectToClassIndex(IndexController.class, result);
				return;
			}
		}
		addMensagem("login_invalido", "Login ou senha incorretos!", validator);
		onErrorRedirectToForm(validator);
	}

	@Open
	public void deslogar() {
		usuarioLogado.deslogar();
		redirectToForm(result);
	}

}
