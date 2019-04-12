(cons 'foo ())                ; Emphasize the empty list
(setq foo-flag 1)           ; Emphasize the truth value false
(booleanp t)

(third '(a b c))
(progn (prin1 'foo) (princ "\n") (prin1 'bar))

(+ 23 'x)

(emacs-version)

(print emacs-build-time)
