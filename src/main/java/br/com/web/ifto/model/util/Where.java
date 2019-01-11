package br.com.web.ifto.model.util;

/**
 * Responsavel por criação de Where
 * 
 * @author Victtor
 *
 */
public class Where {
	private String query = "where ";

	/**
	 * Cria um where JPQL que tem o objetivo de verificação
	 * 
	 * @param fieldName Nomes das colunas no banco <br>
	 *                  OBS: Deve conter o prefixo
	 * @return String JPQL where
	 */
	public String createEquals(String... fieldName) {
		int cont= 1;
		for (int i = 0; i < fieldName.length; i++) {
			if (fieldName[i] != null) {
				query += fieldName[i] + "=?" + (cont++);
				if (fieldName.length != (i + 1) && fieldName[i + 1] != null) {
					query += " and ";
				}
			}
		}
		return query;
	}

	@Override
	public String toString() {
		return this.query;
	}
}
