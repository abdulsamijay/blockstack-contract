(define-constant theowner 'ST2MQ0C3ZB7YYJ5SQE73ASGQ3KT7T073NQDNDD03Y)
(define-data-var own int 0)

(define-private (owner)
  (begin (if (is-eq tx-sender theowner) (err "Not Owner")
  (begin (var-set own 1 ) (ok 1) )
  ) )
)

(define-public (add (num1 int) (num2 int) )
    (ok (+ num1 num2))
)

(define-public (sub (num1 int) (num2 int) )
   (ok (- num1 num2))
)


(define-public (mul (num1 int) (num2 int) )
   (ok (* num1 num2))
)

(define-public (div (num1 int) (num2 int) )
   (if  (is-eq num1 0)  ( err "Cannot divide by zero" )
   (ok (/ num1 num2))
   )
)