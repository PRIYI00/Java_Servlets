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

import com.ipartek.modelo.pojos.Perro;

/**
 * Servlet implementation class PerrosController
 */
@WebServlet("/perros02")
public class PerrosController02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static Logger LOG = Logger.getLogger(PerrosController02.class);
    private ArrayList<Perro> perros = new ArrayList<Perro>();
    private int indice = 0;
    private String mensaje = "";
    
    @Override
    public void init(ServletConfig config) throws ServletException {
    	LOG.trace("Se Ejecuta la Primera vez que se llama a este Servlet y Nunca mas.");
    	super.init(config);
    	perros.add(new Perro(1,"bubba"));
		perros.add(new Perro(2,"rataplan"));
		perros.add(new Perro(3,"mosca"));
		perros.add(new Perro(4,"txakur"));
		perros.add(new Perro(5,"lagun"));
		indice = 6;
    }
    
    @Override
    public void destroy() {
    	LOG.trace("Se Ejecuta solo una vez cuando se para el servidor de Aplicaciones.");
    	super.destroy();
    	perros = null;
    }
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	LOG.trace("Se Ejecuta antes del doGet y el doPost.");
    	mensaje = "";
    	super.service(request, response);
    	LOG.trace("Se Ejecuta despues del doGet y el doPost.");
    	
    	// Listar Perros
    	request.setAttribute("mensaje", mensaje);
    	request.setAttribute("perros", perros);
    	request.getRequestDispatcher("perros-jstl.jsp").forward(request, response);
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
			Perro perro = null;
			for (Perro p : perros) {
				if (p.getId() == id) {
					perro = p;
					break;
				}
			}
			
			if (adoptar) {
				perros.remove(perro);
				mensaje = "Ya has adoptado al perro, gracias";
				LOG.info("Ya has adoptado al perro, gracias");
			}
			
			if (editar) {
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
			Perro perro = null;
			for (Perro p : perros) {
				if (p.getId() == id) {
					perro = p;
					break;
				}
			}
			perro.setNombre(nombre);
			perro.setFoto(imagen);
			
			mensaje = "Perro Modificado con Exito";
		} else {
			LOG.trace("Crear Perro nuevo");
			
			// Crear Perro
			Perro p = new Perro();
			p.setId(indice);
			p.setNombre(nombre);
			p.setFoto(imagen);
			indice++;
			
			mensaje = "Gracias por dar de alta un nuevo perro";
								
			// Guardar en Lista
			perros.add(p);
		}
		
	}
}
