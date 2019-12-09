<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<h1> Perros JSTL </h1>
<p> Mismo ejemplo para hacer un CRUD pero usando taglib </p>

<c:if test="${not empty mensaje}">
	<p style="color: teal; font-size: 2em;"> ${mensaje} </p>
</c:if>

<c:if test="${empty mensaje}">
	<p> No ahi ningun Mensaje, vamos a inicializarlo. </p>
</c:if>

<h2> Tenemos ${fn:length(perros)} perros en Adopción </h2>

<ul>
	<c:forEach items="${perros}" var="p">
  		<li> ${p.id} 
  			${p.nombre} 
  			<img src="${p.foto} " style="width: 100px; height: 100px;" alt="Imagen Perro">
  			<a href="perros02?id=${p.id}&adoptar=s"> Adoptar </a>
			<a href="perros02?id=${p.id}&editar=s"> Modificar </a>
  		</li>
  	</c:forEach>
</ul>

