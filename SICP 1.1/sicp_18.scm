#lang sicp

(define (square x) (* x x))

(define (improve guess x)
(/ (+ (/ x (square guess))(* 2 guess)) 3))

(define (crt-iter guess prev-guess x)
(if (good-enough? guess prev-guess)
guess
(crt-iter (improve guess x) guess
x)))

(define (abs x)(if (> x 0) x (- x)))

(define (good-enough? guess prev-guess)
(< (abs (- guess prev-guess)) 0.0000001))

(define (crt x)
(crt-iter 1.0 0 x))

(crt 125)