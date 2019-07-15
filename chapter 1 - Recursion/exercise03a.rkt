;;; Exercise 3a.
#lang eopl

;; main()
(define list-set
  (lambda (L n x)
    (letrec
      ( 
        (list-set-aux
          (lambda (L n x acc)
            (cond
              ((eqv? L empty) empty)
              ((eqv? acc n) (cons x (list-set-aux (cdr L) n x (+ acc 1))))
              (else (cons (car L) (list-set-aux (cdr L) n x (+ acc 1))))
            )
          )
        )
      )
      (list-set-aux L n x 0)
    )
  )
)

;; Pruebas:
(list-set '(a b c d) 2 '(1 2))       ;; Retorna (a b (1 2) d)
(list-set '(a b c d) 3 '(1 5 10))    ;; Retorna (a b c (1 5 10))
(list-set '(a b c d e f) 2 '(x y z)) ;; Retorna (a b (x y z) d e f)