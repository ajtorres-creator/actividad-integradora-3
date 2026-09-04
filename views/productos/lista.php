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

    <link rel="stylesheet" href="../../CSS/estilo.css">
</head>

<body>

    <h1>Productos registrados</h1>

    <a href="crear.php">Registrar nuevo producto</a>
    &nbsp;&nbsp;
    <a href="tienda.php">Ver tienda</a>

    <br><br>

    <table class="tabla-productos">

        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Precio</th>
                <th>Imagen</th>
            </tr>
        </thead>

        <tbody>

            <?php while ($producto = $productos->fetch_assoc()) { ?>

                <tr>

                    <td>
                        <?php echo $producto["id"]; ?>
                    </td>

                    <td>
                        <?php echo $producto["nombre"]; ?>
                    </td>

                    <td>
                        <?php echo $producto["descripcion"]; ?>
                    </td>

                    <td>
                        $<?php echo $producto["precio"]; ?>
                    </td>

                    <td>
                        <img 
                            src="../../img/<?php echo $producto["imagen"]; ?>" 
                            alt="<?php echo $producto["nombre"]; ?>"
                        >
                    </td>

                </tr>

            <?php } ?>

        </tbody>

    </table>

</body>

</html>