<?php

require_once "../../controllers/ProductoController.php";

$controller = new ProductoController();

$productos = $controller->listar();

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de productos</title>
    <link rel="stylesheet" href="../../css/estilo.css">

<body>

    <h1>Productos registrados</h1>
    <a href="crear.php">Registrar nuevo producto</a>

    <br><br>

<div class="productos">

    <?php while ($producto = $productos->fetch_assoc()) { ?>

        <div class="producto">

            <img src="../../img/<?php echo $producto["imagen"]; ?>" 
                alt="<?php echo $producto["nombre"]; ?>">

            <h2><?php echo $producto["nombre"]; ?></h2>

            <p><?php echo $producto["descripcion"]; ?></p>

            <strong>$<?php echo $producto["precio"]; ?></strong>

            <a href="https://wa.me/593999320240?text=Hola,%20quisiera%20pedir%20este%20producto:%20<?php echo urlencode($producto["nombre"]); ?>%20por%20$<?php echo $producto["precio"]; ?>" 
                class="btn-pedido" 
                target="_blank">
                Pedir este producto
</a>

        </div>

    <?php } ?>

</div>

</body>
</html>