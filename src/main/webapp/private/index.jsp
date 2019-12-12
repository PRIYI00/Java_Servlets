<%
	String titulo = "HelloWeb | BackOffice";
%>
   		
<%@include file="../includes/cabecera.jsp"%>
<%@include file="../includes/navegacion.jsp"%>

<p> Estoy en el BackOffice </p>
<p style="color: red;"> Solo pueden acceder usuarios Logeados </p>
<p> Atributo desde Servlet => ${atributoDesdeServlet}</p>

<p>Usuarios Logeados <b>X</b> </p>
<p>Numero de Intentos de Acceso Indebidos <b>${numerodeUsuariosIndebidos}</b> </p>
<ol>
	<h3>IPs sin repetir de accesos indebidos</h3>
	<li>192.x.x.x</li>
	<li>192.x.x.x</li>
	<li>192.x.x.x</li>
</ol>

<%@include file="../includes/piepagina.jsp"%>