;;; Exercise 5.
#lang eopl

;; main()
(define list-index
  (lambda (Pred L1)
    (aux-index Pred L1 0)
  )
)

;; Función auxiliar "aux-index"
;; realiza el proceso de verificacion del primer elemento que cumpla con el predicado
(define aux-index
  (lambda (Pred L1 Counter)
    (cond [(eq? '() L1) #f]
          [(Pred (car L1)) Counter]
          [else (aux-index Pred (cdr L1) (+ Counter 1))])))

;; Pruebas:
(list-index number? '(a 2 (1 3) b 7))  ;; Retorna 1
(list-index symbol? '(a (b c) 17 foo)) ;; Retorna 0
(list-index symbol? '(1 2 (a b) 3))    ;; Retorna #f
(list-index list?   '(a 2 (1 3) b 7))  ;; Retorna 2
(list-index number? '(a (b c) 17 foo)) ;; Retorna 2