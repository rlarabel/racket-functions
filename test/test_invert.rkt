#lang racket

(require rackunit)

(require (file "../invert.rkt"))

(check-equal? (invert '()) '())
(check-equal? (invert '((a 1))) '((1 a)))
(check-equal? (invert '((a 1) (a 2) (b 1) (b 2))) '((1 a ) (2 a) (1 b) (2 b)))
(check-equal? (invert '((a 1) (a 2))) '((1 a) (2 a)))
(check-equal? (invert '((() 1) (() 2) (3 ()) (4 ()) (5 ()))) '((1 ()) (2 ()) (() 3) (() 4) (() 5)))