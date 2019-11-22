<%
	String titulo = "HelloWeb | Resultado";
%>
   		
<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>


<h1>Resultado</h1>
<section>
<%
	//recibir atributos del controlador
	String mensaje = (String)request.getAttribute("mensaje");	
	String op1 = (String)request.getAttribute("op1");
	String op2 = (String)request.getAttribute("op2");
	String simbolo = (String)request.getAttribute("simbolo");
	float resultado = (float)request.getAttribute("resultado");
	
	
	if (mensaje != null) {
%>

	<p style="color:red;"> <%=mensaje%> </p>

<% }else { %>

	<p> El resultado es <%=op1%> <%=simbolo %> <%=op2%> es igual a <%=resultado%> </p>

<% } // final del if %>	

<a href="indexCalculadora.jsp"> Volver a Calcular </a>
</section>

<%@include file="includes/piepagina.jsp"%>