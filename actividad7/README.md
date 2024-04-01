# Actividad 7

Completely Fair Scheduler (CFS)
---------------
Es un algoritmo de programación de procesos utilizado en el núcleo de Linux desde la versión 2.6.23. Su objetivo principal es asignar recursos de CPU de manera justa y eficiente entre los procesos en ejecución. A continuación, se detallan algunas de sus características principales y su funcionamiento:

1. ** Justicia: ** Una de las características más importantes del CFS es su enfoque en la equidad. Intenta distribuir el tiempo de CPU de manera justa entre todos los procesos en ejecución. Esto significa que ningún proceso debería quedarse sin recursos de CPU durante largos períodos de tiempo si hay otros procesos en cola que también requieren recursos.

2. ** Modelo de tiempo compartido: ** CFS implementa un modelo de tiempo compartido, lo que significa que divide el tiempo de CPU entre los procesos en ejecución en lugar de asignarles porciones de tiempo fijo. Esto permite una distribución más equitativa y dinámica de los recursos.

3. ** Prioridades dinámicas: ** A diferencia de algunos otros algoritmos de programación de procesos que se basan en prioridades estáticas, el CFS ajusta dinámicamente las prioridades de los procesos según su comportamiento y demanda de CPU. Esto se logra utilizando una métrica llamada "tiempo de ejecución virtual" (virtual runtime), que se utiliza para calcular la prioridad de cada proceso en relación con los demás.

4. ** Tiempo de espera mínimo: ** CFS intenta minimizar el tiempo de espera de los procesos en cola. Cuando un proceso está listo para ejecutarse, pero no hay recursos de CPU disponibles, se coloca en una cola de espera y se le asigna un "tiempo de espera mínimo", que es el tiempo que espera antes de que se le otorgue tiempo de CPU.

5. ** Algoritmo de selección justo: ** Cuando hay múltiples procesos en cola esperando tiempo de CPU, CFS utiliza un algoritmo de selección justo para determinar cuál proceso se ejecutará a continuación. Este algoritmo se basa en el concepto de "proporcionalidad justa", donde el proceso con la menor cantidad de tiempo de CPU recibido hasta el momento se selecciona para ejecutarse a continuación.

--------------

Completely Fair Scheduler (CFS) de Linux es un algoritmo de programación de procesos diseñado para proporcionar una distribución justa y eficiente de los recursos de CPU entre los procesos en ejecución. Utiliza un enfoque de tiempo compartido.