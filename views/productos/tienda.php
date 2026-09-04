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
    <title>Tienda Artesanal</title>
    <link rel="stylesheet" href="../../CSS/estilo.css">
</head>

<body>

    <nav class="nav-tienda">
        <a href="tienda.php">Inicio</a>
        <a href="#productos">Productos</a>
    </nav>
    
    <header class="encabezado-tienda">
    
        <h1>Tienda Artesanal</h1>
        
        <p>Tejidos hechos a mano con dedicación,
        personalizados y elaborados bajo pedido.</p>
    
    </header>

    <section class="presentacion-tienda">

    <h2>Productos hechos a mano</h2>

    <p>
        Descubre nuestros tejidos artesanales elaborados con dedicación
        y bajo pedido. Elige tu producto favorito y realiza tu pedido
        directamente por WhatsApp.
    </p>

    </section>

    <div class="productos" id="productos">

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

<footer class="footer-tienda">

    <h3>Tienda Artesanal</h3>

    <p>Tejidos hechos a mano bajo pedido</p>

    <p>Pedidos y consultas por WhatsApp</p>

    <p>© 2026 Tienda Artesanal</p>

</footer>

</body>

</html>