package com.ipartek.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloController02
 */
@WebServlet("/ejemplo02")
public class HelloController02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String TETERA = "tetera";
	private static final String USUARIO = "pepe";
	private static final String PASSWORD = "123456";
	private static final String VISTA_RESUMEN = "resumen.jsp";
	private static final String VISTA_NO_PERMISO = "nopermiso.jsp";
	private static final String VISTA_TETERA = "tetera.jsp";

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//recibir parametos

		//peticion del cliente
		String userAgent = request.getHeader("User-Agent");		
		String http = request.getProtocol();
				
		//parametros		
		String nombre = request.getParameter("nombre");      
		String password = request.getParameter("password");  
				
		boolean isMovil = false; 
		
		if ( userAgent.toLowerCase().contains("mobile") ) {
			isMovil = true;
		}
				
		//logica de negocio
		
		if ( USUARIO.equals(nombre) && PASSWORD.equals(password)) {
			//por defecto response code 200
			response.setStatus(200);
				
		//enviar atributos
		request.setAttribute("useragent", userAgent);
		request.setAttribute("http", http);
		request.setAttribute("nombre", nombre);
		request.setAttribute("password", password);
		request.setAttribute("esmovil", isMovil);
				
		// request interna del servidor
		request.getRequestDispatcher(VISTA_RESUMEN).forward(request, response);
		
		} else {
			if (TETERA.equals(nombre)) {
				response.setStatus(418);
				request.getRequestDispatcher(VISTA_TETERA).forward(request, response);
			} else {
				response.setStatus(401);
				request.getRequestDispatcher(VISTA_NO_PERMISO).forward(request, response);
			}
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
