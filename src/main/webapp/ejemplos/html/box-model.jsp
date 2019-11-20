<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Box Model </title>

    <base href="/helloweb/">
    <style>
        body {
            padding: 20px;
        }
        p .prueba {
            color: teal;
            border: 5px solid green;
            margin: 10px;
            padding: 20px;
        }
        span {
            border: 3px dotted red;
            padding: 5px;
        }
        p {
            border: 1px solid black;
            padding: 5px;
        }
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
        .box-texto {
            display: inline-block;
            width: 100px;
            height: 100px;
            border: 2px solid teal;
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
    <h1> Visualización </h1>
    <section>
        <h2> Box Model </h2>
        <p class="prueba"> Toda Etiqueta de HTML tiene una estructura de Caja </p>
    </section>

    <section>
        <h2> Display </h2>
        <p> <code> display </code> es el atributo para gestionar si es linea o bloque ( existen muchos mas displays. ejem: flex )</p>
        <p> *trick: usar inspector para verlo </p>
        <dl>
            <dt> Block </dt>
            <dd> Elemento que ocupa todo el ancho del Elemento padre. </dd>
            <dt> Inline </dt>
            <dd> Elemento que ocupa lo que tenga su contenido. </dd>
            <dt> Inline-Block </dt>
            <dd> Los elementos inline-block fluyen con el texto y demás elementos como si fueran elementos en-línea y además respetan el ancho, el alto y los márgenes verticales. </dd>
        </dl>

        <p> Lorem <span> ipsum, dolor sit amet consectetur adipisicing elit. </span> Ratione iusto dolores aperiam cum, at harum enim deleniti neque, consequuntur fugiat deserunt placeat, provident accusantium rerum vitae fugit totam odit nesciunt.</p>

        <div class="box"> 1 </div>
        <div class="box"> 2 </div>
    </section>

    <section>
        <h2> Visibility </h2>
        <p> Existen dos formas de ocultar elementos de HTML </p>
        
        <p> Usando <code> visibility </code> </p>
        <div class="box"> 1 </div>
        <div class="box" style="visibility: hidden;"> 2 </div>
        <div class="box"> 3 </div>
        
        <p> Usando <code> display: none; </code> </p>
        <div class="box"> 1 </div>
        <div class="box" style="display: none;"> 2 </div>
        <div class="box"> 3 </div>
    </section>

    <section>
        <h2> OverFlow </h2>
        <p> Como se muestra la información cuando no entra en el contenedor padre <code> | visible | hidden | scroll | auto </code> </p>
        <p> Tambien se puede usar <code> overflow-x | overflow-y </code> </p>
        <div class="box-texto" style="overflow: hidden;"> <p> Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cum aliquid laborum sunt soluta illum fugit modi vel sed obcaecati, assumenda omnis molestiae quibusdam veniam, porro voluptatem ipsam non! Recusandae, deserunt? </p> </div>
        <div class="box-texto" style="overflow: scroll;"> <p> Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cum aliquid laborum sunt soluta illum fugit modi vel sed obcaecati, assumenda omnis molestiae quibusdam veniam, porro voluptatem ipsam non! Recusandae, deserunt? </p> </div>
        <div class="box-texto" style="overflow: auto;"> <p> Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cum aliquid laborum sunt soluta illum fugit modi vel sed obcaecati, assumenda omnis molestiae quibusdam veniam, porro voluptatem ipsam non! Recusandae, deserunt? </p> </div>
        <div class="box-texto" style="overflow: visible;"> <p> Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cum aliquid laborum sunt soluta illum fugit modi vel sed obcaecati, assumenda omnis molestiae quibusdam veniam, porro voluptatem ipsam non! Recusandae, deserunt? </p> </div>
    </section>

    <section>
        <h2> Z-Index </h2>
        <p> Se encarga de la profundidad de los Elementos cuando se solapan </p>
        <div class="box">1</div>
        <div class="box" style="z-index: 0; position: relative; left: 50px; background-color: red;">2</div>
        <div class="box" style="z-index: 1; position: relative;">3</div>
    </section>
</body>
</html>