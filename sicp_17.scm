#lang sicp

(define (square x) (* x x))

(define (improve guess x)
(average guess (/ x guess)))

(define (average x y)
(/ (+ x y) 2))

(define (sqrt-iter guess prev-guess x)
(if (good-enough? guess prev-guess)
guess
(sqrt-iter (improve guess x) guess
x)))

(define (abs x)(if (> x 0) x (- x)))

(define (good-enough? guess prev-guess)
(< (abs (- guess prev-guess)) 0.0000001))

(define (sqrt x)
(sqrt-iter 1.0 0 x))

(sqrt 22)