(when (require 'undercover nil t)
  (undercover "ruby-goodies.el"))

(require 'ruby-goodies nil t)

(defun with-text-value (txt fn &rest args)
  (with-temp-buffer
    (insert txt)
    (apply fn args)))
