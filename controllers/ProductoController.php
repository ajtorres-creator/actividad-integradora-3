<?php

require_once __DIR__ . "/../models/producto.php";

class ProductoController
{
    private $producto;

    public function __construct()
    {
        $this->producto = new Producto();
    }

    public function registrar($nombre, $descripcion, $precio, $imagen)
    {
        return $this->producto->registrar(
            $nombre,
            $descripcion,
            $precio,
            $imagen
        );
    }

    public function listar()
    {
        return $this->producto->listar();
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $nombre = $_POST["nombre"];
    $descripcion = $_POST["descripcion"];
    $precio = $_POST["precio"];
    $imagen = $_FILES["imagen"];

    if ($imagen["error"] !== 0) {
        die("Error al subir la imagen.");
    }

    $tiposPermitidos = ["image/jpeg", "image/png", "image/webp"];

    if (!in_array($imagen["type"], $tiposPermitidos)) {
        die("Solo se permiten imágenes JPG, PNG o WEBP.");
    }

    $nombreImagen = $imagen["name"];
    $rutaDestino = __DIR__ . "/../img/" . $nombreImagen;

    move_uploaded_file($imagen["tmp_name"], $rutaDestino);

    $controller = new ProductoController();

    $resultado = $controller->registrar(
        $nombre,
        $descripcion,
        $precio,
        $nombreImagen
    );

    if ($resultado) {
        echo "Producto registrado correctamente";
    } else {
        echo "Error al registrar el producto";
    }
}