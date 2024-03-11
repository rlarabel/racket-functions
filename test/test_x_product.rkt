#lang racket

(require rackunit)

(require (file "../x_product.rkt"))

(check-equal? (x-product '() '(x y)) '())
(check-equal? (x-product '(a b c) '()) '())
(check-equal? (x-product '(a b c) '(x y)) '((a x) (a y) (b x) (b y) (c x) (c y)))
(check-equal? (x-product '(a) '(a b c d e f g)) '((a a) (a b) (a c) (a d) (a e) (a f) (a g)))
(check-equal? (x-product '(a b c d e f g) '(a)) '((a a) (b a) (c a) (d a) (e a) (f a) (g a)))