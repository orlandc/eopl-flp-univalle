;;; Exercise 14.
#lang eopl

;; main()
(define sort
  (lambda (L F)
    (aux-sort1 empty L F)
  )
)

;; Función auxiliar "aux-sort1":
;; evalua si la lista es vacia de lo contrario llama a
;; la funcion de orden
(define aux-sort1
  (lambda (order-list L F)
    (cond 
      [(eq? L '()) order-list] 
      [else (aux-sort1 (aux-sort2 order-list (list (car L)) F) (cdr L) F)]
    )
  )
)

;; Función auxiliar "aux-sort2":
;; ordena una lista según la función de comparación,
(define aux-sort2
  (lambda (L1 L2 F)
    (cond
      [(null? L1) L2]
      [(null? L2) L1]
      [(F (car L1) (car L2)) (cons (car L1) (aux-sort2 (cdr L1) L2 F))]
      [else  (cons (car L2) (aux-sort2 L1 (cdr L2) F))]
    )
  )
)

;; Pruebas:
(sort '(8 2 5 2 3) <)                     ;; Retorna (2 2 3 5 8)
(sort '(8 2 5 2 3) >)                     ;; Retorna (8 5 3 2 2)
(sort '("a" "c" "bo" "za" "lu") string>?) ;; Retorna ("za" "lu" "c" "bo" "a")
(sort '("a" "c" "bo" "za" "lu") string<?) ;; Retorna ("a" "bo" "c" "lu" "za")
