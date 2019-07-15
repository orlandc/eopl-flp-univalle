;;; Exercise 6.
#lang eopl

;; main()
(define list-facts
  (lambda (n)
    (aux-facts n 1)
  )
)

;; Función auxiliar "aux-facts1":
;; realiza el proceso de enlistar los factoriales incrementales de manera descendente,
;; con ayuda de un acumulador
(define aux-facts1
  (lambda (n acc)
    (if (= n acc)
      (cons (aux-facts2 acc) '())
      (cons (aux-facts2 acc) (aux-facts1 n (+ acc 1)))
    )
  )
)

;; Función auxiliar "aux-facts2":
;; calcula el factorial de un número entero n
(define aux-facts2
  (lambda (n)
    (cond [(= n 0) 1]
      [(= n 1) 1]
      [else (* n (aux-facts2 (- n 1)))]
    )
  )
)

;; Pruebas:
(list-facts 5)   ;; Retorna (1 2 6 24 120)
(list-facts 8)   ;; Retorna (1 2 6 24 120 720 5040 40320)
(list-facts 11)  ;; Retorna (1 2 6 24 120 720 5040 40320 362880 3628800 39916800)
