#lang racket

(provide invert)

(define (invert L)
  (map (lambda (A) (reverse A)) L))