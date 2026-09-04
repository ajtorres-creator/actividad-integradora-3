<?php

require_once __DIR__ . "/../config/conexion.php";

class Producto
{
    private $conexion;

    public function __construct()
    {
        global $conexion;
        $this->conexion = $conexion;
    }

    public function registrar($nombre, $descripcion, $precio, $imagen)
    {
        $sql = "INSERT INTO productos (nombre, descripcion, precio, imagen)
                VALUES (?, ?, ?, ?)";

        $stmt = $this->conexion->prepare($sql);

        $stmt->bind_param("ssds", $nombre, $descripcion, $precio, $imagen);

        return $stmt->execute();
    }

    public function listar()
    {
    $sql = "SELECT * FROM productos";

    $resultado = $this->conexion->query($sql);

    return $resultado;
    }
}