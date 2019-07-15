;;; Exercise 8.
#lang eopl

;; main()
(define mapping
  (lambda (F ld lr)
    (cond
      [(null? ld) '()]
      [(null? lr) '()]
      [(aux-func (F (car ld)) lr) (cons (list (car ld) (F (car ld))) (mapping F (cdr ld) (cdr lr)))]
      [else (mapping F (cdr ld) lr)]
    )
  )
)

;; Función auxiliar "search":
;; Recibe un elemento y una lista, 
;; retorna #t si ese elemento pertenece a la lista 
;; retorna #f si no pertenece el elemento a la lista.
(define aux-func
  (lambda (x ls)
    (cond
      [(null? ls) #f]
      [(equal? x (car ls)) #t]
      [else (aux-func x (cdr ls))]
    )
  )
)

;; Pruebas:
(mapping (lambda (d) (* d 2)) (list 1 2 3 4) (list 2 4 6 8)) ;; Retorna ((1 2) (2 4) (3 6) (4 8))
(mapping (lambda (d) (* d 3)) (list 1 2 3 4) (list 2 4 6 8)) ;; Retorna ((2 6))
(mapping (lambda (d) (* d 4)) (list 1 2 3 4) (list 2 4 6 8)) ;; Retorna ((1 4) (2 8))
