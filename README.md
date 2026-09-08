# 🧶 Actividad Integradora 3 - Tienda Artesanal

Aplicación web desarrollada como parte de la **Actividad Integradora 3**, utilizando **PHP, MySQL, HTML, CSS y JavaScript**, con una estructura basada en el patrón de arquitectura **MVC (Modelo - Vista - Controlador)**.

El proyecto consiste en una **tienda virtual de productos artesanales tejidos a mano**, donde los productos son almacenados en una base de datos MySQL y mostrados dinámicamente en la aplicación.

---

## 🎯 Objetivo del proyecto

Desarrollar una aplicación web que permita registrar y consultar información almacenada en una base de datos MySQL, manteniendo separadas las responsabilidades de la aplicación mediante el patrón MVC.

El flujo principal utilizado es:

**Vista → Controlador → Modelo → Base de datos**

---

## 🛠️ Tecnologías utilizadas

- HTML5
- CSS3
- JavaScript
- PHP
- MySQL / MariaDB
- XAMPP
- Git
- GitHub

---

## 📂 Estructura del proyecto

```text
actividad-integradora-3/
│
├── config/
│   └── conexion.php
│
├── controllers/
│   └── ProductoController.php
│
├── models/
│   └── producto.php
│
├── views/
│   └── productos/
│       ├── crear.php
│       ├── lista.php
│       └── tienda.php
│
├── CSS/
│   └── estilo.css
│
├── JS/
│   └── script.js
│
├── database/
│   └── integradora.sql
│
├── img/
│   └── imágenes de los productos
│
├── index.php
└── README.md
```

---

## 🧩 Arquitectura MVC

El proyecto utiliza el patrón **Modelo - Vista - Controlador (MVC)** para separar las diferentes responsabilidades de la aplicación.

### Modelo

El modelo se encuentra en:

```text
models/producto.php
```

Es responsable de comunicarse con MySQL y realizar las operaciones relacionadas con los productos, entre ellas:

- Registrar productos mediante `INSERT`.
- Consultar productos mediante `SELECT`.

### Vista

Las vistas se encuentran en:

```text
views/productos/
```

Se utilizan para mostrar la información al usuario.

El proyecto contiene:

- `crear.php`: formulario para registrar productos.
- `lista.php`: consulta y visualización de los registros mediante una tabla HTML.
- `tienda.php`: catálogo público de productos.

### Controlador

El controlador se encuentra en:

```text
controllers/ProductoController.php
```

Se encarga de recibir las acciones realizadas desde las vistas, comunicarse con el modelo y coordinar el registro y consulta de productos.

---

## 🗄️ Base de datos

La aplicación utiliza una base de datos MySQL llamada:

```text
integradora
```

La tabla principal es:

```text
productos
```

### Campos de la tabla

| Campo | Tipo | Descripción |
|---|---|---|
| id | INT | Identificador único del producto |
| nombre | VARCHAR(100) | Nombre del producto |
| descripcion | TEXT | Descripción del producto |
| precio | DECIMAL(10,2) | Precio del producto |
| imagen | VARCHAR(255) | Nombre de la imagen asociada |

El script de la base de datos se encuentra en:

```text
database/integradora.sql
```

El archivo incluye la estructura de la tabla y los registros utilizados por la aplicación.

---

## ✏️ Registro de productos

La aplicación dispone de un formulario para registrar nuevos productos.

El formulario permite ingresar:

- Nombre del producto.
- Descripción.
- Precio.
- Imagen.

Los datos enviados siguen el flujo:

```text
Formulario
    ↓
Vista
    ↓
Controlador
    ↓
Modelo
    ↓
MySQL
```

La imagen del producto se almacena en la carpeta `img/` y su nombre se registra en la base de datos.

---

## ✅ Validaciones con JavaScript

Antes de enviar el formulario se realizan diferentes validaciones mediante JavaScript.

Entre ellas:

- Verificación de campos vacíos.
- Longitud mínima y máxima del nombre.
- Longitud mínima de la descripción.
- Validación del precio.
- Verificación de valores numéricos.
- Precio mayor que cero.
- Límite máximo permitido para el precio.
- Verificación de que se haya seleccionado una imagen.
- Validación del tipo de archivo seleccionado.

Las validaciones se encuentran en:

```text
JS/script.js
```

Además, PHP realiza una validación del tipo de imagen antes de almacenarla en el servidor.

