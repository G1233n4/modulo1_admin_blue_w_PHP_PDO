<?php
#Salir si alguno de los datos no está presente
if(!isset($_POST["nombres"])) exit();

#Si todo va bien, se ejecuta esta parte del código...
include_once "extraer.php";
$username = $_POST["nombres"];

/*
	Al incluir el archivo de la conexión ("connwPDO.php"), todas sus variables están
	a nuestra disposición. Por lo que podemos acceder a ellas tal como si hubiéramos
	copiado y pegado el código
*/
$sentencia = $db->prepare("INSERT INTO usuarios(usuario_id, usuario_nombre) VALUES (DEFAULT, ?);");
$resultado = $sentencia->execute([$username]); # Pasar en el mismo orden de los ?
#execute regresa un booleano. True en caso de que todo vaya bien, falso en caso contrario.
#Con eso podemos evaluar

if($resultado === TRUE) echo "Insertado correctamente";
else echo "Algo salió mal. Por favor verifica que la tabla exista";

?>