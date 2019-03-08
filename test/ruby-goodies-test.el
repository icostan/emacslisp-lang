(ert-deftest ruby-goodies-helloworld-test ()
  (should (equal (+ 1 1)
            2))
  )

;; (ert-deftest ruby-goodies-hashie-test ()
;;   (should (equal (with-text-value ":a => b" #'ruby-goodies-hashie)
;;             "abcd"))
;;   )
