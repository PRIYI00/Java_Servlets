<%
	String titulo = "HelloWeb | Posicionamiento";
%>
   		
<%@include file="../../includes/cabecera.jsp"%>
<%@include file="../../includes/navegacion.jsp"%>

    <h1> Posicionamiento </h1>

    <!-- Se trata del posicionamiento que utilizan los navegadores si no se indica lo contrario. -->
    <section class="estatico">
        <h2> Estatico </h2>
        <p> El posicionamiento estatico es el que viene por defecto </p>
    </section>

    <!-- Variante del posicionamiento normal que consiste en posicionar una caja según el 
        posicionamiento normal y después desplazarla respecto de su posición original. -->
    <section>
        <h2> Relativo </h2>
        <p> El posicionamiento relativo esta hecho un ejemplo en el html box-model </p>
    </section>

    <!-- Variante del posicionamiento absoluto que convierte una caja en un elemento inamovible, de 
        forma que su posición en la pantalla siempre es la misma independientemente del resto de 
        elementos e independientemente de si el usuario sube o baja la página en la ventana del navegador. -->
    <section class="fijado">
        <h2> Fixed </h2>
        <p> El posicionamiento fijo esta hecho un ejemplo en el index con el footer </p>
    </section>

    <!-- Funciona de manera similar al posicionamiento relativo, en cuanto que no elimina ningún 
        elemento del flujo del documento. En otras palabras, un elemento "sticky" no afecta 
        a la posición de sus elementos adyacentes, y no hunde su elemento padre. -->
    <section class="sticky">
        <h2> Sticky - CSS3 </h2>
        <p> El posicionamiento sticky esta probado en el navegar del index </p>
    </section>

    <!-- la posición de una caja se establece de forma absoluta respecto de su elemento contenedor y 
        el resto de elementos de la página ignoran la nueva posición del elemento. -->
    <section>
        <h2> Absoluto </h2>
        <p> la posición de una caja se establece de forma absoluta respecto de su elemento contenedor y 
                el resto de elementos de la página ignoran la nueva posición del elemento. </p>

        <style>
            .contenedor {
                /* Acordaros siempre de que el contenedor sea Relativo */
                position: relative;
                width: 400px;
                height: 300px;
                margin: auto;
                overflow: hidden;
            }
            .contenedor:hover .texto {
                bottom: 0;
            }
            .absoluto {
                /* Posicionamos de forma absoluta sobre el contenedor*/
                position: absolute;
                top: 50px;
                left: 180px;

                background-color: red;
                border-radius: 50%;
                padding: 10px;
                color: white;

                display: inline-block;
                width: 25px;
                height: 25px;
                text-align: center;
                font-size: 20px;
            }
            .contenedor .texto {
                background-color: #00000070;
                position: absolute;
                bottom: -110px;
                color: white;
            }
            .contenedor .texto h3 {
                text-transform: uppercase;
            }
            .contenedor .texto p {
                padding: 2px;
                text-align: justify;
            }
        </style>

        <div class="contenedor"> 
            <span class="absoluto"> 1 </span>
            <img src="http://lorempixel.com/400/200/" alt="imagen-aleatoria"> 

            <div class="texto">
                <h3> Titulo </h3>
                <p> Lorem ipsum, dolor sit amet consectetur adipisicing elit. 
                    Amet, quas fuga possimus nostrum nihil veniam voluptate, 
                    at corporis commodi aperiam eveniet ipsa eius aut. Aut et 
                    voluptatum ipsa ex reiciendis?
                </p>
            </div>
        </div>
    </section>

<%@include file="../../includes/piepagina.jsp"%>