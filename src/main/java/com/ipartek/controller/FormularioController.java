package com.ipartek.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

/**
 * Servlet implementation class FormularioController
 */
@WebServlet("/formularioPrueba")
public class FormularioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static Logger LOG = Logger.getLogger(FormularioController.class);

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Recibir el Nombre, Email y los Deportes
		String nombre = request.getParameter("nombre_formulario");
		String email = request.getParameter("email_formulario");
		String selected = request.getParameter("sexo");
		String[] deportes = request.getParameterValues("deportes_formulario");
		
		String mensaje = "";
		
		// Comprobar que ha seleccionado tres Deportes
		if (deportes != null && deportes.length >= 3) { // Comprobacion Correcta
			request.setAttribute("mensaje", "Has enviado estos Datos");
			request.setAttribute("nombre", nombre);
			request.setAttribute("email", email);
			request.setAttribute("selected", selected);
			request.setAttribute("deportes", deportes);
			
			request.getRequestDispatcher("formulario_prueba_jstl.jsp").forward(request, response);
			
		} else { // Ha seleccionado menos de tres deportes
			request.setAttribute("nombre", nombre);
			request.setAttribute("email", email);
			request.setAttribute("selected", selected);
			request.setAttribute("mensaje", "No has Seleccionado tres deportes");
			
			request.getRequestDispatcher("formulario_prueba.jsp").forward(request, response);
			
		}
		
		
	}

}
