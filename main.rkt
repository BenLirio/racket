#lang racket
#| Find max element in array |#

(define (find-max arr)
  (define (iter a max)
    (if (null? a)
        max
        (if (> (car a) max)
            (iter (cdr a) (car a))
            (iter (cdr a) max))))
  (iter arr 0))

(find-max '(1 2 3 4 5))
