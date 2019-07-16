;;; Exercise 15.
#lang eopl

;; main()
(define path
  (lambda (n BST)
    (cond [(= n (car BST)) '()]
          [(< n (car BST)) (cons 'left (path n (cadr BST)))]
          [(> n (car BST)) (cons 'right (path n (caddr BST)))])))

;; Pruebas:
(path 17 '(14 (7 () (12 () ())) (26 (20 (17 () ()) ()) (31 () ()))))            ;; Retorna (right left left)
(path 4 '(8 (3 (1 () ()) (6 (4 () ()) (7 () ()))) (10 () (14 (13 () ()) ()))))  ;; Retorna (left right left)
(path 13 '(8 (3 (1 () ()) (6 (4 () ()) (7 () ()))) (10 () (14 (13 () ()) ())))) ;; Retorna (right right left)
