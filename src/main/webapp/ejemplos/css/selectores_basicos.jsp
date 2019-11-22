<%
	String titulo = "HelloWeb | Selectores Basicos";
%>
   		
<%@include file="../../includes/cabecera.jsp"%>
<%@include file="../../includes/navegacion.jsp"%>

    <style>
        /* Selector de tipo o etiqueta */
        h1 {
            color: red;
            font-family: Arial, Helvetica, sans-serif;
        }

        h2 {
            color: blue;
            font-family: Georgia, 'Times New Roman', Times, serif;
        }
        p {
            color: teal;
            font-family: Verdana, Tahoma, sans-serif;
        }
    </style>
    
<section>
    <h1> Selectores Basicos </h1>
    <h2> Esto es una Prueba de Selectores Basicos </h2>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe voluptatibus commodi fuga eum. Velit voluptatem quos excepturi laudantium illum maxime, officiis perferendis odio. Optio explicabo fugiat laudantium, facere voluptate harum!</p>
    <p style="color: purple;">Asperiores iusto numquam deleniti praesentium modi optio hic rerum, eaque voluptatem quod temporibus sapiente doloribus dolorem unde architecto officiis blanditiis non. Quas officia quisquam eos, fugiat dignissimos minima est culpa?</p>
</section>

<%@include file="../../includes/piepagina.jsp"%>