package com.ipartek.model;

import java.util.ArrayList;
import java.util.List;

import com.ipartek.modelo.pojos.Perro;

public class ArrayPerroDAO implements IDAO<Perro>{
	
	private static ArrayPerroDAO INSTANCE = null;
	private ArrayList<Perro> registros;
	private static int indice = 1;
	
	// Capar para que no se pueda hacer new de esta Clase
	private ArrayPerroDAO() {
		super();
		registros = new ArrayList<Perro>();
	}
	
	public synchronized static ArrayPerroDAO getInstance() {
		if (INSTANCE == null) {
			INSTANCE = new ArrayPerroDAO();
		}
		return INSTANCE;
	}

	@Override
	public List<Perro> getAll() {
		return registros;
	}

	@Override
	public Perro getById(int id) {
		Perro resul = null;
		for (Perro perro : registros) {
			if (id == perro.getId()) {
				resul = perro;
				break;
			}
		}
		return resul;
	}

	@Override
	public Perro delete(int id) throws Exception {
		Perro resul = null;
		for (Perro perro : registros) {
			if (id == perro.getId()) {
				resul = perro;
				registros.remove(resul);
				break;
			}
		}
		if (resul == null) {
			throw new Exception("Perro no encontrado por su ID " + id);
		}
		return resul;
	}

	@Override
	public Perro update(int id, Perro pojo) throws Exception {
		Perro resul = null;
		for (int i = 0; i < registros.size(); i++) {
			if (id == registros.get(i).getId()) {
				registros.remove(i);
				registros.add(pojo);
				resul = pojo;
				break;
			}
		}
		if (resul == null) {
			throw new Exception("Perro no encontrado por su ID " + id);
		}
		return resul;
	}

	@Override
	public Perro create(Perro pojo) throws Exception {
		Perro resul = pojo;
		
		//TODO comprobar campos del pojo
		
		if (pojo != null) {
			pojo.setId(++indice);
			registros.add(pojo);
		} else {
			throw new Exception("Perro null sin datos");
		}
	
		return resul;
	}

}
