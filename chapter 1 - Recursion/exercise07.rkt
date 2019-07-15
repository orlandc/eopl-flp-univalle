;;; Exercise 7.
#lang eopl

;; main()
(define cartesian-product
  (lambda (L1 L2)
    (if
      (eq? L1 '())
      empty
      (append (aux-func (car L1) L2) (cartesian-product (cdr L1) L2))
    )
  )
)

;; Función auxiliar "aux-func":
;; Calcula el producto cartesiano entre un unico elemento y una lista
(define aux-func
  (lambda (x LST)
    (if (eq? LST '())
      '()
      (cons (list x (car LST)) (aux-func x (cdr LST)))
    )
  )
)

;; Pruebas:
(cartesian-product '(a b c) '(x y))    ;; Retorna ((a x) (a y) (b x) (b y) (c x) (c y))
(cartesian-product '(1 2)   '(3 4))    ;; Retorna ((1 3) (1 4) (2 3) (2 4))
(cartesian-product '(x y z) '(-4 2 1)) ;; Retorna ((x -4) (x 2) (x 1) (y -4) (y 2) (y 1) (z -4) (z 2) (z 1))
