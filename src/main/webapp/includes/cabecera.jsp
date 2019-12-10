<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html> <!-- Esto quiere decir que es HTML5 -->
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title> <%=titulo%> </title>
        
        <base href="/helloweb/">
        
        <!-- Responsive -->
        <meta name ="viewport" content="width=device-width , initial-scale=1.0"/>

        <!-- Se meten los Estilos -->
        
        <!-- Estilos de FontAwesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
        	<!-- Para el Navegador -->
        	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <!-- Mis Estilos -->
        <link rel="stylesheet" href="css/styles.css?time=<%=System.currentTimeMillis()%>">

    </head>

    <body>
    
    <section id="usuario">
    	<%
    		String usuario = (String)session.getAttribute("usuarioLogeado");
    		if(usuario == null){
    			%> <a href="login.jsp"> Por favor Inicia Sesion </a> <% 
    		} else {
    	%>
		    	<p> Usuario: <%=usuario%> </p>
		    	<p> <a href="logout"> Cerrar Sesión </a></p>
		 <% } %>
		 
		<p> Usuarios Conectados ${applicationScope.numeroUsuariosConectados} </p>
    </section>

        