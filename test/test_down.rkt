#lang racket

(require rackunit)

(require (file "../down.rkt"))

(check-equal? (down '()) '())
(check-equal? (down '(1 2 3)) '((1) (2) (3)))
(check-equal? (down '(())) '((())))
(check-equal? (down '((1 2) 3)) '(((1 2)) (3)))
(check-equal? (down '(1 (2 3) 4 5 ((6)))) '((1) ((2 3)) (4) (5) (((6)))))