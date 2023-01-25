Tipos de Kernel

MicroKernel: Los micokernel son diseñados de un tamaño pequeño para que al momento de ocurrir un fallo no afecte el sistema operativo completo, sino que un pequeño segmento. A diferencia del monolítico este tipo de kernel es modular. Al momento ninguno de los sistemas operativos emplea este tipo de kernel.
Kernel Monolítico: Es un kernel grande que se ha diseñado para administrar todas las tareas y procesos. Es el único responsable de gestionar la memoria, comunicación de procesos y funciones de drivers y hardware. Los sistemas operativos como Linux, OS X y Windows usan este tipo de kernel debido a que no es modular y alcanza un mayor rendimiento que los micro kernel.
Kernel hibrido: Este kernel es la combinación del kernel monolítico y el micokernel, lo que significa que el kernel Monolítico se hace más compacto y modular.


User Mode vs Kernel Mode

En el modo usuario los programas tienen menos privilegios en que en el modo Kernel y no se les permite acceder directamente a los recursos del sistema. 
Las aplicaciones en modo Usuario emplean syscalls llamando un proceso o método ejecutado por el kernel para transmitir o leer información del hardware al momento de la ejecución de un syscall el cpu cambia de modo usuario a modo kernel para poder ejecutar el proceso necesario. A diferencia del modo usuario el modo kernel tiene todos los privilegios para acceder directamente a los recursos del sistema y de hardware. 
Si se produce un error o interrupción en algún proceso del modo kernel todo el sistema podría dejar de funcionar. Y si se produce un error o interrupción en algún proceso del modo usuario solo ese proceso dejara de funcionar.
A nivel lógico estos dos modos se diferencian por un único bit asignando el bit 0 a kernel mode y el bit 1 al user mode.
