<%@page import="com.ipartek.modelo.pojos.Perro"%>
<%@page import="java.util.ArrayList"%>
<%
	String titulo = "HelloWeb | Perros";
%>
<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>

<%
	String mensaje = (String)request.getAttribute("mensaje");
%>

<p style="color: teal; font-size: 2em;"> <%=mensaje%> </p>

<h1>Perros</h1>


<%
	ArrayList<Perro> perros = (ArrayList<Perro>)request.getAttribute("perros");
%>

<h2> Listado </h2>

<ul>
	<% for ( Perro p :  perros ){ %>
		<li> <%=p.getId()%> - <%=p.getNombre()%>
			<img src="<%=p.getFoto()%>" style="width: 100px; height: 100px;"> 
			<a href="perros?id=<%=p.getId()%>&adoptar=s"> Adoptar </a>
			<a href="perros?id=<%=p.getId()%>&editar=s"> Modificar </a>
		</li>
	<% } %>
</ul>

<hr>

<h2> Formulario </h2>

<%
	Perro perroEditar = (Perro)request.getAttribute("perroEditar");
	if(perroEditar == null){
		perroEditar = new Perro();
	}
%>

<form action="perros" method="post">
	<input type="text" name="id" placeholder="ID" value="<%=perroEditar.getId()%>" required readonly>
	<br>
	<input type="text" name="nombre" placeholder="Nombre del Perro" value="<%=perroEditar.getNombre()%>" required>
	<br>
	<input type="text" name="imagen" placeholder="Imagen del Perro" value="<%=perroEditar.getFoto()%>" required>
	<br>
	<input type="submit" value="Enviar">
</form>

<%@include file="includes/piepagina.jsp"%>