<?php
// Declaramos las credenciales de la conexión PDO.
$server = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "soporte_cmi";
$port = 3306;

// Creamos la conexión MySQL
try{
	// Creamos la variable de conexión $db.
	$db = new PDO("mysql:host=$server;dbname=$dbname", "$username", "$password");
	$db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
}catch(PDOException $e){
	die('Error: No se puede conectar a MySQL');
	echo "Ocurrió algo con la base de datos: " . $e->getMessage();
}

?>