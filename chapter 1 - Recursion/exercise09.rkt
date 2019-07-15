;;; Exercise 9.
#lang eopl

;; main()
(define inversions
  (lambda (L)
    (aux-inv1 L 0)
  )
)

;; Función auxiliar "aux-inv1":
;; compara entre primero y resto de la lista de forma iterada siempre
;; fijando el primero de la lista de manera recursiva
(define aux-inv1
  (lambda (L acc)
    (if (null? (cdr L))
      (aux-inv2 (car L) (cdr L) acc)
      (+ (aux-inv1 (cdr L) acc) (aux-inv2 (car L) (cdr L) acc))
    )
  )
)

;; Función auxiliar "aux-inv2":
;; compara el elemento de entrada con todos los demás elementos de la lista
;; si el elemento es mayor que algún elemento de la lista, suma 1
(define aux-inv2
  (lambda (Elem1 resto acc)
    (if (null? resto)
      acc
      (if (and (> Elem1 (car resto)) (not (null? resto)))
        (aux-inv2 Elem1 (cdr resto) (+ acc 1))
        (aux-inv2 Elem1 (cdr resto) acc)
      )
    )
  )
)

;; Pruebas:
(inversions '(2 3 8 6 1))   ;; Retorna 5
(inversions '(1 2 3 4))     ;; Retorna 0
(inversions '(3 2 1))       ;; Retorna 3
(inversions '(5 7 1 9 8))   ;; Retorna 3
