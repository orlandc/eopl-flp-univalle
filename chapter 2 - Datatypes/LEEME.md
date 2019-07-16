## Capitulo 2

| Español | [Ingles](https://github.com/orlandc/eopl-flp-univalle/tree/master/chapter%202%20-%20Datatypes) |
| :---    |                                                                                          -----: |

### Datatypes

**1** Implementar la interfaz Bignum para N = 16 utilizando listas, como se muestra en la diapositiva número 12 de las transparencias del tema de Abstracción de datos. Recuerde que la representación Bignum está definida ası́ (para un N grande):

\begin{equation} \begin{bmatrix} x & \dot{x} & \theta & \dot{\theta} & L & m & M \end{bmatrix} \end{equation}

Donde, por ejemplo, si N = 16, algunas representaciones son:
• d17e = ’(1 1) = ((1 × 16 0 ) + (1 × 16 1 ))
• d4419e = ’(3 4 1 1) = ((3 × 16 0 ) + (4 × 16 1 ) + (1 × 16 2 ) + (1 × 16 3 ))
• d3488135e = ’(7 8 9 3 5 3) = ((7 × 16 0 ) + (8 × 16 1 ) + (9 × 16 2 ) + (3 ×
16 3 ) + (5 × 16 4 ) + (3 × 16 5 ))