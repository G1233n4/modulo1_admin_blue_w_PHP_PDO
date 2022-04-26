<?php 
class Usuario
{
    private $id;
    private $usuario;
    private $unidad;

    public function __construct()
    {
        $this->id = 0;
        $this->usuario = "";
        $this->unidad = "";
    }

    public function setId($id){
        $this->id = $id;
    }
    public function getId(){
        return $this->id;
    }

    public function setUsuario($usuario){
        $this->usuario = $usuario;
    }
    public function getUsuario(){
        return $this->usuario;
    }
}
?>