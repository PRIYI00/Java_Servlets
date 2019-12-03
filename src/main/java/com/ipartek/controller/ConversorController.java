package com.ipartek.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConversorController
 */
@WebServlet("/convertir")
public class ConversorController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Siempre en formato String los parametros
		String metros = request.getParameter("metros");
		float metrosFloat = 0;
		
		// Logica Negocio
		if ("".equals(metros)) {
			request.setAttribute("mensaje", "Por favor introduce los metros");
		} else {
			
			try {
				metrosFloat = Float.parseFloat(metros);
			} catch (Exception e) {
				request.setAttribute("mensaje", "Por favor introduce un numero");
			}
			
			float pies = 3.28f;
			float resultado = metrosFloat * pies;
			
			// Enviar atributos a la JSP 
			request.setAttribute("metros", metros);
			request.setAttribute("resultado", resultado);
		}
		
		// Ir a la JSP o vista 
		request.getRequestDispatcher("conversor.jsp").forward(request, response);
	}

}
