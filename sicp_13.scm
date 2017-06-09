#lang sicp

(define (sos-top2of3 x y z)
  (define (square x)(* x x))
  (define (sos x y)(+ (square x) (square y)))
  (define (>= x y)(not (< x y)))
  (cond ((and (>= x y) (>= z y))(sos x z))
        ((and (>= x z) (>= y z))(sos x y))
        (else (sos y z)))
  )

(sos-top2of3 -12 -2 -10)
