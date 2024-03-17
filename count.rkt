#lang racket

(provide count-parens-all)


(define (count-parens-all L)
  (define x 0)
  (define (count-parens L)
    (cond
      [(not (list? L)) '()]
      [(and (null? L) (list? L)) (set! x (+ x 2))]
      [(list? (first L))  (count-parens (first L)) (count-parens (rest L))]
      [else (count-parens (rest L))]
    ))
  (count-parens L)
  x
  )
