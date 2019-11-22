<%
	String titulo = "HelloWeb | Introducción CSS";
%>
   		
<%@include file="../../includes/cabecera.jsp"%>
<%@include file="../../includes/navegacion.jsp"%>
   		
    	<style>
            /* Tambien podemos usar CSS dentro del html*/
            p {
                color: teal;
            }
            .texto-verde {
                color: green;
            }
            .super-importante {
                color: lightblue !important;
            }
            .container p {
                color: orange;
            }
            .container p span {
                background-color: black;
            }
            /* Seleciona solo los parrafos con la clase Especial no es descendente*/
            p.especial{
                color: purple;
                background-color: white;
            }
            p .especial{
                font-size: 2em;
                font-weight: 600; /* bold (negrita) */
            }
        </style>
    
        <h1> CSS Basico </h1>
        
	<section>
        <h2> Ejemplo de especificación de los CSS </h2>
        <p> Inspeccionar con las herramientas de desarrollador </p>

        <p style="color: red;"> Mira este parrafo para hacer un estilo en linea </p>

        <p class="texto-verde">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos, soluta itaque ex temporibus saepe labore eum placeat optio quidem incidunt, nesciunt distinctio fugiat ducimus quos neque eveniet deleniti corporis provident?</p>
        <p>Alias excepturi, voluptas enim placeat consectetur cumque. Voluptate voluptatum eum sed reprehenderit officiis adipisci illo, deleniti cumque veniam, nam labore quisquam! Non fuga ad earum odit tenetur eveniet magni enim.</p>
        <p>Ut, adipisci dolorum, eius fugit fugiat explicabo maiores nulla obcaecati ratione sit rem nam praesentium incidunt culpa aut harum ab corrupti tempore ex ipsam magni veritatis velit quos dolores! Assumenda.</p>
        <p>Ea aperiam cumque dignissimos doloribus enim? Consectetur quia ipsam nobis suscipit earum numquam commodi consequatur corporis molestiae ea repudiandae, possimus deserunt voluptates fugit repellat sapiente, illum laborum cum ducimus pariatur?</p>
        <p>Possimus, voluptates voluptas repellat quasi similique repellendus necessitatibus officiis accusantium hic praesentium vitae dicta nam eum corporis fuga molestias asperiores adipisci quas at tenetur odio assumenda. Rem corrupti repellendus iure.</p>
	</section>
	
	<section>
        <h2> Tipos de Selectores </h2>
        <p> En este vídeo puedes ver los tipos de selectores, identificadores, clases y pseudoclases: </p>
        <iframe width="560" height="315" 
                src="https://www.youtube.com/embed/ARaU6uGOa_k" frameborder="0" 
                allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                allowfullscreen>
        </iframe>
	</section>
	
	<section>
        <h2> Selector Descendente </h2>
        <div class="container">
            <p> Vamos a dar un estilo solo para estos parrafos que estan dentro de este <code> div.container </code> </p>
            <p>Lorem <span> ipsum dolor sit amet consectetur adipisicing elit. </span> Quae dolor cupiditate laudantium aliquam sequi nihil, ipsa quidem. Eveniet nisi voluptatem illum, quisquam ratione omnis saepe atque doloribus deleniti pariatur odio!</p>
            <p class="especial">Consectetur temporibus quas possimus nemo laboriosam ipsa molestiae blanditiis explicabo, eveniet architecto sunt doloribus saepe? <span class="especial"> Perferendis soluta, deleniti iste reprehenderit aperiam  </span> assumenda velit optio recusandae placeat ipsum nemo nihil libero.</p>
        </div>
	</section>
	 
<%@include file="../../includes/piepagina.jsp"%>