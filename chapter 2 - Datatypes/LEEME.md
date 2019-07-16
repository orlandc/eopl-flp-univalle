## Capitulo 2

| Español | [Ingles](https://github.com/orlandc/eopl-flp-univalle/tree/master/chapter%202%20-%20Datatypes) |
| :---    |                                                                                          -----: |

### Datatypes

**1** Implementar la interfaz Bignum para N = 16 utilizando listas, como se muestra en la diapositiva número 12 de las transparencias del tema de Abstracción de datos. Recuerde que la representación Bignum está definida ası́ (para un N grande):

<p align="center">
<img src="https://latex.codecogs.com/gif.latex?\left&space;\lceil&space;n&space;\right&space;\rceil=&space;\begin{Bmatrix}&space;\left&space;(&space;\right&space;)&space;\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,&space;n=&space;0&space;\\&space;\left&space;(&space;cons\,\,\,&space;r\left&space;\lceil&space;q&space;\right&space;\rceil&space;\right&space;)\,\,&space;n=&space;qN&plus;r,0<&space;r<&space;N&space;\end{Bmatrix}" title="\left \lceil n \right \rceil= \begin{Bmatrix} \left ( \right ) \,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\, n= 0 \\ \left ( cons\,\,\, r\left \lceil q \right \rceil \right )\,\, n= qN+r,0< r< N \end{Bmatrix}" />
</p>

Donde, por ejemplo, si N = 16, algunas representaciones son:
• d17e = ’(1 1) = ((1 × 16 0 ) + (1 × 16 1 ))
• d4419e = ’(3 4 1 1) = ((3 × 16 0 ) + (4 × 16 1 ) + (1 × 16 2 ) + (1 × 16 3 ))
• d3488135e = ’(7 8 9 3 5 3) = ((7 × 16 0 ) + (8 × 16 1 ) + (9 × 16 2 ) + (3 ×
16 3 ) + (5 × 16 4 ) + (3 × 16 5 ))