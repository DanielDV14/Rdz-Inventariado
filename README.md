RDz Cycling Shop — Sistema de Inventariado
Sistema web de gestión e inventariado desarrollado para RDz Cycling Shop, una tienda especializada en ciclismo. Permite administrar productos, clientes, proveedores, ventas, créditos y generar reportes de gestión completos.

📋 Módulos del sistema
🗂️ Catálogo
    Gestión de productos con imágenes, precios y stock
    Gestión de categorías para organizar el catálogo

👥 Personas
    Ingreso, edición y eliminación de clientes
    Ingreso, edición y eliminación de proveedores

🛒 Operaciones
    Registro de ventas con múltiples tipos de pago (contado, crédito, etc.)
    Comprobantes de proveedor para control de compras e ingresos
    Créditos con seguimiento de cuotas y estado de mora
    Pagos de cuotas con historial detallado

⚙️ Configuración
    Canales de venta (tienda física, online, etc.)
    Paqueterías para envíos
    Tipos de pago configurables

👤 Usuarios
    Sistema de login con sesiones PHP
    Cambio de estado y gestión de usuarios

📊 Reportes
Categoría
Ventas: 
  Ventas por tiempo, por canal, por tipo de pago, productividad por usuario, mora en créditos, cuotas pagadas
Gestión:
  Stock mínimo, productos estancados, valor total de inventario, utilidad bruta por producto, productos más comprados
Clientes:
  Clientes perdidos, promedio de compras, tasa de recurrencia, dinero por cliente
Logística:
  Tasa de devoluciones, uso de paqueterías, mapa de calor de envíos
Proveedores:
  Cambios de precios, variación de precios, revisión pagado vs. ingresado

🛠️ Stack tecnológico

Backend: PHP (MySQLi)
Base de datos: MySQL
Frontend: HTML5, CSS3, Bootstrap 5, Bootstrap Icons, Google Fonts
Scripts: JavaScript (validaciones y formularios dinámicos)

🚀 Instalación
Requisitos previos

PHP 7.4 o superior
MySQL 5.7 o superior
Servidor web: Apache o Nginx (recomendado: XAMPP / Laragon)

Pasos

1. Clona el repositorio:

bash   git clone https://github.com/DanielDV14/Rdz-inventariado.git

2. Copia la carpeta del proyecto a tu directorio web:


  | /xampp/htdocs/rdz/  |
  |---------------------|
  
3. Crea la base de datos en MySQL:

  |sql   CREATE DATABASE rdz; |
  |---------------------------|

4. Importa el archivo SQL del proyecto.

5. Configura la conexión a la base de datos en conexion.php:

  |php   $servidor = "localhost";|
  |$usuario  = "root";           |
  |$password = "TU_CONTRASEÑA";  |
  |$bd       = "rdz";            |
  |------------------------------|

6. Abre el sistema en tu navegador:

   |http://localhost/rdz/index.php |
   |-------------------------------|


📁 Estructura del proyecto
rdz/
├── Css/                        # Hojas de estilo por módulo
├── Js/                         # Scripts de formularios dinámicos
├── Imagenes/                   # Logos y fotos de productos
├── Reportes_clientes/          # Reportes de comportamiento de clientes
├── Reportes_Gestion/           # Reportes de inventario y gestión
├── Reportes_logistica/         # Reportes de envíos y devoluciones
├── Reportes_proveedores/       # Reportes de proveedores
├── Reportes_venta/             # Reportes de ventas y créditos
├── conexion.php                # Configuración de base de datos (no subir)
├── index.php                   # Login
├── inicio.php                  # Dashboard principal
├── navbar.php                  # Navegación global
└── ...                         # Módulos CRUD por entidad

✍️ Autor
Desarrollado para RDz Cycling Shop por Daniel Díaz.
