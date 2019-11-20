<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> HelloWeb | Posicionamiento </title>

    <base href="/helloweb/">

    <style>
        .box {
            display: inline-block;
            box-sizing: border-box;
            width: 100px;
            height: 100px;
            
            border: 2px solid teal;
            background-color: royalblue;
            border-radius: 10px;

            color: white;
            font-size: 5em;
            text-align: center;
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
    </style>
</head>
<body>
    <a href="index.jsp"> Volver </a>
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

</body>
</html>