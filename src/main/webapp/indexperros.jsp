<%
	String titulo = "HelloWeb | Perros";
%>
<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>

<%
	out.print("<h1>Soy index.jsp</h1>");
%>

<a href="perros"> CRUD Perros </a>
<a href="perros02"> CRUD Perros con JSTL </a>

<%@include file="includes/piepagina.jsp"%>