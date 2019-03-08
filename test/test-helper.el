(require 'ruby-goodies nil t)

(defun with-text-value (txt fn &rest args)
  (with-temp-buffer
    (insert txt)
    (apply fn args)))
