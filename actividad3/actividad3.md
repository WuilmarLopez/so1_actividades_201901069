# Actividad 4

# Servicio Systemd unit

Para realizar esta actividad debe tener en cuenta que debe tener un script que imprima en consola un saludo y la fecha actual 

Instalacion del Servicio
---------------
* Creacion del archivo
  * Debera crear un archivo <nombre del servicio>.service en la direccion /etc/systemd/system/
* Contenido del archivo
  * **[Unit]**     //declaramos nuestra seccion unit
    * **Description=Ejecucion de script que imprime en consola un saludo y la fecha actual** //agregamos una breve descripcion de lo que realizara nuestro servicio
    * **After=network.target** //garantiza que el servicio se inicie después de que se hayan inicializado las interfaces de red 
  * **[Service]** //declaramos nuestra seccion de servicio 
    * **User=nombre_de_usuario** //aca debemos colocar el usuario en el que se ejecutara nuestro servicio
    * **ExecStart=/ruta/al/script.sh** // especificamos la ruta y el script que se ejecutara en nuestro servicio
    * **Restart=always** //garantiza que el servicio se reinicie automáticamente si se detiene por alguna razón. 
  * **[Install]** // declaramos nuestra seccion install
    * **WantedBy=multi-user.target** //especifica que el servicio se iniciará automáticamente durante el proceso de arranque.
 * Actualizacion del daemon
  * **sudo systemctl daemon-reload** //este comando se ejecuta para actualizar el daemon de systemd para que detecte los nuevos archivos de servicio
 * Inicializacion el servicio
  * **sudo systemctl start nombre_del_servicio.service** //con este comando ponemos a correr nuestro servicio
 * Verificacion del Servicio
  * **sudo systemctl status nombre_del_servicio.service** // con este comando comprobamos que nuestro servicio este ejecutandose correctamente, el estado debe ser "active (running)"
 * Habilita el servicio
  * **sudo systemctl enable nombre_del_servicio.service** //con este comando habilitamos el inicio de nuestro servicio al momento de que el sistema operativo arranque


> Nota: Con este proceso el servicio se ejecutara durante el proceso de arranque.


