#lang racket

(provide x-product)

(define (x-product L1 L2)
  (cond
    [(or (null? L1) (null? L2)) '()]
    [else (append (map (lambda (L2_A) (list (first L1) L2_A)) L2) (x-product (rest L1) L2))]))