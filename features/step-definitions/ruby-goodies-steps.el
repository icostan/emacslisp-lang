;;; package --- Summary

;;; Commentary:

;;; Code:

(Then "^ruby-goodies-mode should be active$"
  (lambda ()
    (cl-assert ruby-goodies-mode nil "Expected `ruby-goodies-mode' to be started, but was not.")))

;;; ruby-goodies-steps.el ends here
