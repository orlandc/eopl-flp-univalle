;;; Exercise 2.
#lang eopl

;; main()
(define list-tails
  (lambda (L)
    (if (eq? L '())
       '()
       (cons L (list-tails (cdr L)))
    )
  )
)

;; Pruebas:
(list-tails '(1 2 3 4 5))              ;; Retorna ((1 2 3 4 5) (2 3 4 5) (3 4 5) (4 5) (5))
(list-tails '(1 a (e 4) 5 v))          ;; Retorna ((1 a (e 4) 5 v) (a (e 4) 5 v) ((e 4) 5 v) (5 v) (v))
(list-tails '(7 r 10 (i j k) (11 12))) ;; Retorna ((7 r 10 (i j k) (11 12)) (r 10 (i j k) (11 12)) (10 (i j k) (11 12)) ((i j k) (11 12)) ((11 12)))
