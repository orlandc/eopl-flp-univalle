;;; Exercise 12.
#lang eopl

;; main()
(define zip
  (lambda (F L1 L2)
    (if (and (null? L1) (null? L2))
      '()
      (cons (F (car L1) (car L2)) (zip F (cdr L1) (cdr L2)))
    )
  )
)

;; Pruebas:
(zip + '(1 4) '(6 2))             ;; Retorna (7 6)
(zip * '(11 5 6) '(10 9 8))       ;; Retorna (110 45 48)
(zip - '(10 7 12 20) '(8 6 6 10)) ;; Retorna (2 1 6 10)
