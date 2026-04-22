#lang racket

; 'a
(car '(a b c))

; '(b c)
(cdr '(a b c))

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

; #t
(atom? 'abc)

; #f
(eq? 'margarine 'butter)