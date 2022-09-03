#lang racket


(define (problem-1 n max-n run-sum)
  (cond
    [(eq? max-n n)
     run-sum]
    [(eq? (remainder n 3) 0)
     (problem-1 (+ n 1) max-n (+ run-sum n))]
    [(eq? (remainder n 5) 0)
     (problem-1 (+ n 1) max-n (+ run-sum n))]
    [else (problem-1 (+ n 1) max-n run-sum)]))
