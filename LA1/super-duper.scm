(define (super-duper source count)
        (define (copy source left)
                (if (zero? left)
                        (super-duper (cdr source) count)
                        (cons (super-duper (car source) count) (copy source (- left 1)))))

        (if (pair? source)
                (cons (super-duper (car source) count) (copy source (- count 1))) source))

(display "Running function super-duper:\n")
(display '(super-duper 123 1))
(display "\n")
(display (super-duper 123 1))
(display "\n")
(display '(super-duper 123 2))
(display "\n")
(display (super-duper 123 2))
(display "\n")
(display '(super-duper () 1))
(display "\n")
(display (super-duper '() 1))
(display "\n")
(display '(super-duper () 2))
(display "\n")
(display (super-duper '() 2))
(display "\n")
(display '(super-duper (x) 1))
(display "\n ")
(display (super-duper '(x) 1))
(display "\n")
(display '(super-duper (x) 2))
(display "\n ")
(display (super-duper '(x) 2))
(display "\n")
(display '(super-duper (x y) 1))
(display "\n ")
(display (super-duper '(x y) 1))
(display "\n")
(display '(super-duper (x y) 2))
(display "\n ")
(display (super-duper '(x y) 2))
(display "\n")
(display '(super-duper ((a b) y) 3))
(display "\n ")
(display (super-duper '((a b) y) 3))
(display "\n")

