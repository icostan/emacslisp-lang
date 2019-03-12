(ert-deftest ruby-goodies-helloworld-test ()
  (should (equal (+ 1 1)
            2))
  )

(ert-deftest future-bug ()
  "Test `time-forward' with negative arguments.
     Since this functionality isn't implemented, the test is known to fail."
  :expected-result :failed
  (time-forward -1))
