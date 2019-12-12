<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<base href="${pageContext.request.contextPath}/" />
</head>
<body>
	


	
	<p>* acordaros de poner en la BASE contextPath= <b>${pageContext.request.contextPath}</b></p>
	
	<hr>
	HEAD
	
	<c:if test="${not empty usuarioLogeado}" >
		<p>usuario logeado: <b>${usuarioLogeado}</b></p>
		<p><a href="logout">Cerrar Session</a></p>
	</c:if>
	
	
	<c:if test="${empty usuarioLogeado}" >
		<a href="login.jsp">Login</a>
	</c:if>

<meta http-equiv="refresh" content="5">

<p> Estoy en el BackOffice </p>
<p style="color: red;"> Solo pueden acceder usuarios Logeados </p>
<p> Atributo desde Servlet => ${atributoDesdeServlet}</p>

<p>Usuarios Logeados <b>${applicationScope.numeroUsuariosConectados}</b> </p>
<p>Numero de Intentos de Acceso Indebidos <b>${applicationScope.numerodeUsuariosIndebidos}</b> </p>

<ol>
	<h3>IPs sin repetir de accesos indebidos</h3>
	<c:forEach items="${applicationScope.ips}" var="ip">
		<li> ${ip} </li>
	</c:forEach>
</ol>

<hr>


</body>
</html>