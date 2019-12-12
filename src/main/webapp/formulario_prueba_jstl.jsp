<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<h1> Formulario JSTL </h1>

<c:if test="${not empty mensaje}">
	<p style="color: teal; font-size: 2em;"> ${mensaje} </p>
</c:if>

<ul>
		<li> ${nombre} </li>
		<li> ${email} </li>
		<li> ${selected} </li>
	<c:forEach items="${deportes}" var="deporte">
  		<li> ${deporte} </li>
  	</c:forEach>
</ul>