package br.com.web.ifto.controller;

import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;

/**
 * Interface para possibilitar a troca de páginas
 * Caso não tenha algum dessas páginas utilizar o @Deprecated
 * @author Victtor
 *
 */
public interface iController {
	
	public void find();

	public void index();

	public void list();
	
	public void remove();

	public void form();

	default iController onMsgRedirectTo(Validator validator) {
		return validator.onErrorRedirectTo(this);
	}

	default iController redirectTo(Result result) {
		return result.redirectTo(this);
	}

	default void redirectToClassIndex(Class<?> classe, Result result) {
		((iController) result.redirectTo(classe)).index();
	}

	default void addMensagem(String nameMsg, String texto, Validator validator) {
		validator.add(new SimpleMessage(nameMsg, texto));

	}
}