#lang racket

(define (divisible-to-n? currentN n numToTest)
  (cond
    [(and (equal? currentN n) (equal? (remainder numToTest currentN) 0))
     #t]
    [else
     (cond
       [(equal? (remainder numToTest currentN) 0)
        (divisible-to-n? (+ currentN 1) n numToTest)]
       [else #f])]))

(define (find-num-divisible-to-n currentN nToTestTo)
  (cond
    [(divisible-to-n? 1 nToTestTo currentN) currentN]
    [else (find-num-divisible-to-n (+ currentN 1) nToTestTo)]))
        
