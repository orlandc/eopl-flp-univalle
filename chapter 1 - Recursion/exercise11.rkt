;;; Exercise 11.
#lang eopl

;; main()
(define merge
  (lambda (L1 L2)
    (cond
      [(null? L1) L2]
      [(null? L2) L1]
      [(<= (car L1) (car L2)) (cons (car L1) (merge (cdr L1) L2))]
      [else  (cons (car L2) (merge L1 (cdr L2)))]
    )
  )
)

;; Pruebas:
(merge '(1 4) '(1 2 8))                 ;; Retorna (1 1 2 4 8)
(merge '(35 62 81 90 91) '(3 83 85 90)) ;; Retorna (3 35 62 81 83 85 90 90 91)
(merge '(1 1 8 9) '(7 4 1 2 3))         ;; Retorna (1 1 1 2 3 4 7 8 9)
