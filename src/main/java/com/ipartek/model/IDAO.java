package com.ipartek.model;

import java.util.List;

public interface IDAO<P> {
	
	/**
	 * Obtiene todos los Datos
	 * @return Lista de Pojos
	 */
	List<P> getAll();
	
	/**
	 * Recupera un pojo por su Identificador
	 * @param id identificador
	 * @return pojo si lo encuentra, sino null
	 */
	P getById(int id);
	
	/**
	 * Borra un pojo por su Identificador
	 * @param id Identificador
	 * @return Pojo Eliminado
	 * @throws Exception si no se puede eliminar o no encontrado
	 */
	P delete(int id) throws Exception;
	
	/**
	 * Para Modificar un Pojo pasandole la clase
	 * @param id Identificador
	 * @param pojo Clase que quieres Modificar
	 * @return Pojo Modificado
	 * @throws Exception si no puede modificar o no encontrado
	 */
	P update(int id, P pojo) throws Exception;
	
	/**
	 * Crea un nuevo pojo
	 * @param pojo a crear
	 * @return pojo creado con el id nuevo
	 * @throws Exception si no puede crear
	 */
	P create(P pojo) throws Exception;
	
}
