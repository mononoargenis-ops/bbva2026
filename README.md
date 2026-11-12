## Requisitos del Sistema

Para desplegar y ejecutar este proyecto correctamente, el entorno debe cumplir con las siguientes especificaciones:

### Frontend (Lado del Cliente)
* **HTML5**: Estructuración semántica del panel de control y carga de archivos.
* **CSS3**: Diseño adaptable (Responsive Design) para visualización en múltiples pantallas.
* **JavaScript (ES6+)**: Gestión de eventos asíncronos (Fetch API / AJAX), manejo de estados y renderizado dinámico de datos.

### Backend (Lado del Servidor)
* **PHP**: Versión 8.0 o superior (Recomendado para un mejor rendimiento en la manipulación de arrays de datos).
* **Extensión cURL (`php-curl`)**: **Obligatoria**. El sistema depende de cURL para la comunicación remota, descarga de fuentes de datos y envío de payloads a endpoints externos.

---

## Configuración y Activación de cURL

Si el sistema no puede conectarse a servicios externos o procesar APIs, asegúrese de habilitar la extensión cURL en su servidor:

### En Entornos Linux (Ubuntu / Debian)
Instale el módulo correspondiente a su versión de PHP y reinicie el servicio web:
```bash
sudo apt-get install php-curl
sudo systemctl restart apache2
# Si usa Nginx con PHP-FPM (ejemplo versión 8.2):
# sudo systemctl restart php8.2-fpm
```

### En Entornos Windows (XAMPP / Laragon)
1. Localice y abra el archivo de configuración `php.ini` desde el panel de su servidor.
2. Busque la línea `;extension=curl`.
3. Elimine el punto y coma (`;`) inicial para desmarcarla como comentario:
   ```ini
   extension=curl
   ```
4. Guarde el archivo y reinicie los servicios de Apache.

### Verificación del Estado
Puede comprobar si el entorno está listo ejecutando el archivo de diagnóstico incluido o creando un script con el siguiente bloque:
```php
<?php
if (!extension_loaded('curl')) {
    die("Error crítico: La extensión cURL no está activa en este servidor.");
}
echo "Entorno verificado: cURL se encuentra activo y listo para procesar datos.";
```

---