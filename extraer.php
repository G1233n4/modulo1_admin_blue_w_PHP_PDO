<?php
include 'connwPDO.php';

// Número de registros recuperados
//$numberofrecords = 10;

if(!isset($_POST['searchTerm'])){

   // Obtener registros a tarves de la consulta SQL
   $stmt = $db->prepare("SELECT unidad_id, nombre_completo FROM unidades /*LIMIT :limit*/");
  // $stmt->bindValue(':limit', (int)$numberofrecords, PDO::PARAM_INT);
   $stmt->execute();
   $lista_unidades = $stmt->fetchAll();

}else{

   $search = $_POST['searchTerm'];// Search text

   // Mostrar resultados
   $stmt = $db->prepare("SELECT unidad_id, nombre_completo FROM unidades WHERE nombre_completo like '%$search%' /*LIMIT :limit*/");
   //$stmt->bindValue(':searchTerm', '%'.$search.'%', PDO::PARAM_STR);
   //$stmt->bindValue(':limit', (int)$numberofrecords, PDO::PARAM_INT);
   $stmt->execute();
   //Variable en array para ser procesado en el ciclo foreach
   $lista_unidades = $stmt->fetchAll();

}

$response = array();

// Leer los datos de MySQL
foreach($lista_unidades as $pro){
   $response[] = array(
      "id" => $pro['unidad_id'],
      "nombre" => $pro['nombre_completo']
   );
}

echo json_encode($response);
exit();
?>