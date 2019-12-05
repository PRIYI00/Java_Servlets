package com.ipartek.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.modelo.pojos.Perro;

/**
 * Servlet implementation class PerrosController
 */
@WebServlet("/perros")
public class PerrosController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ArrayList<Perro> perros = new ArrayList<Perro>();
    
    public PerrosController() {
		perros.add(new Perro("bubba"));
		perros.add(new Perro("rataplan"));
		perros.add(new Perro("mosca"));
		perros.add(new Perro("txakur"));
		perros.add(new Perro("lagun"));
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Listar Perros
		request.setAttribute("perros", perros);
		request.getRequestDispatcher("perros.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Recibir datos del Formulario
		String nombre = request.getParameter("nombre");
		String nombreEliminar = request.getParameter("doglist");
		
		if (nombre != "") {
			// Crear Perro
			Perro p = new Perro();
			p.setNombre(nombre);
								
			// Guardar en Lista
			perros.add(p);
		} 
		
		if (nombreEliminar != "") {
			for ( Perro p :  perros ){
				if (p.getNombre() == nombreEliminar) {
						perros.remove(p);
				}
			}
		}
		
					
		// Listar Perros
		request.setAttribute("perros", perros);
		request.getRequestDispatcher("perros.jsp").forward(request, response);
	}

}
