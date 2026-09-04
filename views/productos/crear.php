<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar producto</title>

    <link rel="stylesheet" href="../../CSS/estilo.css">
</head>

<body>

    <h1>Registrar producto</h1>

    <div class="formulario-producto">

        <form id="formProducto" method="POST" action="../../controllers/ProductoController.php" enctype="multipart/form-data">

        <label for="nombre">Nombre del producto:</label>
        <input type="text" id="nombre" name="nombre" required>

        <br><br>

        <label for="descripcion">Descripción:</label>
        <textarea id="descripcion" name="descripcion" required></textarea>

        <br><br>

        <label for="precio">Precio:</label>
        <input type="number" id="precio" name="precio" step="0.01" min="0.01" required>

        <br><br>

        <label for="imagen">Imagen:</label>
        <input type="file" id="imagen" name="imagen" accept="image/*" required>

        <br><br>

        <button type="submit">Registrar producto</button>
        </form>
    </div>
    <br>
    <a href="lista.php">Ver productos registrados</a>

    <script src="../../JS/script.js"></script>
</body>
</html>