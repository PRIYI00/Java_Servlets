		<%
   			String titulo = "HelloWeb | Etiquetas Basicas";
   		%>
   		
   		<%@include file="../../includes/cabecera.jsp"%>
   		<%@include file="../../includes/navegacion.jsp"%>
   		
    <h1 id="top"> Ejemplos de Etiquetas </h1>
	<section>
        <!-- Ejemplos de Enlaces -->
        
        <!-- Enlace a otra pagina en otra Pestaña -->
        <a target="_blank" href="https://www.google.es/"> Google </a> <br>
        
        <!-- Enlace a otra pagina dentro del Proyecto -->
        <a href="index.jsp"> Volver al Index </a> <br>
        <a href="ejemplos/css/animaciones.jsp"> Ir a Animaciones </a> <br>

        <!-- Enlace de Ejemplos de telefono y email -->
        <a href="mailto:info@telepizza.com"> info@telepizza.com </a> <br>
        <a href="tel:944500577"> 944 50 05 77 </a> <br> <br>
	</section>
	
	<section>
        <!-- Ejemplo de caption en una tabla -->
        <div>
            <table>
                <caption> Tabla de los Alumnos </caption>
                <tr>
                    <td> Aitor </td>
                    <td>  </td>
                </tr>
                <tr>
                    <td> Endika </td>
                    <td> Iker </td>
                </tr>
                <tr>
                    <td> Iñigo </td>
                    <td> Kiryl </td>
                </tr>
                <tr>
                    <td> Juan Carlos </td>
                    <td> Maria </td>
                </tr>
                <tr>
                    <td> Alejando </td>
                    <td> Ana </td>
                </tr>
                <tr>
                    <td> Cristian </td>
                    <td> Erlantz </td>
                </tr>
                <tr>
                    <td> Raul </td>
                    <td> X </td>
                </tr>
                <tr>
                    <td> Joseba </td>
                    <td> Mikel </td>
                </tr>
                <tr>
                    <td colspan="2"> Ander </td>
                </tr>
            </table>
        </div>
	</section>
        <br> <br>

	<section>
        <!-- Ejemplo de Parrafos -->

        <p> 
            Lorem ipsum dolor sit amet consectetur adipisicing elit. 
            Quas inventore repudiandae atque adipisci tenetur accusamus laborum, non asperiores. 
            Voluptas assumenda quis exercitationem, molestiae aut neque cumque explicabo 
            consectetur adipisci natus!
        </p>

        <p> 
            Lorem ipsum dolor sit amet consectetur adipisicing elit. 
            Quas inventore repudiandae atque adipisci tenetur accusamus laborum, non asperiores. 
            Voluptas assumenda quis exercitationem, molestiae aut neque cumque explicabo 
            consectetur adipisci natus!
        </p>

        <p> 
            Lorem ipsum dolor sit amet consectetur adipisicing elit. 
            Quas inventore repudiandae atque adipisci tenetur accusamus laborum, non asperiores. 
            Voluptas assumenda quis exercitationem, molestiae aut neque cumque explicabo 
            onsectetur adipisci natus!
        </p>
	</section>
        <br> <br>

	<section>
        <!-- Ejemplo de Listas -->
        
		<div>
        <!-- Ejemplo de lista ordenada -->
        <ol>
            <li> Punto Uno </li>
            <li> Punto Dos </li>
            <li> Punto Tres </li>
        </ol>
		</div>
		
		<div>
        <!-- Ejemplo de lista desordenada -->
        <ul>
            <li> Punto Uno </li>
            <li> Punto Dos </li>
            <li> Punto Tres </li>
        </ul>
		</div>
		
		<div>
        <!-- Ejemplo de dl -->
        <dl>
            <dt>Beast of Bodmin</dt>
            <dd>A large feline inhabiting Bodmin Moor.</dd>
            
            <dt>Morgawr</dt>
            <dd>A sea serpent.</dd>
            
            <dt>Owlman</dt>
            <dd>A giant owl-like creature.</dd>
        </dl>
        </div>
	</section>
        <br> <br>
	
	<section>
        <!-- Ejemplo de una Imagen -->
        <div>
            <img src="images/html5-cheat-sheet.png" alt="Etiquetas HTML5">
        </div>
	</section>
        <br> <br>

	<section>
        <!-- Ejemplo DataList con Formulario -->
        <form action="#" method="get">
            <input list="browsers" name="browser">
            <datalist id="browsers">
              <option value="Internet Explorer">
              <option value="Firefox">
              <option value="Chrome">
              <option value="Opera">
              <option value="Safari">
            </datalist>
            <input type="submit">
        </form>
	</section>
        <br> <br>

	<section>
        <!-- Ejemplo de iframe con Google Maps -->
        <div class="mapouter">
            <div class="gmap_canvas">
                <iframe width="600" height="500" id="gmap_canvas" 
                    src="https://maps.google.com/maps?q=ipartek&t=&z=13&ie=UTF8&iwloc=&output=embed" 
                    frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
                </iframe>
                <a href="https://www.embedgooglemap.net/blog/nordvpn-coupon-code/">embedgooglemap.net</a>
            </div>
            <style>
                .mapouter{position:relative;text-align:right;height:500px;width:600px;}
                .gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}
            </style>
        </div>
	</section>
        <br> <br>

	<section>
        <!-- Enlace a una parte del propio html -->
        <a href="ejemplos/html/etiquetas_basicas.jsp#top"> Vete Arriba </a> <br>
	</section>

<%@include file="../../includes/piepagina.jsp"%>