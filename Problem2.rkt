#lang racket

(define (fib-gen max-n fib-prev fib-cur fib-list)
  (cond
    [(> fib-cur max-n) fib-list]
    [else (fib-gen max-n fib-cur (+ fib-cur fib-prev) (cons fib-cur fib-list))]))

(define (is-even? n)
  (cond
    [(eq? (remainder n 2) 0) #t]
    [else #f]))

(define (sum-of-fibs fib-list)
  (apply + (filter is-even? fib-list)))

(define (problem-3)
  (sum-of-fibs (fib-gen 4000000 0 1 (list))))
