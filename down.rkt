#lang racket

(provide down)

(define (down L)
  (map (lambda (x) (list x)) L))

