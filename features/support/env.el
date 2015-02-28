(require 'f)

(defvar ruby-goodies-support-path
  (f-dirname load-file-name))

(defvar ruby-goodies-features-path
  (f-parent ruby-goodies-support-path))

(defvar ruby-goodies-root-path
  (f-parent ruby-goodies-features-path))

(add-to-list 'load-path ruby-goodies-root-path)

(require 'ruby-goodies)
(require 'espuds)
(require 'ert)

(Setup
 ;; Before anything has run
 )

(Before
 ;; Before each scenario is run
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )
