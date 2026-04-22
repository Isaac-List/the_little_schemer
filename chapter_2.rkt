#lang racket

; Is the parameter an atom?
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

; Is the parameter a list of atoms?
(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))

; #t
(lat? '(Jack Sprat could eat no chicket fat))

; #f
(lat? '(bacon (and eggs)))

; Is the 1st parameter, an atom, included within the 2nd
; parameter, a list of atoms
(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? (car lat) a)
                (member? a (cdr lat)))))))

; #t
(member? 'meat '(mashed potatoes and meat gravy))