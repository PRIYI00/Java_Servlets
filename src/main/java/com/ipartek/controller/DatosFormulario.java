package com.ipartek.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		String vista = "";
		
		// Recibir el Nombre y la Contraseña del Formulario
		String nombre = request.getParameter("nombre");
		String pass = request.getParameter("contrasena");
		String recu = request.getParameter("recuerdame");
		String idioma = request.getParameter("idioma");
		
		if ("admin".equals(nombre) && "admin".equals(pass)) {
			
			// Recuperar Sesion del Usuario
			HttpSession session = request.getSession();
			session.setAttribute("usuarioLogeado", "Administrador");
			session.setAttribute("idioma", idioma);
			session.setMaxInactiveInterval(-1);
			
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
			
			//vista = "private/home";
			//request.getRequestDispatcher(vista).forward(request, response);
			
			String base = request.getContextPath();
			response.sendRedirect(base + "/private/home");
			
			// Esto es sin el BackOfficeController
			// request.getRequestDispatcher("usupass.jsp").forward(request, response);
		} else {
			request.setAttribute("mensaje", "No te has logueado Correctamente");
			vista = "login.jsp";
			request.getRequestDispatcher(vista).forward(request, response);
		}
		
	}

}
