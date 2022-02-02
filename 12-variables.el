;;; 12-variables.el --- 12. Variables -*- lexical-binding: t -*-

;;; Commentary:
;; Chapter 12. Variables

;;; Code:

;; 12.10.4 Using Lexical Binding (https://nullprogram.com/blog/2016/12/22/)
(defvar my-ticker nil)   ; We will use this dynamically bound
                              ; variable to store a closure.

(let ((x 0))             ; x is lexically bound.
  (setq my-ticker (lambda ()
		    (setq x (1+ x)))))

(funcall my-ticker)

(funcall my-ticker)

(prin1-to-string (funcall my-ticker))
"6"


;; x                        ; Note that x has no global value.

(symbol-value 'max-specpdl-size)
1600

(provide '12-variables)

;;; 12-variables.el ends here
