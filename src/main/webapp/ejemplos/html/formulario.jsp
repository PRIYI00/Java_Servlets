		<%
   			String titulo = "HelloWeb | Prueba Formulario";
   		%>
   		
   		<%@include file="../../includes/cabecera.jsp"%>

	<style>
        body {
            max-width: 1024px;
            
        }
        form {
            border: 1px solid black;
            padding: 20px;
        }
    </style>
    
    <h1> Formulario </h1>
    <p> Usar siempre la etiqueta <code> form </code> junto con boton submit </p>
    <p> Atributo <code> action </code> sirve para indicar el nombre del controlador en el servidor </p>
    <p> El atributo <code> name </code> de un <code> input </code> sirve para especificar 
        el nombre del parametro a enviar al servidor 
    </p>
    <p> <code> placeholder </code> se utiliza para poner un texto semi visible dentro 
        del <code> input type="text" </code> 
    </p>
    
    <a href="index.jsp"> Volver </a> <br>

    <form>
        <fieldset>
            <legend> Datos Personales </legend>
            <!-- Nombre con type text -->
            <label for="nombre"> Nombre: </label>
            <input type="text" 
                    name="cajaTexto" 
                    id="nombre" 
                    placeholder="Minimo 3 letras Maximo 10"
                    pattern=".{3,10}"
                    required
                    autofocus> <br> 
            
            <!-- Contraseña con type password -->
            <label for="password"> Contraseña: </label>
            <input type="password" 
                    name="cajaTexto" 
                    id="password" 
                    placeholder="Minimo 3 letras Maximo 10"
                    pattern=".{3,10}"
                    required
                    autofocus> 
            <button onclick="verTexto(event)"> Ver </button>
            <br> 

            <!-- Metodo JavaScript para ver y ocultar el texto de la Contraseña -->
            <script>
                function verTexto(event){
                    console.trace('Click Boton Ver');
                    let iContrasena = document.getElementById('password');
                    if (iContrasena.type == "text") {
                        iContrasena.type = "password";
                        event.target.innerHTML = 'Ver';
                    } else {
                        iContrasena.type = "text";
                        event.target.innerHTML = 'Ocultar';
                    }
                }
            </script>
            
            <!-- Edad con type number -->
            <label for="edad"> Edad: </label>
            <input type="number" 
                name="edad" id="edad" 
                placeholder="Numero de años 0 - 99" 
                min="0" 
                max="99" 
                required> <br> 
            
            <!-- Select -->
            <label for="sexo"> Sexo: </label>
            <select name="sexo" id="sexo">
                <option value="h"> Hombre </option>
                <option value="m"> Mujer </option>
                <option value="se" selected> Sin Especificar </option>
            </select>

        </fieldset> <br> <br>

        <!-- CheckBox -->
        <label for="deportes"> Deportes </label> <br>
        <input type="checkbox" name="deportes" id="deportes" value="1"> Surf <br>
        <input type="checkbox" name="deportes" id="deportes" value="2" checked> Tenis <br>
        <input type="checkbox" name="deportes" id="deportes" value="3"> Futbol <br>
        <input type="checkbox" name="deportes" id="deportes" value="4"> Baloncesto <br>
        <input type="checkbox" name="deportes" id="deportes" value="5"> Beisbol <br> <br>

        <!-- RadioButton -->
        <label for="situacion"> Situacion Laboral </label> <br>
        <input type="radio" name="situacion" id="situacion" value="0"> Trabajando <br>
        <input type="radio" name="situacion" id="situacion" value="1"> Desempleado <br> <br>

        <!-- TextArea -->
        <label for="observaciones"> Observaciones </label> <br>
        <textarea name="observaciones" 
            id="observaciones" 
            cols="50" rows="10" 
            placeholder="Tu Opinión es muy Importante para Nosotros"> </textarea> <br> <br>

        <input type="submit" value="Enviar">
    </form>
</body>
</html>