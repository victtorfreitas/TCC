package br.com.web.ifto.controller;

import java.util.List;

import javax.ejb.Init;
import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.web.ifto.controller.seguranca.UsuarioLogado;
import br.com.web.ifto.model.dao.UsuarioDao;
import br.com.web.ifto.model.entity.Usuario;

@Controller
public class UsuarioController implements iController {
	private Result result;

	private UsuarioDao dao;
	private Validator validator;
	private UsuarioLogado usuarioLogado;
	private static List<Usuario> usuarios;
	private static int index;

	public UsuarioController() {
	}

	@Inject
	public UsuarioController(Result result, UsuarioDao dao, Validator validator, UsuarioLogado usuarioLogado) {
		this.result = result;
		this.dao = dao;
		this.validator = validator;
		this.usuarioLogado = usuarioLogado;
	}

	// Override

	@Override
	public void form() {
	}

	@Override
	public void list() {
		preencheLista();
		result.include("usuarios", usuarios);
	}

	@Get("/usuario/remove/{id}")
	public void remove(int id) {
		Usuario usuario = usuarios.get(index);
		dao.remove(usuario);
		usuarios.remove(usuario);
		redirectToList(result);
	}

	@Get("/usuario/editToForm/{index}")
	public void editToForm(int index) {
		UsuarioController.index = index;
		Usuario usuario = usuarios.get(index);
		result.include("user", usuario);
		redirectToList(result);
	}

	@IncludeParameters
	@Post
	public void saveOrUpdate(@Valid Usuario usuario) {
		onErrorRedirectToForm(validator);
		if (usuario.getId() != null) {
			update(usuario);
		} else {
			save(usuario);
		}
		redirectToList(result);
	}

	// Metodos privados

	private void update(Usuario usuario) {
		dao.update(usuario);
		manipulaList(index, usuario);
	}

	private void save(Usuario usuario) {
		dao.save(usuario);
		manipulaList(usuario);
	}

	private void preencheLista() {
		if (usuarios == null || usuarios.isEmpty()) {
			usuarios = dao.findAll();
		}
	}
	private void manipulaList(Usuario usuario) {
		preencheLista();
		usuarios.add(usuario);
	}
	private void manipulaList(int index, Usuario usuario) {
		preencheLista();
		usuarios.add(index,usuario);
	}
}
