;;; root.el --- root package

;;; Commentary:
;; The package has one simple purpose and that is to find the project root given a file or directory. The definition of a project root is that there exists a file or directory in that directory with a name included in a list (that is defined in the package).

;;; Code:

(defvar root-files '(".git" ".projectile" ".cask")
  "List of names that defines a project root.")

(defun root-find (&optional dir)
  "Find project root, starting at DIR."
  (setq dir default-directory)
  (if (f-exists-p (concat dir "/.git")) dir nil)
  )

(provide 'root)

;;; root.el ends here
