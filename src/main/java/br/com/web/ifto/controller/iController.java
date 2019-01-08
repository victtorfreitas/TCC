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

	default void index() {
	}

	default void list() {
	}

	default void form() {
	}

	default iController onMsgRedirectTo(Validator validator) {
		return validator.onErrorRedirectTo(this);
	}

	default void redirectToForm(Result result) {
		result.redirectTo(this).form();
	}

	default void redirectToList(Result result) {
		result.redirectTo(this).list();
	}

	default void redirectToClassIndex(Class<?> classe, Result result) {
		((iController) result.redirectTo(classe)).index();
	}

	default void addMensagem(String nameMsg, String texto, Validator validator) {
		validator.add(new SimpleMessage(nameMsg, texto));

	}
}