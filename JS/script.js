document.addEventListener("DOMContentLoaded", function() {

    const formulario = document.getElementById("formProducto");

    formulario.addEventListener("submit", function(event) {

        const nombre = document.getElementById("nombre").value.trim();
        const precio = document.getElementById("precio").value;
        const descripcion = document.getElementById("descripcion").value.trim();
        const imagen = document.getElementById("imagen").value.trim();

        if (nombre === "") {
            event.preventDefault();
            alert("Por favor, ingresa el nombre del producto.");
            return;
        }

        if (descripcion === "") {
            event.preventDefault();
            alert("Por favor, ingresa una descripción del producto.");
            return;
        }

        if (imagen === "") {
            event.preventDefault();
            alert("Por favor, ingresa la imagen del producto.");
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

    });

});