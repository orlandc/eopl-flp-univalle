;;; Exercise 10.
#lang eopl

;; main()
(define up
  (lambda (L)
    (if (null? L)
      '()
      (cond 
        [(list? (car L)) (append (car L) (up (cdr L)))]
        [else (cons (car L) (up (cdr L)))]
      )
    )
  )
)

;; Pruebas:
(up '((1 2) (3 4)))     ;; Retorna '(1 2 3 4)
(up '((x (y)) z))       ;; Retorna '(x (y) z)
(up '((x (y (z))) w p)) ;; Retorna '(x (y (z)) w p)
