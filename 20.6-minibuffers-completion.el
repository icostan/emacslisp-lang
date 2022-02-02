
;; basic completion
(try-completion
 "foo"
 '(("foobar1" 1) ("barfoo" 2) ("foobaz" 3) ("foobar2" 4)))

(try-completion "foo" '(("barfoo" 2) ("foo" 3)))

(defun test (s)
  "Completion predicate for S candidate."
  (> (length (car s)) 6))

(try-completion
 "foo"
 '(("foobar1" 1) ("barfoo" 2) ("foobaz" 3) ("foobar2" 4))
 'test)

(all-completions
 "foo"
 '(("foobar1" 1) ("barfoo" 2) ("foobaz" 3) ("foobar2" 4))
 'test)

;; Minibuffer commands that do completion
(print minibuffer-local-map)
(print minibuffer-local-filename-completion-map)

;; Completion and minibuffer
(completing-read
 "Complete a foo: "
 '(("foobar1" 1) ("barfoo" 2) ("foobaz" 3) ("foobar2" 4))
 nil t "fo")

;; Higher level completion function
(read-buffer "Buffer name: " "foo" t)
(print read-buffer-function)
(read-command "Command name? ")
(read-color "CCC: ")

;; Reading file name
(read-file-name "FFF: ")
(setq insert-default-directory nil)
(print insert-default-directory)
(read-file-name "FFF: ")
(let ((insert-default-directory nil))
  (read-file-name "The file is "))
(read-shell-command "CMD: ")

;; Completion variables
(print completion-styles)

(orderless)

(+ 1 2 3)
6
(print completion-styles-alist)
(print completion-extra-properties)

;; Programmed completion
(defun my_completions (cand pred flag)
  "Complete CAND if PRED returns true and ignore FLAG."

  )

(completing-read
 "Complete a foo: "
 (completion-table-dynamic
  (lambda (_)
    '(("foo bar1" 1) ("barfoo2" 2) ("foobaz1" 3) ("foobar2" 4))))
 nil t "fo")

;; Completion in ordinary buffers
(prin1-to-string completion-at-point-functions)
"(elisp-completion-at-point t)"
