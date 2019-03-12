(ert-deftest root-test/no-argument ()
  "Should use `default-directory' when no argument."
  (with-sandbox
   (f-mkdir ".git")
   (should (equal (root-find) root-sandbox-path))))

(ert-deftest root-test/directory-as-argument ()
  "Should find root directory when directory as argument."
  (with-sandbox
   (f-mkdir ".git")
   (f-mkdir "foo" "bar" "baz")
   (should (equal (root-find "foo/bar/baz") root-sandbox-path))))

(ert-deftest root-test/file-as-argument ()
  "Should find root directory when file as argument."
  (with-sandbox
   (f-mkdir ".git")
   (f-mkdir "foo" "bar" "baz")
   (f-touch "foo/bar/baz/qux.txt")
   (should (equal (root-find "foo/bar/baz/qux.txt") root-sandbox-path))))

(ert-deftest root-test/project-root-as-argument ()
  "Should find root when root as argument."
  (with-sandbox
   (f-mkdir ".git")
   (should (equal (root-find root-sandbox-path) root-sandbox-path))))

(ert-deftest root-test/no-project-root ()
  "Should return nil when no root."
  ;; Obviously not the best test since /bin may not exist, but should
  ;; work in most cases.
  (with-sandbox (should-not (root-find "/bin"))))
