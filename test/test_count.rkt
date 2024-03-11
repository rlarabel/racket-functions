#lang racket

(require rackunit)

(require (file "../count.rkt"))

(check-equal? (count-parens-all '()) 2)
(check-equal? (count-parens-all '(a b c d)) 2)
(check-equal? (count-parens-all '((x) y (z (x)))) 8)
(check-equal? (count-parens-all '(((((2 1) 1) 2 (1)) 1) 2 (((1))))) 18)
(check-equal? (count-parens-all '(1 2 (((3) 4)))) 8)