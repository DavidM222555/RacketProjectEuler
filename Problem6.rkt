#lang racket

(define (square-n n)
  (* n n))

(define (nums-to-n n)
  (for/list ([i (in-range 0 (+ n 1))])
    i))

(define (sum-of-squares-to-n n)
  (foldr + 0 (map (lambda (x) (* x x)) (nums-to-n n))))

(define (square-of-sum-to-n n)
  (square-n (foldr + 0 (nums-to-n n))))

(define (answer n)
  (- (square-of-sum-to-n n) (sum-of-squares-to-n n)))
