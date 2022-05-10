<?php

// Declaramos las credenciales de la conexión PDO.

$server = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "soporte_cmi";

// Creamos la conexión MySQL
try {
	// Creamos la variable de conexión $db.
	$db = new PDO("mysql:host=$server;dbname=$dbname", "$username", "$password");
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
	die('Error: No se puede conectar a MySQL');
	echo "Ocurrió algo con la base de datos: " . $e->getMessage();
}

/*
class Conectar
{
	protected $dbh;
	protected function Conexion()
	{
		$server = "127.0.0.1";
		$username = "root";
		$password = "";
		$dbname = "soporte_cmi";

		try {
			$conectar = $this->dbh = new PDO("mysql:local=$server;dbname=$dbname", "$username", "$password");

			return $conectar;
		} catch (Exception $e) {
			print "¡Error BD!: " . $e->getMessage() . "<br/>";
			die();
		}
	}

	/*public function set_names()
	{
		return $this->dbh->query("SET NAMES 'utf8'");
	}

	public function ruta()
	{
		return "http://localhost:90/PERSONAL_mesadepartes/";
	}
}*/
