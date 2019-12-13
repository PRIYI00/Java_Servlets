package com.ipartek.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.ipartek.model.ArrayPerroDAO;
import com.ipartek.modelo.pojos.Perro;

/**
 * Servlet implementation class PerrosController
 */
@WebServlet("/perros")
public class PerrosController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static Logger LOG = Logger.getLogger(PerrosController.class);
	private static ArrayPerroDAO dao = ArrayPerroDAO.getInstance();
    private String mensaje = "";
    
    @Override
    public void init(ServletConfig config) throws ServletException {
    	LOG.trace("Se Ejecuta la Primera vez que se llama a este Servlet y Nunca mas.");
    	super.init(config);
    	try {
	    	dao.create(new Perro("bubba"));
	    	dao.create(new Perro("rataplan"));
	    	dao.create(new Perro("mosca"));
	    	dao.create(new Perro("txakur"));
	    	dao.create(new Perro("lagun"));
    	} catch (Exception e) {
			LOG.warn(e);
		}
    }
    
    @Override
    public void destroy() {
    	LOG.trace("Se Ejecuta solo una vez cuando se para el servidor de Aplicaciones.");
    	super.destroy();
    }
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	LOG.trace("Se Ejecuta antes del doGet y el doPost.");
    	mensaje = "";
    	super.service(request, response);
    	LOG.trace("Se Ejecuta despues del doGet y el doPost.");
    	
    	// Listar Perros
    	request.setAttribute("mensaje", mensaje);
    	request.setAttribute("perros", dao.getAll());
    	request.getRequestDispatcher("perros.jsp").forward(request, response);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LOG.trace("doGet");
		LOG.info("He tenido que ponerlo en una variable a parte el get parameter porque sino daba un error 500");
		
		String idString = request.getParameter("id");
		int id = (idString == null) ? 0 : Integer.parseInt(idString);
		boolean adoptar = (request.getParameter("adoptar") == null) ? false : true;
		boolean editar = (request.getParameter("editar") == null) ? false : true;
		
		LOG.debug("id = " + id + " adoptar = " + adoptar + " editar = " + editar);
		
		if (id > 0) {
			// Buscar Perro en el Array
			Perro perro = dao.getById(id);
			
			if (adoptar) {
				try {
					dao.delete(id);
					mensaje = "Ya has adoptado al perro, gracias";
				} catch (Exception e) {
					mensaje = "No se puede Eliminar el perro";
				}
			}
			
			if (editar) {
				try {
					dao.update(id, perro);
				} catch (Exception e) {
					mensaje = "No has podido modificar el perro";
				}
				request.setAttribute("perroEditar", perro);
			}
		} else {
			LOG.trace("Solo listar Perros");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LOG.trace("doPost");
		
		// Recibir datos del Formulario
		int id = Integer.parseInt(request.getParameter("id"));
		String nombre = request.getParameter("nombre");
		String imagen = request.getParameter("imagen");
		
		// TODO Validar Parametros
		if (id > 0) {
			LOG.trace("Modificar el Perro");
			Perro perro = new Perro();
			perro.setId(id);
			perro.setNombre(nombre);
			perro.setFoto(imagen);
			
			try {
				dao.update(id, perro);
				mensaje = "Perro Modificado con Exito";
			} catch (Exception e) {
				mensaje = "No se puede Modificar";
			}
	
		} else {
			LOG.trace("Crear Perro nuevo");
			
			// Crear Perro
			Perro p = new Perro();
			p.setNombre(nombre);
			p.setFoto(imagen);
			
			try {
				dao.create(p);
				mensaje = "Gracias por dar de alta un nuevo perro";
			} catch (Exception e) {
				mensaje = "No se puede Crear"; 
			}
		}
	}
}
