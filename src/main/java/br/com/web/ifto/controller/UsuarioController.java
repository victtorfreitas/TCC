package br.com.web.ifto.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.web.ifto.controller.seguranca.UsuarioLogado;
import br.com.web.ifto.model.annotations.Open;
import br.com.web.ifto.model.dao.UsuarioDao;
import br.com.web.ifto.model.entity.Usuario;
import br.com.web.ifto.model.util.UtilVerificacao;

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

	// Paginas (INTERFACE)
	@Open
	@Override
	public void form() {
	}

	@Override
	public void list() {
		preencheLista();
		result.include("usuarios", usuarios);
	}
	
	@Override
	public void find() {
		
	}

	@Override
	public void remove() {
	}
	
	@Override
	@Deprecated
	public void index() {
		/**
		 * Não implementado
		 */
	}
	
	//Métodos lógicos
	
	@Post
	@IncludeParameters
	public void findByUser(Usuario usuario) {
		if(UtilVerificacao.isValuesFields(usuario)) {
			usuarios = dao.findByFields(usuario);
		}else {
			preencheLista();
		}
		result.include("usuariosFilter", true);
		result.include("usuarios", usuarios);
		redirectTo(result).find();
	}
	
	@Get("/usuario/removeToForm/{index}")
	public void removeToForm(int index) {
		actionRemoveOrEdit(index, "remove");
	}
	
	public void removeById(Long id) {
		Usuario usuario = findById(id);
		remove(usuario);
	}
	private Usuario findById(Long id) {
		return dao.findById(id);
	}

	@Get("/usuario/infoToForm/{index}")
	public void infoToForm(int index) {
		result.include("info", true);
		actionRemoveOrEdit(index, "edit");
	}

	@Get("/usuario/remove/{id}")
	public void remove(Long id) {
		Usuario usuario = getUsuarioById(id);
		remove(usuario);
	}

	private void remove(Usuario usuario) {
		dao.remove(usuario);
		usuarios.remove(usuario);
		addMensagem("remover_usuario", "Usuario <b>" + usuario.getNome() + "</b> Removido com sucesso");
		onMsgRedirectTo(validator).list();
	}

	@Get("/usuario/editToForm/{index}")
	public void editToForm(int index) {
		actionRemoveOrEdit(index, "edit");
	}

	@IncludeParameters
	@Post
	public void saveOrUpdate(@Valid Usuario usuario) {
		onMsgRedirectTo(validator).form();
		if (usuario.getId() != null) {
			update(usuario);
		} else {
			save(usuario);
		}
		onMsgRedirectTo(validator).list();
	}

	// Metodos privados
	
	private void loadUser(int index) {
		UsuarioController.index = index;
		Usuario usuario = usuarios.get(index);
		result.include("user", usuario);
	}
	
	private void actionRemoveOrEdit(int index, String action) {
		loadUser(index);
		result.include(action, true);
		redirectTo(result).list();
	}

	private void update(Usuario usuario) {
		dao.update(usuario);
		manipulaList(index, usuario);
		addMensagem("editar_usuario", "Usuario <b>" + usuario.getNome() + "</b> editado com sucesso");
	}

	private void save(Usuario usuario) {
		dao.save(usuario);
		manipulaList(usuario);
		addMensagem("adiciona_usuario", "Usuario <b>" + usuario.getNome() + "</b> adicionado com sucesso");
	}
	
	
	//Implementar metodo de buscar 
	private void preencheLista() {
		//if (usuarios == null || usuarios.isEmpty()) {
			usuarios = dao.findAll();
		//}
	}

	private void manipulaList(Usuario usuario) {
		preencheLista();
		usuarios.add(usuario);
	}

	private void manipulaList(int index, Usuario usuario) {
		preencheLista();
		usuarios.add(index, usuario);
	}

	private Usuario getUsuarioById(Long id) {
		for (Usuario usuario : usuarios) {
			if (usuario.getId() == id) {
				return usuario;
			}
		}
		return null;
	}

	/**
	 * Adiciona uma mensagem
	 * 
	 * @param nome
	 * @param texto
	 */
	private void addMensagem(String nome, String texto) {
		addMensagem(nome, texto, validator);
		result.include("msg", nome);
	}

}
