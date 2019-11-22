<%
	String titulo = "HelloWeb | Arkanoid";
%>
   		
<%@include file="../../includes/cabecera.jsp"%>

<link rel="stylesheet" href="css/game.css?time=<%=System.currentTimeMillis()%>">

<%@include file="../../includes/navegacion.jsp"%> 

    <h1> Arkanoid </h1>
    <section>
    	<a href="https://developer.mozilla.org/es/docs/Games/Workflows/Famoso_juego_2D_usando_JavaScript_puro"> Tutorial Arkanoid Canvas </a> <br>
    	<canvas id="myCanvas" width="480" height="320"> </canvas>
    </section>

<%@include file="../../includes/piepagina.jsp"%>
