<!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no">

    <!-- Estilos de FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	<base href="/helloweb/">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/styles.css">
    
	<title> Explicación </title>
</head>
<body>
	
	<main class="container">
		<h1> Resumen de la Explicación </h1>
		
		<section>
			<p style="border: 1px solid black; font-size: 20px; color: red;">
			 	Este ejercicio es para responder al cliente de distintas maneras.
			</p>
		</section>
		
		<section>
			<div style="display: flex; border: 1px solid black;">
				<div class="servlet" style="border: 1px solid black; width: 50%;">
					<h2> Servlet </h2>
					<p> Ejemplo para aprender como recibir peticiones del cliente y respondiendole solo usando servlet. </p>
					<form action="ejemplo01" method="GET">
						<label for="nombre"> USUARIO: </label>
						<input type="text" name="nombre"> <br>
						<label for="password"> CONTRASEÑA: </label>
						<input type="password" name="password"> <br>
						<input type="submit" value="Enviar">
					</form>
				</div>
				<div class="servletjsp" style="border: 1px solid black; width: 50%;">
					<h2> Servlet + JSP </h2>
					<p> Otro controlador para ver como se hace lo mismo pero mezclando servlet y jsp. </p>
					<form action="../ejemplo02" method="GET">
						<label for="nombre"> USUARIO: </label>
						<input type="text" name="nombre"> <br>
						<label for="password"> CONTRASEÑA: </label>
						<input type="password" name="password"> <br>
						<input type="submit" value="Enviar">
					</form>
				</div>
			</div>
		</section>
	</main>
	
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>