#  Matrix: El Elegido

### Colecciones y bloques. Ejercicio breve 

![Matrix](./img/matrix-1.png)

Tenemos a neo, morfeo y trinity que son los pasajeros de la nave, que pueden bajarse de la nave y eventualmente volver a subir. 
* Neo es el elegido, empieza con 100 de energia, pero cuando salta pierde la mitad de su energia. Su vitalidad es la décima parte de su energía
* Morfeo no es el elegido. Su vitalidad es inicialmente 8, pero puede variar, empieza descansado y al saltar se cansa, pero si salta estando cansado, vuelve a quedar descansado. Siempre que salta, su vitalidad disminuye en 1. 
* Trinity sabe decir su vitalidad, que siempre es 0. Saltar no la afecta. No es la elegida.

De la nave nos interesa averiguar: 
* Cuántos pasajeros hay
* El pasajero de mayor vitalidad
* Si está equilibrada en vitalidad, lo que sucede cuando ninguno de los pasajeros tiene más que el doble de vitalidad que cualquier otro pasajero.
* Si el elegido está en la nave 

Y también hay hechos que le suceden a la nave
* Cuando la nave choca, todos sus pasajeros saltan para salvarse y se van de la nave. 
* Cuando la nave acelera, todos sus pasajeros, excepto el elegido, saltan de alegría y permanecen en la nave.	

Más requerimientos Se debe poder:

1- Conocer a los "pasajeros valiosos", que son aquellos cuya vitalidad es superior a 5.
2- Saber si hay algún pasajero que esté "al horno", lo cual ocurre si su vitalidad es exactamente 0.
3- Averiguar si todos los pasajeros de la nave están en condiciones de enfrentar a un agente, algo que solo sucede si cada uno tiene más de 2 de vitalidad.
4- Obtener la vitalidad promedio de los pasajeros que están actualmente en la nave.
5- Conocer cuántos pasajeros tienen una vitalidad que sea un número par.
6- Hacer que la nave realice un "simulacro de combate", lo que obliga a todos sus pasajeros a saltar tres veces seguidas.
7- Listar la vitalidad de todos los pasajeros.
8- Ordenar a los pasajeros de menor a mayor según su vitalidad.
9- Elegir al azar un pasajero para que limpie el baño.
10- Contar la cantidad de pasajeros a bordo de la nave que son 'El elegido'.
11- La nave debe poder responder cuál es su potencia vital, cuyo valor es el producto de la vitalidad de sus pasajeros.