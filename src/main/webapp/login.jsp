
<%
	String mensaje = (String)request.getAttribute("mensaje");
	
	if ( mensaje != null ){
	%>
		<h1 style="color:red"><%=mensaje%></h1>
	<% 
	}	
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Login Maquetación </title>

    <link rel="stylesheet" href="css/csslogin.css"> 
</head>
<body>
	<a href="index.jsp"> Volver </a> <br>
    <div class="overlay">
        <!-- LOGN IN FORM by Omar Dsoky -->
        <form action="datosFormulario" method="post">
            <!--   con = Container  for items in the form-->
            <div class="con">
                <!--     Start  header Content  -->
                <header class="head-form">
                    <h2>Log In</h2>
                    <!--     A welcome message or an explanation of the login form -->
                    <p>Logeate usando tu Usuario y Contraseña </p>
                </header>
                <!--     End  header Content  -->
                <br>
                <div class="field-set">
     
                    <!--   user name -->
                    <span class="input-item">
                        <i class="fa fa-user-circle"></i>
                    </span>
                    <!--   user name Input-->
                    <input class="form-input" id="txt-input" name="nombre" type="text" placeholder="@NombreUsuario" required>
     
                    <br>
     
                    <!--   Password -->
     
                    <span class="input-item">
                        <i class="fa fa-key"></i>
                    </span>
                    <!--   Password Input-->
                    <input class="form-input" type="password" placeholder="Contraseña" id="pwd"  name="contrasena" required>
     
                    <!-- Show/hide password  -->
                    <span>
                        <i class="fa fa-eye" aria-hidden="true"  type="button" id="eye">
                            <img src="https://cdn0.iconfinder.com/data/icons/feather/96/eye-16.png" alt="eye"/>
                        </i>
                    </span>
     
                    <br>

                    <select class="idiomas" name="idioma" id="idioma">
                        <option value="euskera"> Euskera </option>
                        <option value="castellano" selected> Castellano </option>
                        <option value="ingles"> Ingles </option>
                    </select>

                    <br>

                    <input type="checkbox" class="recuerdameClase" name="recuerdame" id="recuerdame" value="1"> Recuerdame <br>
     
                    <br>
                    <!--        buttons -->
                    <!--      button LogIn -->
                    <!-- <button class="log-in"> Entrar </button> -->
                    <input type="submit" class="form-input" value="Entrar"> 
                </div>
  
                <!--   other buttons -->
                <div class="other">
                    <!--      Forgot Password button-->
                    <button class="btn submits frgt-pass"> ¿Has olvidado tu contraseña? </button>
                    <!--     Sign Up button -->
                    <button class="btn submits sign-up"> Resgistrarse
                    <!--         Sign Up font icon -->
                    <i class="fa fa-user-plus" aria-hidden="true"></i>
                    </button>
                    <!--      End Other the Division -->
                </div>
     
            <!--   End Conrainer  -->
            </div>
  
            <!-- End Form -->
        </form>
    </div>

    <!-- JavaScript -->
    <script src="js/login.js">  </script>
</body>
</html>