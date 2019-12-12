<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html> <!-- Esto quiere decir que es HTML5 -->
<html lang="es">
	<head>
    	<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title> Formulario | Prueba </title>
        
        <base href="/helloweb/">
        
        <!-- Responsive -->
        <meta name ="viewport" content="width=device-width , initial-scale=1.0"/>
	</head>
	<body>
		<c:if test="${not empty mensaje}">
			<h2 style="color: red;"> ${mensaje} </h2>
		</c:if>
		
		<h1> Formulario </h1>
		<form action="formularioPrueba" method="post">
			<label for="nombre_formulario"> Nombre: </label> 
			<input type="text" name="nombre_formulario" value="${nombre}" placeholder="Dime tu Nombre"> <br>
			<label for="email_formulario"> Email: 
			</label> <input type="email" name="email_formulario" value="${email}"> <br>
			<label for="deportes_formulario"> Aficiones Deportivas: </label> <br>
			<input type="checkbox" name="deportes_formulario" value="Baloncesto"> Baloncesto <br>
			<input type="checkbox" name="deportes_formulario" value="Futbol"> Futbol <br>
			<input type="checkbox" name="deportes_formulario" value="Beisbol"> Beisbol <br>
			<input type="checkbox" name="deportes_formulario" value="NFL"> NFL <br>
			<input type="checkbox" name="deportes_formulario" value="Tenis"> Tenis <br>
			<input type="checkbox" name="deportes_formulario" value="Balonmano"> Balonmano <br>
			<input type="checkbox" name="deportes_formulario" value="Natacion"> Natacion <br>
			<input type="submit" value="Enviar">
		</form>
	</body>
</html>