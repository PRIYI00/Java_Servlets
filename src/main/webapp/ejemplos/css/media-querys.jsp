<%
	String titulo = "HelloWeb | Media-Querys";
%>
   		
<%@include file="../../includes/cabecera.jsp"%>
<%@include file="../../includes/navegacion.jsp"%>

<style>
	/* Laptop */
	@media screen and (max-width: 1024px) and (min-width: 769px) {
		h1 {
			color: black;
		}
		section {
			background-color: white;
		}
	}

	/* Tablet */
	@media screen and (max-width: 768px) and (min-width: 426px) {
		h1 {
			color: purple;
		}
		section {
			background-color: purple;
		}
	}

	/* Movil */
	@media screen and (max-width: 425px) {
		h1 {
			color: pink;
		}
		section {
			background-color: pink;
		}
	}
</style>

<h1> CSS Media Querys </h1>
<section>
	<a href="https://devcode.la/tutoriales/unidades-vh-vw-css/" target="_blank"> Tutorial vh-vw </a>
	<p> Una media query consiste en un tipo de medio y al menos una consulta que limita las hojas de estilo 
		utilizando caracter�sticas del medio como ancho, alto y color. Se entiende como un m�dulo CSS3 que 
		permite adaptar la representaci�n del contenido a caracter�sticas del dispositivo. A�adido en CSS3, 
		las media queries dejan que la presentaci�n del contenido se adapte a un rango espec�fico de dispositivos 
		de salida sin tener que cambiar el contenido en s�.
	</p>
</section>

<%@include file="../../includes/piepagina.jsp"%>