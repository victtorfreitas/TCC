package br.com.web.ifto.model.dao;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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
		String where = new Where().createEquals("u.login", "u.senha");
		return findByParams(where, usuario.getLogin(), usuario.getSenha());
	}

	public List<Usuario> findByFields(Usuario usuario) {

		Class<?> classe = usuario.getClass();

		Field[] fields = classe.getDeclaredFields();
		String[] nameFields = new String[fields.length -1];
		Object[] valoresFields = new Object[fields.length -1];
		for (int i = 0; i < fields.length; i++) {
			try {
				if (i != 0) {
					fields[i].setAccessible(true);
					Object valor = fields[i].get(usuario);
					if (valor != null) {
						nameFields[i-1] = "u." + fields[i].getName();
						valoresFields[i-1] = valor;
					}
				}
			} catch (IllegalArgumentException | IllegalAccessException e) {
				e.printStackTrace();
			}
		
		}
		List<Object> listaAux = new ArrayList<Object>();
		
		for (Object fieldValue : valoresFields) {
			if(fieldValue!=null) {
				listaAux.add(fieldValue);
			}
		}
		String where = new Where().createEquals(nameFields);
		List<Usuario> usuarioReturn = findByParamsList(where, listaAux.toArray());
		
		return usuarioReturn;
	}

}
