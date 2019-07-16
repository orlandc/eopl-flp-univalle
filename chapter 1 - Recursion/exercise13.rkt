;;; Exercise 13.
#lang eopl

;; main()
(define filter-acum
  (lambda (val1 val2 F acum P)
    (cond
      [(= val1 val2) (if (P val1) (F val1 acum) acum)]
      [(P val1) (filter-acum (+ val1 1) val2 F (F val1 acum) P)]
      [else (filter-acum (+ val1 1) val2 F acum P)]
    )
  )
)

;; Pruebas:
(filter-acum 1 10 + 0 odd?)   ;; Retorna 25
(filter-acum 1 10 + 0 even?)  ;; Retorna 30
(filter-acum 1 20 + 0 odd?)   ;; Retorna 100
(filter-acum 1 20 + 0 even?)  ;; Retorna 110
