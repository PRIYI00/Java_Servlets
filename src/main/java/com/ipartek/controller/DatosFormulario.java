package com.ipartek.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DatosFormulario
 */
@WebServlet("/datosFormulario")
public class DatosFormulario extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		
		// Recibir el Nombre y la Contraseña del Formulario
		String nombre = request.getParameter("nombre");
		String pass = request.getParameter("contrasena");
		String recu = request.getParameter("recuerdame");
		String idioma = request.getParameter("idioma");
		
		if ("admin".equals(nombre) && "admin".equals(pass)) {
			
			switch (idioma) {
			case "castellano":
				request.setAttribute("mensaje", "Bienvenido a tu pagina");
				break;
			case "euskera":
				request.setAttribute("mensaje", "Ongi Etorri");
				break;
			case "ingles":
				request.setAttribute("mensaje", "Welcome");
				break;
			default:
				break;
			}
			
			if ("1".equals(recu)) {
				request.setAttribute("recuerdame", "Has Sido Recordado");
			} else {
				request.setAttribute("recuerdame", "NO Has Sido Recordado");
			}
			
			request.getRequestDispatcher("usupass.jsp").forward(request, response);
		} else {
			request.setAttribute("mensaje", "No te has logueado Correctamente");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
	}

}
