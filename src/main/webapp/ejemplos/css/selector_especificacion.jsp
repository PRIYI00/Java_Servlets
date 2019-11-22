<%
	String titulo = "HelloWeb | Selectores de Especificación";
%>
   		
<%@include file="../../includes/cabecera.jsp"%>
<%@include file="../../includes/navegacion.jsp"%>

    <style>
        /* Selector descendente, de clase y de id */
        p span {
            color: red;
            font-size: 20px;
        }
        h1 span {
            color: blue;
            font-size: 10px;
        }
        .container {
            color: teal;
            font-family: Georgia, 'Times New Roman', Times, serif;
            font-size: 20px;
        }
        #prueba {
            color: black;
            font-family: Georgia, 'Times New Roman', Times, serif;
            font-size: 20px;
        }
        /* Todos los elementos de tipo "p" con atributo class="container" */
        p.container { color: green; }

        /* Todos los elementos con atributo class="container" que estén dentro
        de cualquier elemento de tipo "p" */
        p .container { color: grey; }

        /* Todos los elementos "p" de la página y todos los elementos con
        atributo class="container" de la página */
        /*p, .container { background-color: lightgray; }*/
    </style>
    
	<section>
    	<h1> Esto es una prueba de Selectores <span> Descendentes </span> , de clase y <span> de id </span> </h1>
    	<p>Lorem ipsum, dolor sit amet <span> consectetur adipisicing elit. Neque nam ea molestiae omnis perspiciatis ex nemo sed nobis tempore quae? Nam voluptatum quisquam </span> aliquam, esse repellat explicabo soluta at voluptas.</p>
    	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit totam placeat eius mollitia neque odit culpa, id voluptatum a amet ipsum molestiae inventore ullam ipsam nostrum est repudiandae similique repellendus.</p>
    	<div class="container">
        	<p class="container">Totam magni alias nam et quae sunt debitis, aliquid pariatur sapiente, iste error, asperiores obcaecati. Necessitatibus sequi quia a sed rem vel. Iure eaque labore accusantium iusto nulla assumenda itaque.</p>
        	<p id="prueba">Quis accusamus sapiente dolorem. Earum nulla porro minima dignissimos optio error veniam praesentium maxime architecto ratione quasi voluptates eum quaerat asperiores itaque repellat sequi nostrum minus, aspernatur odio consequuntur! Excepturi.</p>
        	<p>Lorem ipsum dolor sit <span class="container"> consectetur adipisicing elit. Harum, aliquid! Debitis accusantium repellat sed consequuntur dolores dolor, rerum fugiat </span> delectus distinctio nobis veniam quos fugit adipisci ab harum expedita voluptates.</p>
        	<p>Molestiae tempore cum animi quisquam alias eos illo perferendis. Minima, accusantium nobis. Ipsum nobis adipisci deserunt odio. Quo esse cumque dicta fugit. Ipsum est fugiat maxime temporibus hic id sit!</p>
        	<p>Esse, doloremque dolor explicabo magni deserunt mollitia autem similique quaerat recusandae aut eveniet quis! Laboriosam ipsum, ut quae voluptates dignissimos pariatur facilis odio cupiditate accusantium fugiat in culpa. Veritatis, quidem?</p>
    	</div>
	</section>
	
<%@include file="../../includes/piepagina.jsp"%>