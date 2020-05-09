(defun fac (n)
  (if (= n 0) (edebug))
  (if (< 0 n)
     (* n (fac (1- n)))
   1))

(fac 3)
