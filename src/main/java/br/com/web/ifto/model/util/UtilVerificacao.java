package br.com.web.ifto.model.util;

import java.lang.reflect.Field;

public class UtilVerificacao {
	/**
	 * Verifica se algum dos parametros é nulo
	 * 
	 * @param params
	 * @return False Se tiver algum parametro Null <br>
	 *         True Se não tiver nenhum parametro Null
	 */
	public static boolean isParams(Object... params) {
		for (Object parametro : params) {
			if (parametro == null) {
				return false;
			}
		}
		return true;
	}

	public static boolean isValuesFields(Object objeto) {
		int nullo = 0;
		Class<?> classe = objeto.getClass();
		Field[] fields = classe.getDeclaredFields();
		for (int i = 0; i < fields.length; i++) {
			try {
				if (i != 0) {
					fields[i].setAccessible(true);
					Object value = fields[i].get(objeto);
					if (value == null) {
						nullo++;
					}
				}
			} catch (IllegalArgumentException | IllegalAccessException e) {
				e.printStackTrace();
			}
		}
		return !(nullo == fields.length - 1);
	}
}
