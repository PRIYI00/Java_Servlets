<%
	String titulo = "HelloWeb | Login";
%>
   		
<%@include file="includes/cabecera.jsp"%>
<h1> Logeado Correctamente </h1>
<section>

<h2>${mensaje}</h2> 

<h2>${recuerdame}</h2>

<a href="login.jsp"> Volver a meter Usuario y Contraseña </a>
</section>

<%@include file="includes/piepagina.jsp"%>
