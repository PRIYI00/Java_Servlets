<%
	String titulo = "HelloWeb | Conversor";
%>
   		
<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>

<section>
	<h1>Conversor de Metros a Pies</h1>
	<p style="color:red;"> ${mensaje} </p>
	<form action="convertir" method="post">
		<label for="metros"> Metros </label> <br> <br>
		<input type="text" name="metros" pattern="[0-9]{1,15}" placeholder="Introduce los metros" autofocus> <br>
		<br>
		<input type="submit" value="Calcular"> <br> <br>
	</form>
	
	Resultado:
	<%
		float resultado = 0;
		if (request.getAttribute("resultado") != null){
			resultado = (float)request.getAttribute("resultado");
		}
		// Pintar HTML
		out.print(resultado);
	%>
</section>

<%@include file="includes/piepagina.jsp"%>