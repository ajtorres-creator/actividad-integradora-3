document.addEventListener("DOMContentLoaded", function() {


    const formulario = document.getElementById("formProducto");

    formulario.addEventListener("submit", function(event) {

        const nombre = document.getElementById("nombre").value.trim();
        const precio = document.getElementById("precio").value;
        const descripcion = document.getElementById("descripcion").value.trim();
        const imagen = document.getElementById("imagen");

        if (nombre === "") {
            event.preventDefault();
            alert("Por favor, ingresa el nombre del producto.");
            return;
        }

        if (nombre.length < 3) {
            event.preventDefault();
            alert("El nombre del producto debe tener al menos 3 caracteres.");
            return;
        }

        if (nombre.length > 100) {
            event.preventDefault();
            alert("El nombre del producto no puede superar los 100 caracteres.");
            return;
        }

        if (descripcion === "") {
            event.preventDefault();
            alert("Por favor, ingresa una descripción del producto.");
            return;
        }

        if (descripcion.length < 10) {
            event.preventDefault();
            alert("La descripción debe tener al menos 10 caracteres.");
            return;
        }

        if (imagen.files.length === 0) {
            event.preventDefault();
            alert("Por favor, selecciona una imagen del producto.");
            return;
        }

        const archivo = imagen.files[0];

        if (!archivo.type.startsWith("image/")) {
            event.preventDefault();
            alert("El archivo seleccionado debe ser una imagen.");
            return;
        }

        if (precio === "") {
            event.preventDefault();
            alert("Por favor, ingresa el precio del producto.");
            return;
        }

        if (isNaN(precio) || Number(precio) <= 0) {
            event.preventDefault();
            alert("El precio debe ser un número mayor que 0.");
            return;
        }

        if (Number(precio) > 9999.99) {
            event.preventDefault();
            alert("El precio no puede superar los $9999.99.");
            return;
        }

    });

});