;;; Exercise 1.
#lang eopl

;; main()
(define copy
  (lambda (n x)
    (cond
      [(= n 0) '()]
      [else
         (cons x (copy (- n 1) x))
      ]
    )
  )
)

;; Pruebas:
(copy 5 'five)           ;; Retorna (five five five five five)
(copy 3 (list 1 2 3 4))  ;; Retorna ((1 2 3 4) (1 2 3 4) (1 2 3 4))
(copy 0 (list 1 2))      ;; Retorna ()
(copy 7 'seven)          ;; Retorna (seven seven seven seven seven seven seven)
(copy 1 'one)            ;; Retorna (one)