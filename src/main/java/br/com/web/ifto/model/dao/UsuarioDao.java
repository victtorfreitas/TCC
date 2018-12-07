package br.com.web.ifto.model.dao;

import java.io.Serializable;

import javax.ejb.Stateless;

import br.com.web.ifto.model.entity.Usuario;
import br.com.web.ifto.model.util.Where;

@Stateless
public class UsuarioDao extends GenericDao<Usuario> implements Serializable {

	private static final long serialVersionUID = 1L;


	public UsuarioDao() {
		super(Usuario.class);
	}

	public Usuario loginCheck(Usuario usuario) {
		String where = new Where().createEquals("u.login","u.senha");
		return findByParams(where, usuario.getLogin(), usuario.getSenha());
	}

}
