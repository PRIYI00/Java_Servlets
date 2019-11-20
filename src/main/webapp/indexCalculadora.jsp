<h1>Calculadora</h1>
<a href="index.jsp"> Volver </a> <br>
<form action="sumar" method="post">

	<label for="operaciones"> Operaciones </label> <br>
	<input type="radio" name="operaciones" value="0"> Sumar <br>
	<input type="radio" name="operaciones" value="1"> Restar <br>
	<input type="radio" name="operaciones" value="2"> Multiplicar <br>
	<input type="radio" name="operaciones" value="3"> Dividir <br>
	
	<input type="text" name="op1" placeholder="numero 1" pattern="\d*" autofocus>
	<br>
	<input type="text" name="op2" placeholder="numero 2" pattern="\d*">
	<br>

	<input type="submit" value="Calcular">
	
</form>