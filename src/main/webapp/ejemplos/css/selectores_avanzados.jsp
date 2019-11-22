<%
	String titulo = "HelloWeb | Selectores Avanzados";
%>
   		
<%@include file="../../includes/cabecera.jsp"%>
<%@include file="../../includes/navegacion.jsp"%>

    <style>
        p {
            color: teal;
        }
        span {
            color: lightgreen;
        }
        p > span {
            color: red;
        }
        section {
            border: 1px solid rgb(206, 205, 205);
            background-color: rgb(245, 245, 245);
            padding: 10px;
            margin-bottom: 5px;

            -webkit-box-shadow: 20px 20px 10px 0px rgba(0,0,0,0.34);
            -moz-box-shadow: 20px 20px 10px 0px rgba(0,0,0,0.34);
            box-shadow: 20px 20px 10px 0px rgba(0,0,0,0.34);
        }
        h2 + p {
            color: seagreen;
        }
        /* Se muestran de color azul todos los enlaces que tengan 
        un atributo "class", independientemente de su valor */
        .selectorAtributos a[class] { 
            color: blue; 
        }
        /* Se muestran de color azul todos los enlaces que tengan 
        un atributo "class" con el valor "externo" */
        a[class="externo"] { 
            color: red; 
        }
        /* Se muestran de color azul todos los enlaces que apunten 
        al sitio "http://www.ejemplo.com" */
        .selectorAtributos a[href="https://www.youtube.com/"] { 
            color: green; 
        }
        /* Se muestran de color azul todos los enlaces que tengan 
        un atributo "class" en el que al menos uno de sus valores
        sea "externo" */
        .selectorAtributos a[class~="externo"] { 
            color: blue; 
        }
    </style>

    <h1> Selectores Avanzados </h1>

    <section> 
        <h2> Selector de Hijos </h2>
        <div> Deberia de poner algo antes de span para que se vea diferencia. 
            <span> Prueba de la Etiqueta Span sin estar dentro de un parrafo. </span> 
            Y despues. 
        </div>
        <p> Lorem ipsum dolor sit amet, <span> Muestra de un span hijo de un parrafo </span> consectetur adipisicing elit. Rem, et modi! Nam voluptates nulla quod ea exercitationem expedita voluptatum. Doloribus quis reprehenderit culpa ducimus praesentium autem. Quae perspiciatis molestias nam.</p>
    </section>

    <section>
        <h2> Selector Adyacente </h2>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. A corporis sint eaque nemo est, reiciendis perferendis libero necessitatibus assumenda rem odit molestias repellat optio rerum adipisci, consequatur voluptatibus cumque laboriosam.</p>
    </section>

    <section class="selectorAtributos">
        <h2> Selector de Atributos </h2>
        <a class="prueba01" href="https://flukeout.github.io/"> El juego de la Cena </a> <br>
        <a class="externo" href="https://gist.github.com/chrisman/fcb0a88459cd98239dbe6d2d200b02d1"> Solución del juego de la Cena </a> <br>
        <a href="https://www.youtube.com/"> Youtube </a> <br>
        <a href="https://www.google.es/"> Google </a> <br> 
    </section>
    
<%@include file="../../includes/piepagina.jsp"%>