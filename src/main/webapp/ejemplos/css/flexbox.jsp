<%
   	String titulo = "HelloWeb | Flexbox";
%>
   		
<%@include file="../../includes/cabecera.jsp"%>
<%@include file="../../includes/navegacion.jsp"%>

<h1> Flexbox </h1>

<section>
	<ul>
		<li> <a href="https://css-tricks.com/snippets/css/a-guide-to-flexbox/" target="_blank"> Guia de FlexBox </a> </li>
		<li> <a href="https://flexboxfroggy.com/#es" target="_blank"> Juego de FlexBox </a> </li>
		<li> <a href="http://www.falconmasters.com/web-design/sitio-web-layout-flexbox/" target="_blank"> Maquetar pagina Web con FlexBox </a> </li>
	</ul>
	<p> Flex es una nueva forma de <code> display </code> de CSS3 totalmente nueva, para que las cajas no sean inline o block. Se comportaran de una nueva forma mucho mas flexible. </p>
	<p> Sirve para distribuir los elementos contenidos (hijos) en una etiqueta (contenedor) con <code> display: flex; </code> </p>
</section>

<style>
/* Estilos para Practicar con Flex Box */
.container {
	border: 5px solid black;
	width: 80%;
	margin: auto;
	
	/* FlexBox */
	display: flex;
	flex-direction: row; /* Por Defecto */
	flex-wrap: nowrap; /* Por Defecto */
	justify-content: center; /* Se puede justificar si quitamos el width del hijo */
}

.container div {
	border: 5px solid teal;
	background-color: aqua;
	box-sizing: border-box;
	width: 40%;
	margin: 3px;
	text-align: center;
	min-height: 50px;
	
	/* FlexBox */	
	/* order: <integer>;  Por Defecto es 0 */
	/* flex-grow: <number>;  Por Defecto es 0 */
	/* flex-shrink: <number>;  Por Defecto es 1 */
	/* flex-basis: <length> | auto; Por Defecto es auto */
	/* flex: none | [ <'flex-grow'> <'flex-shrink'>? || <'flex-basis'> ] */
	/* align-self: auto | flex-start | flex-end | center | baseline | stretch; */
}
</style>

<section class="container">
	<div> Hijo 1 </div>
	<div> Hijo 2 </div>
	<div> Hijo 3 </div>
	<div> Hijo 4 </div>
	<div> Hijo 5 </div>
	<div> Hijo 6 </div>
</section>

<%@include file="../../includes/piepagina.jsp"%>