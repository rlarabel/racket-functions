#lang racket

(provide swapper)

(define (swapper a b L)
  (cond
    [(null? L) '()]
    [(eq? a (first L)) (cons b (swapper a b (rest L)))]
    [(eq? b (first L)) (cons a (swapper a b (rest L)))]
    [(if (not (or (list? (first L)) (null? (first L)))) (cons (first L) (swapper a b (rest L))) (cons (swapper a b (first L)) (swapper a b (rest L))))]
  )
)
