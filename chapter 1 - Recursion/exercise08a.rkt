;;; Exercise 8a.
#lang eopl

;; main()
(define mapping
  (lambda (F l1 l2)
    (cond
      [(null? l1) empty]
      [(eqv? (F (car l1)) (car l2))
       (cons (list (car l1) (car l2)) (mapping F (cdr l1) (cdr l2)))]
      [else (mapping F (cdr l1) (cdr l2))]
    )
  )
)

;; Pruebas:
(mapping (lambda (d) (* d 2)) (list 1 2 3) (list 3 9 12)) ;; Retorna ()
(mapping (lambda (d) (* d 3)) (list 1 2 2) (list 2 4 6))  ;; Retorna ((2 6))
(mapping (lambda (d) (* d 2)) (list 1 2 3) (list 2 4 6))  ;; Retorna ((1 2) (2 4) (3 6))
