<%@page import="com.ipartek.modelo.pojos.Perro"%>
<%@page import="java.util.ArrayList"%>
<%
	String titulo = "HelloWeb | Perros";
%>
<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>

<h1>Perros</h1>


<%
	ArrayList<Perro> perros = (ArrayList<Perro>)request.getAttribute("perros");
%>

<h2> Listado </h2>

<ol>
	<% for ( Perro p :  perros ){ %>
		<li><%=p.getNombre()%> - <%=p.getId()%></li>
	<% } %>
</ol>

<hr>

<h2> Formulario </h2>

<form action="perros" method="post">
	<input name="nombre" placeholder="Nombre del Perro">
	<select name="doglist">
		<option value=""> </option>
  		<% for ( Perro p :  perros ){ %>
  		<option value="<%=p.getNombre()%>"> <%=p.getNombre()%> </option>
  		<% } %>
	</select>		
	<input type="submit" value="Enviar">
</form>

<%@include file="includes/piepagina.jsp"%>