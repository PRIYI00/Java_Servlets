<h1> Logeado Correctamente </h1>

<%
	String mensaje = (String)request.getAttribute("mensaje");
	String recuerdame = (String)request.getAttribute("recuerdame");
%>

<h2><%=mensaje%></h2> 

<h2><%=recuerdame%></h2>

<a href="index.jsp"> Volver a meter Usuario y Contraseña </a>
