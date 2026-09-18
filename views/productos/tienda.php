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
    <link rel="stylesheet" href="../../CSS/estilo.css?v=2">
</head>

<body>

    <nav class="nav-tienda">

    <div class="logo-tienda">
        <img src="../../img/logo-creations-karen-nuevo.png"
            alt="Logo Creations Karen">
    </div>

    <div class="nav-enlaces">
        <a href="tienda.php">Inicio</a>
        <a href="#productos">Productos</a>
    </div>

    </nav>
    
    <header class="encabezado-tienda">
    <div class="hero-contenido">
        <span class="hero-etiqueta">Arte en tejidos</span>

        <h1>Detalles hechos a mano con amor</h1>

        <p>
            Creamos tejidos artesanales personalizados,
            elaborados con dedicación especialmente para ti.
        </p>

        <a href="#productos" class="btn-hero">
            Ver productos
        </a>
    </div>
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

    <div class="footer-contenido">

        <div class="footer-marca">
            <h3>Creations_Karen</h3>
            <p>Arte en tejidos </p>
        </div>

        <div class="footer-info">
            <p>Tejidos hechos a mano y personalizados.</p>
            <p>Pedidos y consultas por WhatsApp.</p>
        </div>

    </div>

    <div class="footer-copy">
        <p>© 2026 Creations_Karen · Todos los derechos reservados</p>
    </div>

</footer>

</body>

</html>