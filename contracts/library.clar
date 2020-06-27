(define-constant theowner 'ST398K1WZTBVY6FE2YEHM6HP20VSNVSSPJTW0D53M)
(define-data-var own int 0)

(define-private (owner)
  (begin (if (is-eq tx-sender theowner) (err "Not Owner")
  (begin (var-set own 1 ) (ok 1) )
  ) )
)

(define-public (add (num1 int) (num2 int) )
    (if (is-eq (var-get own) 1 ) (err 1)
    (ok (+ num1 num2)) )
)

(define-public (sub (num1 int) (num2 int) )
   (if (is-eq (var-get own) 1 ) (err 1)
   (ok (- num1 num2)) )
)


(define-public (mul (num1 int) (num2 int) )
   (if (is-eq (var-get own) 1 ) (err 1)
   (ok (* num1 num2)) )
)

(define-public (div (num1 int) (num2 int) )
   (if (or (is-eq (var-get own) 1 ) (is-eq num1 0))  (err "Cannot divide by zero" )
        (ok (/ num1 num2))
   )
)

