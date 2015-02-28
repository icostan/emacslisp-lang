;;; ruby-goodies-test.el ---                              -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Iulian Costan

;; Author: Iulian Costan <syk@Macbook.local>
;; Keywords: ruby-goodies ert

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

(require 'ruby-goodies nil t)

(defun with-text-value (txt fn &rest args)
  (with-temp-buffer
    (insert txt)
    (apply fn args)))


(ert-deftest ruby-goodies-hashie-test ()
  (should (equal (+ 1 1)
		 2))
  (should (equal (with-text-value ":a => b" #'ruby-goodies-hashie)
  		 "abcd"))
  )

(provide 'ruby-goodies-test)

;;; ruby-goodies-test.el ends here