---

## 📋 Consulta de registros

Los productos almacenados en MySQL pueden consultarse desde:

```text
views/productos/lista.php
```

Los registros obtenidos desde la base de datos son mostrados mediante una **tabla HTML**, permitiendo visualizar la información registrada.

La consulta se realiza desde el modelo y es coordinada mediante el controlador, manteniendo la estructura MVC.

---

## 🛍️ Catálogo de productos

La aplicación también dispone de una vista pública de tienda:

```text
views/productos/tienda.php
```

Los productos son obtenidos dinámicamente desde MySQL y mostrados en tarjetas.

Cada producto presenta información como:

- Imagen.
- Nombre.
- Descripción.
- Precio.
- Botón para realizar el pedido.

El catálogo contiene productos artesanales reales almacenados en la base de datos.

---

## 💬 Pedidos mediante WhatsApp

Cada producto dispone de un botón para realizar pedidos mediante WhatsApp.

Al seleccionar un producto, la aplicación genera un mensaje que incluye automáticamente información del producto seleccionado, facilitando el contacto con el emprendimiento.

---

## 🎨 Diseño responsive

La interfaz fue desarrollada utilizando CSS propio.

Se utilizaron herramientas como:

- Flexbox.
- CSS Grid.
- Media queries y diseño adaptable.
- Tarjetas para los productos.
- Formularios estilizados.
- Navegación.
- Footer.

El objetivo es permitir una visualización adecuada tanto en computadoras como en dispositivos móviles.

---

## 🔤 Codificación UTF-8

La conexión con MySQL utiliza:

```php
$conexion->set_charset("utf8mb4");
```

Esto permite manejar correctamente caracteres especiales como:

```text
á é í ó ú ñ
```

tanto en los nombres como en las descripciones de los productos.

---

## 🚀 Instalación y ejecución local

### 1. Requisitos

Para ejecutar el proyecto localmente se necesita:

- XAMPP.
- Apache.
- MySQL/MariaDB.
- Navegador web.

### 2. Descargar el proyecto

Clonar el repositorio:

```bash
git clone https://github.com/ajtorres-creator/actividad-integradora-3.git
```

O descargarlo directamente desde GitHub.

### 3. Ubicar el proyecto

Colocar la carpeta dentro de:

```text
C:\xampp\htdocs\
```

El resultado debe ser:

```text
C:\xampp\htdocs\actividad-integradora-3
```

### 4. Crear la base de datos

Abrir phpMyAdmin:

```text
http://localhost/phpmyadmin/
```

Crear una base de datos llamada:

```text
integradora
```

### 5. Importar la base de datos

Seleccionar la base `integradora`, utilizar la opción **Importar** y seleccionar:

```text
database/integradora.sql
```

### 6. Conexión

La configuración local utiliza:

```text
Host: localhost
Usuario: root
Contraseña: sin contraseña
Base de datos: integradora
```

### 7. Ejecutar

Iniciar **Apache** y **MySQL** desde XAMPP y abrir:

```text
http://localhost/actividad-integradora-3/
```

---

## 🔄 Control de versiones

El proyecto utiliza Git y GitHub para mantener un historial del desarrollo.

Se realizaron diferentes commits que representan avances reales del proyecto, incluyendo:

1. Implementación inicial de la aplicación MVC.
2. Creación de la tienda pública y mejoras de diseño.
3. Mejoras de diseño y estructura de la tienda.
4. Implementación de validaciones del formulario.
5. Validación de tipos de imagen en el servidor.
6. Mejora de navegación y consulta de productos.
7. Ajustes finales y preparación del proyecto.
8. Carga del catálogo real de productos.
9. Configuración UTF-8 para conexión MySQL.

---

## 📚 Funcionalidades principales

- Registro de productos.
- Almacenamiento de datos en MySQL.
- Carga de imágenes.
- Validaciones mediante JavaScript.
- Validación de imágenes mediante PHP.
- Consulta de productos.
- Visualización mediante tabla HTML.
- Catálogo público.
- Diseño adaptable a dispositivos móviles.
- Pedidos mediante WhatsApp.
- Arquitectura MVC.
- Control de versiones con Git y GitHub.

---

## 👨‍💻 Autor

**Anthony Torres**

Proyecto académico desarrollado para la **Actividad Integradora 3 - Aplicación Web con PHP, MySQL y MVC**.