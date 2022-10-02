#lang racket

(define (reverse-int x)
  (list->string (reverse (string->list (~s x)))))

(define (is-palindrome? x)
  (equal? (reverse-int x) (~s x)))

(define (find-largest-palindrome i j current-max)
  (cond
    [(and (equal? i 1000) (equal? j 1000)) current-max]
    [(equal? j 1000) (find-largest-palindrome (+ i 1) 100 current-max)]
    [else
     (cond [(and (is-palindrome? (* i j)) (> (* i j) current-max))
         (find-largest-palindrome i (+ 1 j) (* i j))]
         [else (find-largest-palindrome i (+ j 1) current-max)])]))
