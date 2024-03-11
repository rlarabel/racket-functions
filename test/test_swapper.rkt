#lang racket

(require rackunit)

(require (file "../swapper.rkt"))

(check-equal? (swapper 'a 'd '()) '())
(check-equal? (swapper 'a 'd '(a b c d)) '(d b c a))
(check-equal? (swapper 'x 'y '((x) y (z (x)))) '((y) x (z (y))))
(check-equal? (swapper 1 2 '(((((2 1) 1) 2 (1)) 1) 2 (((1))))) '(((((1 2) 2) 1 (2)) 2) 1 (((2)))))
(check-equal? (swapper 'a 'd '(1 2 (((3) 4)))) '(1 2 (((3) 4))))