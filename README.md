# RV-Angel-Aznar--Arbol-processing


Para la creación del árbol tengo tres clases:


Una clase principal pino que dibuja y se encarga del movimiento, llamada pino


Una clase cylinder que se dedica a dibujar cilindros con un radio de la zona superior e inferior dados, así como la altura de este.
Para la realización de dicha clase hay que ir incrementando los ángulos para la creación de los vértices, a su vez esta clase incluye texturas, las cuales pueden ser de tronco o de hoja, para saber si son de tronco u hoja recibe 2 parámetros del número de niveles máximo que tiene el árbol y el nivel que se está dibujando.
A su vez es necesario indicar los vértices en función de las texturas, añadiendole los parámetros pertinentes en processing de las funciones vertex así como inicializar las texturas y aplicarlas.


Una clase tree que se encarga de la creación del árbol, la idea es la siguiente va a ir dibujando cilindros los cuales van a tener unos radios cada vez más chicos además de menor longitud, para ello usamos potencias de numeros decimales como pueden ser 0.4 o 0.8 elevadas al nivel del árbol en el que se encuentran, a su vez cada nivel tendrá el número de ramas correspondiente al número máximo de niveles que tiene el árbol, cada rama tendrá una longitud semialeatoria, ya que dentro de la aleatoriedad seguirá decreciendo como indique al principio del parrafo, y tendrán una orientación aleatoria en sus coordenadas, cuyo rango podemos elegir.
A su vez el número de hojas al final de cada rama será el número de niveles máximo por un multiplicador.
Además tambien tendremos en cuenta el tamaño dado por parámetro del árbol para crearlo de mayor o menor tamaño.

Con todo ello hice pruebas con los siguientes parámetros y conseguí una recreación moderadamente realista de un pino

int niveles= 5;

int rango_giro= 50;

int tamano=190;

int multiplicador_hojas=2;

Como consideración añadir más niveles y mayor rango de giro puede dar resultados mucho más realistas, aunque con la penalización de un coste de cómputo mayor.


![alt text](https://raw.githubusercontent.com/n4rgel/RV-Angel-Aznar--Arbol-processing/master/pino.PNG)


Como referencias he usado la documentación que processing me ofrece así como este proyecto de la comunidad realizado por Giovanni Carlo Mingati:
https://www.openprocessing.org/sketch/6991/#

