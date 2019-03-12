(when (require 'undercover nil t)
  (undercover "ruby-goodies.el"))

(require 'ruby-goodies nil t)

(defun with-text-value (txt fn &rest args)
  (with-temp-buffer
    (insert txt)
    (apply fn args)))

(require 'f)

(defvar root-test-path
  (f-dirname (f-this-file)))

(defvar root-code-path
  (f-parent root-test-path))

(defvar root-sandbox-path
  (f-expand "sandbox" root-test-path))

(require 'root (f-expand "root.el" root-code-path))

(defmacro with-sandbox (&rest body)
  "Evaluate BODY in an empty temporary directory."
  `(let ((default-directory root-sandbox-path))
     (when (f-dir? root-sandbox-path)
       (f-delete root-sandbox-path :force))
     (f-mkdir root-sandbox-path)
     ,@body))
