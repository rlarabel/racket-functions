# RacketFunctions

Turn in a racket file containing the answers to Section 9.44, Exercises 3, 5, 6, 8, and 13. Each problem has its own file for your solution. For example, the file `invert.rkt` contains the following skeleton code for Exercise 3:

```scheme
#lang racket

(provide invert)

(define (invert L)
  (void))
  ```

The line

`(provide invert)`

makes the `invert` functions visible to the testing routines. Do not remove this line.

To solve the problem, replace the `(void)` with your solution. All five problems have a similar structure. 

To run the test cases, type `make test_xxx` where `xxx` is one of `invert`, `x_product`, `down`, `swapper`, or `count`.