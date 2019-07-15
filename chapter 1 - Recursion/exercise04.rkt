;;; Exercise 4.
#lang eopl

;; main()
(define exists?
  (lambda (P L)
    (cond [(eq? L '()) #f]
      [(P (car L)) #t]
      [else (exists? P (cdr L))]
    )
  )
)

;; Pruebas:
(exists? number? ’(a b c d e)) ;; Retorna #f
(exists? number? '(a b c 5 e)) ;; Retorna #f
(exists? symbol? '(7 8 9 x))   ;; Retorna #t
(exists? symbol? '(1 2 3 4))   ;; Retorna #f